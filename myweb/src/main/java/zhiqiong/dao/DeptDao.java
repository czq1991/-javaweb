package zhiqiong.dao;



import org.apache.ibatis.annotations.Param;
import zhiqiong.entity.Dept;
import zhiqiong.entity.User;

import java.util.List;

/**
 * Created by wuming on 2017/9/8.
 */
public interface DeptDao {

    public List<Dept> findAll();
    //@Param("a")String a
    public List<User> userAll(@Param("userName")String name,@Param("userPwd")String pwd);

    public List<Dept> testAll();
}
