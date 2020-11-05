package hibernate.dao;

public interface DAO<Entity, Key> {
    Entity read(Key key);
}
