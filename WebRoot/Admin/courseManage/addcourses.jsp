<%@ page language="java" import="java.util.*" contentType="text/html;charset=gb2312"pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    
    <title>�γ����</title>
  


   <link rel="stylesheet" type="text/css"  href="cssCourseManageShare.css">
      </head>
      <body >
      <div id="glass" class="glass" >
    <center>
    	<br>
    	<br>
    	<br>
    	<form action="AddCourseServlet" method="post">
    	<div class="header" align=center style="height:100px;margin-bottom:5px;">
				
			</div>
			<div class="topmenu" style="padding-left:550px;height:30px;">
				<p><a href="/CourseSelectSystem/Admin/courseManage/addcourses.jsp">���ӿγ�</a>&nbsp;
				<a href="/CourseSelectSystem/Admin/courseManage/CoursesLook.jsp">�鿴�γ�</a>&nbsp;
				<a href="/CourseSelectSystem/Admin/courseManage/deletecourses.jsp">ɾ���γ�</a></p>
			</div>
    			<table border="0" style="width:750px;">
					<tr>
						<td>
							<table border="0" align=center width="400" >
    							<tr>
    								<td  style="font-weight:bold"><font face="Բ��" color=black>&nbsp;�γ̺�:</font></td>	
    								<td><input type="text" name="Cno" ></td>
    							</tr>
    							<tr>
    								<td style="font-weight:bold"><font face="����" color=black >&nbsp;�γ���:</font></td>	
    								<td><input type="text" name="Cname" ></td>
    							</tr>
    							<tr>
    								<td style="font-weight:bold"><font face="����" color=black>&nbsp;ѧʱ:</font></td>	
    								<td><input type="text" name="Cperiod" ></td>
    							</tr>
    							<tr>
    								<td style="font-weight:bold"><font face="����" color=black>&nbsp;ѧ��:</font></td>	
    								<td><input type="text" name="Ccredit" ></td>
    							</tr>
    							<tr>
    								<td style="font-weight:bold"><font face="����" color=black>&nbsp;�Ͽ�ʱ��:</font></td>	
    								<td><input type="text" name="Ctime" ></td>
    							</tr>
    							<tr>
    								<td style="font-weight:bold"><font face="����" color=black>&nbsp;�Ͽεص�:</font></td>	
    								<td><input type="text" name="Cplace" ></td>
    							</tr>
    							<tr>
    								<td style="font-weight:bold"><font face="����" color=black>&nbsp;�γ�����:</font></td>	
    								<td><input type="text" name="Ctype" ></td>
    							</tr>
    					</table>
					</td>
				</tr>
				<tr align=center>
					<td colspan="2"><input type="submit" name="submit" value="�ύ"/> <input type="reset" name="clear" value="ȡ��"/></td>
				</tr>
    		</table>
    	</form>
    </center>
    </div>
  </body>
</html>
