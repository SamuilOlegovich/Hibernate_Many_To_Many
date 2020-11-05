package hibernate.dao;


import org.hibernate.SessionFactory;
import com.sun.istack.NotNull;
import org.hibernate.Session;
import hibernate.model.Car;




public class CarDAO<Entity, Key> implements DAO<Car, Integer> {
    /**
     * Connection factory to database.
     * Фабрика подключения к базе данных.   */
    private final SessionFactory factory;


    public CarDAO(@NotNull final SessionFactory factory) {
        this.factory = factory;
    }


    @Override
    public Car read(Integer id) {
        try (final Session session = factory.openSession()) {
            return session.get(Car.class, id);
        }
    }
}
