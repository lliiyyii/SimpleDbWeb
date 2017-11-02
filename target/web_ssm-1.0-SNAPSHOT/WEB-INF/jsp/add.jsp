<%--
  Created by IntelliJ IDEA.
  User: yi
  Date: 2017/11/2
  Time: 20:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
%>
<html>
<head>
    <title>添加</title>
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="../../css/demo.css" rel="stylesheet" type="text/css">
    <script src="../../js/jquery-1.10.2.min.js" type="text/javascript"></script>
    <!--Framework-->
    <script src="../../js/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="../../js/jquery-ui.js" type="text/javascript"></script>
    <!--End Framework-->
    <script src="../../js/jquery.ffform.js" type="text/javascript"></script>
    <script>
        function addInfo() {
            alert("添加成功");
        }
    </script>
</head>
<body>
<%--<form action="/addItem" method="post">--%>
    <%--ip地址<input type="text" placeholder="请输入ip地址" name="ip">--%>
    <%--端口<input type="text" placeholder="请输入端口" name="port">--%>
    <%--备注<input type="text" placeholder="请输入备注" name="note">--%>
    <%--<input class="btn btn-success pull-right" type="submit" value="添加" onclick="addInfo()"/>--%>
<%--</form>--%>
<section id="getintouch" class="fadeInDownBig animated col-md-12 col-xs-12">
    <div class="container" style="border-bottom: 0;">
        <h1>
            <span>添加主机</span>
        </h1>
    </div>
    <div class="container">
        <form class="contact" action="/addItem" method="post" id="form">
            <div class="row clearfix">
                <div class="lbl">
                    <label for="name">
                        ip地址</label>
                </div>
                <div class="ctrl">
                    <input type="text" id="name" placeholder="请输入ip地址" name="ip">
                </div>
            </div>
            <div class="row clearfix">
                <div class="lbl">
                    <label >
                        端口</label>
                </div>
                <div class="ctrl">
                    <input type="text" type="text" placeholder="请输入端口" name="port">
                </div>
            </div>
            <div class="row clearfix">
                <div class="lbl">
                    <label >
                        备注</label>
                </div>
                <div class="ctrl">
                    <input type="text" placeholder="请输入备注" name="note">
                </div>
            </div>

            <div class="row  clearfix">
                <div class="span10 offset2">
                    <input type="submit" id="submit" class="submit" type="submit" value="添加" onclick="addInfo()">
                </div>
            </div>
        </form>

    </div>
    </div>
</section>
</body>
</html>
