<%@page import ="studentManage.Student" %>
<%@page import ="java.util.ArrayList" %>
<%@page import ="java.sql.*" %>

<%@ page contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
    <html>
    <head><title>学生信息查询</title></head>
    <body>
     
     <br><br><br><br><br>
     <%
     ArrayList al=(ArrayList)session.getAttribute("al");
      %>
      <p align="center">你要查询的学生数据表中共有
      <font size="5" color="red">
      <%=al.size() %>
      </font>
      人
      </p>
        
        <table border="2" width="600" align="center">
            <tr>
            <th>学号</th>
            <th>姓名</th>
            <th>性别</th>
            <th>身份证号</th>
            <th>密码</th>
            </tr>
            <%
            for(int i=0;i<al.size();i++){
                 Student st=(Student)al.get(i);
             %>
             <tr>
                <td><%=st.getStudentNumber() %></td>
                <td><%=st.getStudentName() %></td>
                <td><%=st.getStudentSex() %></td>
                <td><%=st.getStudentId() %></td>
                <td><%=st.getStudentPassword() %></td>
             </tr>
             <%
             }
              %>
        </table>
    </body>
    </html>
    