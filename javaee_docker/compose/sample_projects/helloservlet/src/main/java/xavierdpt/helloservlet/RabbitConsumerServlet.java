package xavierdpt.helloservlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.jms.Connection;
import javax.jms.Destination;
import javax.jms.Message;
import javax.jms.MessageConsumer;
import javax.jms.MessageListener;
import javax.jms.Session;
import javax.jms.TextMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rabbitmq.jms.admin.RMQConnectionFactory;

@WebServlet("/rabbit/consume")
public class RabbitConsumerServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private Connection connection;
	private Session session;
	private MessageConsumer consumer;

	@Override
	public void init() throws ServletException {
		try {
			RMQConnectionFactory factory = ConnectionFactoryProvider.getFactory();
			connection = factory.createConnection();
			session = connection.createSession(false, 0);
			Destination destination = session.createQueue("rabbit_queue");
			consumer = session.createConsumer(destination);
		} catch (Exception ex) {
			throw new ServletException(ex);
		}
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			Message message = consumer.receive();
			TextMessage tm = (TextMessage) message;
			resp.getWriter().println(tm.getJMSMessageID() + " " + tm.getText());
		} catch (Exception ex) {
			throw new ServletException(ex);
		}
	}

	@Override
	public void destroy() {
		try {
			consumer.close();
			session.close();
			connection.close();
		} catch (Exception ex) {
			throw new RuntimeException(ex);
		}
	}
}
