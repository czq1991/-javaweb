package zhiqiong.controller;


import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.apache.ibatis.jdbc.Null;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
import zhiqiong.entity.Dept;
import zhiqiong.entity.User;
import zhiqiong.service.DeptService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Enumeration;
import java.util.List;

/**
 * Created by wuming on 2017/9/8.
 */
@Controller
@SessionAttributes(value = {"User","data"},types={String.class, Integer.class})
@RequestMapping("/dept")
public class DeptController {
    private static Logger logger = LoggerFactory.getLogger(DeptController.class);
    @Autowired
    private DeptService deptService;

    @RequestMapping("/main")
    public String find(ModelMap model, HttpServletRequest request) {
//        List<Dept> userList = deptService.findall();
//        request.setAttribute("depts", userList);

        return "main";
    }



    @RequestMapping(value = "login")
    public ModelAndView testLogin(ModelMap model, HttpServletRequest request,HttpSession session) {
        String url = request.getHeader("Referer");//获取上个页面的url
        for (Object key : model.keySet()) {
            Object value = model.get(key);
            System.out.println(key + " = " + value);
        }
        System.out.println("***********************************");
         User user1 =  (User)session.getAttribute("User");
        if (user1!=null){
            System.out.println("*************User**********************"+user1);
        }

//        Map<String,?> map = RequestContextUtils.getInputFlashMap(request);
//        Map<String,Object> data = new HashMap<String,Object>();
        return new ModelAndView("logintest");
    }

    @RequestMapping(value = "do_login", method = RequestMethod.POST)
    public void successLogin(ModelMap model, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws IOException {
        JSONObject jsonObject = new JSONObject();
        String name = request.getParameter("username");
        String password = request.getParameter("password");
        List<User> userList = deptService.userall(name,password);
        if (userList!=null&& userList.size()>0){
            String url = request.getHeader("Referer");
            logger.info("上一个页面URL"+url);
            User user  = new User();
            user.setUserName(name);
            user.setUserPwd(password);
            model.addAttribute("User",user);
            jsonObject.put("pageUrl",url);
            jsonObject.put("code", "true");
        } else {
            jsonObject.put("code", "fast");
        }
        response.getWriter().write(jsonObject.toString());
    }
}
