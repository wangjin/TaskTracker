package tk.jimmywang.tasktracker.base.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

/**
 * Created by WangJin on 2014/8/6.
 */
public class BaseDao {

    @Autowired
    @Qualifier("sessionFactory")
    private SessionFactory sessionFactory;

    public Session getSession(){
        return sessionFactory.getCurrentSession();
    }

    @SuppressWarnings("unchecked")
    public <T> T getObjectById(Class<T> entity, String id) {
        return (T) this.getSession().get(entity, id);
    }
}
