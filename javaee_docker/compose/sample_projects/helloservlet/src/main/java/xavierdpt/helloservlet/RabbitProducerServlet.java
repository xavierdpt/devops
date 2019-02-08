package xavierdpt.helloservlet;

import java.io.IOException;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;

import javax.jms.Connection;
import javax.jms.Destination;
import javax.jms.Message;
import javax.jms.MessageConsumer;
import javax.jms.MessageProducer;
import javax.jms.Session;
import javax.jms.TextMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rabbitmq.jms.admin.RMQConnectionFactory;

@WebServlet("/rabbit/produce")
public class RabbitProducerServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {

			RMQConnectionFactory factory = ConnectionFactoryProvider.getFactory();
			Connection connection = factory.createConnection();
			Session session = connection.createSession(false, 0);
			Destination destination = session.createQueue("rabbit_queue");
			MessageProducer producer = session.createProducer(destination);
			TextMessage message = session.createTextMessage("Run Rabbit!");
			message.setJMSReplyTo(session.createQueue("rabbit_hole"));
			message.setJMSExpiration(10000);

			producer.send(message);
			producer.close();
			session.close();
			connection.close();

			resp.getWriter().println("Message sent!");
		} catch (Exception ex) {
			throw new ServletException(ex);
		}

	}
}
