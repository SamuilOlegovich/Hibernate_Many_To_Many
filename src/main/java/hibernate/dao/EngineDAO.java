package hibernate.dao;


import org.hibernate.SessionFactory;
import com.sun.istack.NotNull;
import hibernate.model.Engine;
import org.hibernate.Session;




public class EngineDAO implements DAO<Engine, Integer> {
    /**
     * Connection factory to database.
     * Фабрика подключения к базе данных.   */
    private final SessionFactory factory;

    public EngineDAO(@NotNull final SessionFactory factory) {
        this.factory = factory;
    }

    @Override
    public Engine read(@NotNull final Integer id) {
        try (final Session session = factory.openSession()) {
            return session.get(Engine.class, id);
        }
    }
}