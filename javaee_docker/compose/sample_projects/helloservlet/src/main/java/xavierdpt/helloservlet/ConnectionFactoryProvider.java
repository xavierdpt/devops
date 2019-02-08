package xavierdpt.helloservlet;

import com.rabbitmq.jms.admin.RMQConnectionFactory;

public class ConnectionFactoryProvider {

	private static Object o = new Object();
	private static RMQConnectionFactory f;

	private ConnectionFactoryProvider() {
	}

	public static RMQConnectionFactory getFactory() {
		synchronized (o) {
			if (f == null) {
				f = new RMQConnectionFactory();
				f.setUsername("rabbit");
				f.setPassword("rabbit");
				f.setVirtualHost("/");
				f.setHost("rabbit");
				f.setPort(5672);
			}
		}
		return f;
	}

}
