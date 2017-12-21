package zhiqiong.service;



import zhiqiong.entity.Dept;
import zhiqiong.entity.User;

import java.util.List;

/**
 * Created by wuming on 2017/9/8.
 */
public interface DeptService {

    public List<Dept> findall();

    public List<User> userall(String name,String pwd);

    public List<Dept> testall();
}
