package hibernate;


import org.hibernate.cfg.Configuration;
import org.hibernate.SessionFactory;
import hibernate.dao.EngineDAO;
import hibernate.model.Engine;
import hibernate.dao.CarDAO;
import hibernate.model.Car;
import hibernate.dao.DAO;




public class Main {

    public static void main(String[] args) {
        SessionFactory factory = null;
        try {
            factory = new Configuration().configure().buildSessionFactory();
            DAO<Engine, Integer> engineDao = new EngineDAO(factory);
            DAO<Car, Integer> carDao = new CarDAO<>(factory);
            /**
             * Раскоментируя интересующий метод помните что обращение к данным происходит по id.
             * Убедитесь что данные для методов create update и delete существуют.  */
            readEngine(engineDao);
            readCar(carDao);

        } finally {
            if (factory != null) factory.close();
        }
    }



    private static void readEngine(DAO<Engine, Integer> engineDao) {
        final Engine result = engineDao.read(1);
        System.out.println("\nRead: " + result + "\n");
    }



    private static void readCar(DAO<Car, Integer> carDao) {
        final Car result = carDao.read(1);
        System.out.println("\nRead: " + result + "\n");
    }
}