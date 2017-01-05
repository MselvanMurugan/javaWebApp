package in.habile.factoring.Dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import in.habile.factoring.Dao.loginDao;
import in.habile.factoring.model.User;
@Repository("logDao")
public class loginDaoImpl extends AbstractDao implements loginDao {

	@SuppressWarnings("unchecked")
	public User checkUserLogin (User lUser) {
		//User lUser=new User();	
		System.out.println(lUser);
		Criteria criteria = getSession().createCriteria(User.class);
		Criterion email =Restrictions.eq("email",lUser.getEmail());
		Criterion password =Restrictions.eq("password",lUser.getPassword());
		LogicalExpression andExp=Restrictions.and(email,password);
		criteria.add(andExp);
		criteria.uniqueResult();
		//lUser.setEmail(result);
		//System.out.println(result);
		return (User) criteria.uniqueResult();
	}

	
}
