<%-- 
    Document   : product_category
    Created on : Nov 30, 2021, 10:04:58 AM
    Author     : Phong_learning
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
          <%
            String id =   request.getParameter("id_cate");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/productdb", "root", "");
            Statement st = con.createStatement();
            String sql = "Select * from product where category_ID = '"+id+"'";
            ResultSet rs = st.executeQuery(sql);
        %>
        <TABLE border="1">
            <TR>
                <TH>ID</TH>
                <TH>Product Name</TH>
                <TH>Price</TH>
                <TH>Quantity</TH>
            </TR>
            <% while (rs.next()) {%>
            <TR>
                <TD> <%= rs.getString(1)%></td>
                <TD> <%= rs.getString(2)%></TD>
                <TD> <%= rs.getString(3)%></TD>
                <TD> <%= rs.getString(4)%></TD>
            </TR>
            <% }%>
        </table> 
    </body>
</html>
