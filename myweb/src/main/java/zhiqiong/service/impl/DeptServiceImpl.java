package zhiqiong.service.impl;


import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import zhiqiong.dao.DeptDao;
import zhiqiong.entity.Dept;
import zhiqiong.entity.User;
import zhiqiong.service.DeptService;

import java.util.List;

/**
 * Created by wuming on 2017/9/8.
 */

@Service("deptService")
public class DeptServiceImpl  implements DeptService {

    @Autowired(required = true)
    private DeptDao deptDao;

    public List<Dept> findall() {
        return deptDao.findAll();
    }

    public List<User> userall(String name,String pwd) {
        return deptDao.userAll(name,pwd);
    }

    public List<Dept> testall() {
        return deptDao.testAll();
    }
}
