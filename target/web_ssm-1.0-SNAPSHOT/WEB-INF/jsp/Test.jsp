<%--
  Created by IntelliJ IDEA.
  User: yi
  Date: 2017/11/1
  Time: 21:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
    String ref = request.getHeader("Test");

%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>我的首页</title>
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <link href="../../css/demo.css" rel="stylesheet" type="text/css">

    <script>
    function deleteInfo() {
        alert("已删除");
    }
</script>
    <style type="text/css">
        table {
            width:100%;
            margin:15px 0;
            border:0;
        }
         th {
             width: 110px;
            background-color:darkgray;
            color:#FFFFFF
        }
        th, td {
            font-size:1.25em;
            height: 20px;
            text-align:center;
            padding:4px;
            border-collapse:collapse;
        }
       /*th, td {*/
            /*border: 1px solid ;*/
            /*border-width:1px 0 1px 0*/
        /*}*/
        /*tr {*/
            /*border: 1px solid #7ebffe;*/
        /*}*/
        tr:nth-child(odd){
            background-color:lightgray;
        }
        tr:nth-child(even){
            background-color:#fdfdfd;
        }
        .mybutton{
            display: block;
            width: 60px;
            height: 34px;
            background: #5cb85c;
            padding: 10px;
            text-align: center;
            border-radius: 5px;
            color: white;
            font-weight: bold;
        }
    </style>
</head>

<body>
<div class="panel-body panel content fadeInDownBig animated">
        <div class="container" style="border-bottom: 0;width: 100%">
            <h1>
                <span>主机列表</span>
            </h1>
        </div>
        <div class="container" style="width: 100%;padding: 0px;padding-bottom: 10px">
    <form  action="/delete" method="post" id="myForm">
    <div class="col-md-12">

        <table class="table-view" >
            <thead>
            <tr>

                <th data-field="state" data-value="checkbox"></th>
                <th data-field="brought" data-align="center" data-sortable="true"> ip
                </th>
                <th data-field="may" data-align="center" data-sortable="true">port</th>
                <th data-field="times" data-align="center" data-sortable="true">note
                </th>

            </thead>
            <tbody>
            <c:forEach items="${hosts}" var="host">
                <tr>
                        <%--<td></td>type='hidden'--%>
                    <td class="bs-checkbox"><input name="id"
                                                   type="checkbox"
                                                   value='${host.id}'></td>
                    <td>${host.ip}</td>
                    <td>${host.port}</td>
                    <td>${host.note}</td>

                </tr>
            </c:forEach>
            </tbody>

        </table>
    </div>
        <div class="col-md-6 col-xs-6">
            <input class="btn btn-success pull-right" id="delete" onclick="deleteInfo()"
                   type="submit" value="删除"/>
        </div>
        <div class="col-md-6 col-xs-6">
            <a href="/addPage" class="mybutton">添加</a>
        </div>
    </form>
        </div>
</div>
</body>

</html>