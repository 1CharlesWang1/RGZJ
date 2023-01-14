package wcl.service;


import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import wcl.mapper.UserMapper;
import wcl.bean.UserBean;
import wcl.util.SqlSessionFactoryUtils;

import java.util.List;


/**
 * @author WCL
 */
public class UserService {
    SqlSessionFactory factory= SqlSessionFactoryUtils.getSqlSessionFactory();

//    public UserBean login(String username,String password){
//        SqlSession sqlSession = factory.openSession();
//
//        UserMapper mapper = sqlSession.getMapper(UserMapper.class);
//
//        User user = mapper.select(username, password);
//
//        sqlSession.close();
//
//        return user;
//    }

//    public void update(User user){
//        SqlSession sqlSession = factory.openSession();
//
//        UserMapper mapper=sqlSession.getMapper(UserMapper.class);
//
//        mapper.update(user);
//
//        sqlSession.commit();
//
//        sqlSession.close();
//    }
    public List<UserBean> selectAll(){
        SqlSession sqlSession = factory.openSession();

        UserMapper mapper=sqlSession.getMapper(UserMapper.class);

        List<UserBean> users =mapper.selectAll();

        sqlSession.commit();

        sqlSession.close();

        return users;
    }

}
