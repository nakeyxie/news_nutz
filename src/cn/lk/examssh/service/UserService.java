package cn.lk.examssh.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.lk.examssh.dao.BaseDao;
import cn.lk.examssh.pojo.User;
import cn.lk.examssh.utils.MyUtils;

@Service
public class UserService {
    @Resource
    private BaseDao<User> dao;

    public User findUserByUidAndPwd(String uid, String pwd) {  
        return dao.get(" from User u where u.uid = ? and u.pwd = ? ", new Object[] { uid, MyUtils.lrwCode(pwd, "") });  
    }  
}