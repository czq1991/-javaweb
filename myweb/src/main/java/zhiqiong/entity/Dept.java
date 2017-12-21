package zhiqiong.entity;

import java.util.Date;

/**
 * Created by wuming on 2017/9/8.
 */
public class Dept {

    private Integer id;

    private String name;

    private Integer age;

    private Date birDate;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Date getBirDate() {
        return birDate;
    }

    public void setBirDate(Date birDate) {
        this.birDate = birDate;
    }
}
