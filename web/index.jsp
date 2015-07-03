<%--
  Created by IntelliJ IDEA.
  User: yangjianzhou
  Date: 15-7-3
  Time: 下午8:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>test jquery easy-ui</title>
    <link rel="stylesheet" type="text/css" href="css/easyui.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="js/test.js"></script>
</head>
<body >
<div style="margin:20px 0;"></div>
<div class="easyui-layout" style="width: 100%;height: 95%">
    <div data-options="region:'north'" style="height:100px">
        <div style="margin-top: 5px; margin-left: 5px">
            <label>username : </label><input class="easyui-textbox"/>
            <label>password : </label><input class="easyui-textbox"/>
            <label>address : </label><input class="easyui-textbox"/>
            <label>orderId : </label><input class="easyui-textbox"/>
            <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">Submit</a>
            <a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">Clear</a>
        </div>

    </div>
    <div data-options="region:'center',title:'Main Title',iconCls:'icon-ok'">
        <table class="easyui-datagrid" id="dataGridTable" >
            <thead>
            <tr>
                <th data-options="field:'orderId',align:'center'" width="200">Item ID</th>
                <th data-options="field:'username',align:'center'" width="100">Product ID</th>
                <th data-options="field:'address',align:'center'" width="180">List Price</th>
                <th data-options="field:'orderId',align:'right'" width="180">Unit Cost</th>
                <th data-options="field:'username',align:'center'" width="150">Attribute</th>
                <th data-options="field:'address',align:'center'" width="160">Status</th>
            </tr>
            </thead>
        </table>
    </div>
</div>
</body>
</html>
