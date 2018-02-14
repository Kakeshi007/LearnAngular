<%-- 
    Document   : factnum
    Created on : Mar 10, 2017, 2:07:58 PM
    Author     : lph
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fact</title>
    </head>
    <body>
        <h1>Fact!</h1>
        <form method="get">
            <input type="number" name="fact" value="0" />
            <input type="submit" value="calculate" />
        </form>
       
        <%
            int fact = 0;
            int result = 1;
            String s = request.getParameter("fact");
            if (!String.valueOf(s).isEmpty() && s != null) {
                    fact = Integer.parseInt(String.valueOf(s));
                    for (int i = 1; i <= fact; i++) {
                            result = result * i;
                        }
                }
            out.print("fact "+fact+" = "+String.valueOf(result));
        %>
        
       
    </body>
</html>
