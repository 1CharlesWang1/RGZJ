package wcl.mapper;

import org.apache.ibatis.annotations.Param;
import wcl.bean.UserBean;
import wcl.bean.UserBean;

import java.util.List;


public interface UserMapper {

    List<UserBean> selectAll();


}