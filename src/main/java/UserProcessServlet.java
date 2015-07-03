import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

/**
 * Created by yangjianzhou on 15-7-3.
 */
public class UserProcessServlet extends HttpServlet{
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<User> userList = new LinkedList<>();
                for(int i=0;i<10 ; i++){
                    User user = new User();
                    user.setAddress("address"+i);
                    user.setUsername("username"+i);
                    user.setPassword("password"+i);
                    user.setOrderId(Long.valueOf(i));
                    userList.add(user);
                }
        String str = JSON.toJSONStringWithDateFormat(userList, "yyyy-MM-dd HH:mm:ss", SerializerFeature.WriteNullNumberAsZero);
        resp.getWriter().write(str);
    }
}
