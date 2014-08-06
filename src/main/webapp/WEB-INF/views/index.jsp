<%--
  Created by IntelliJ IDEA.
  User: wangj_000
  Date: 2014/8/6
  Time: 21:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/common/lib.jsp" %>
<html>
<head>
    <title>首页</title>
    <script>
        $(function () {
            $('#tt').tabs('add', {
                title: '首页',
                content: 'Tab Body',
                closable: false,
                fit: true
            });

            $('.btn').linkbutton({
                plain:true
            });
        });

        var addTab = function () {
            $('#tt').tabs('add', {
                title: '111',
                content: 'Tab Body',
                closable: true,
                fit: true
            });
        }

    </script>
</head>
<body class="easyui-layout" style="font-family: '微软雅黑';">
<div region="north" title="" split="true" style="height:100px;">
    Here is the header.
</div>
<div region="south" title="" split="true" style="height:100px;text-align: center;padding: 40px;">

    Copyright © 2014 Powered By WangJin
</div>
<div region="east" iconCls="icon-reload" title="East" split="true" style="width:100px;"></div>
<div region="west" split="true" title="菜单" style="width:300px;">

    <div id="aa" class="easyui-accordion" style="width:auto;height:auto;">
        <div title="系统管理" iconCls="icon-save" selected="true" style="overflow:auto;padding:10px;">
            <h3 style="color:#0099FF;">Accordion for jQuery</h3>

            <p>Accordion is a part of easyui framework for jQuery.
                It lets you define your accordion component on web page more easily.</p>


            <a href="javascript:addTab();" class="btn" iconCls="icon-search">easyui</a>
        </div>
        <div title="Title2" iconCls="icon-reload" selected="true" style="padding:10px;">
            content2
        </div>
        <div title="Title2" iconCls="icon-reload" selected="true" style="padding:10px;">
            content2
        </div>
        <div title="Title2" iconCls="icon-reload" selected="true" style="padding:10px;">
            content2
        </div>
        <div title="Title2" iconCls="icon-reload" selected="true" style="padding:10px;">
            content2
        </div>
        <div title="Title2" iconCls="icon-reload" selected="true" style="padding:10px;">
            content2
        </div>

    </div>

</div>
<div region="center" title="" style="padding:5px;background:#eee;">

    <div id="tt" class="easyui-tabs" style="width:100%;height: 100%;">


    </div>


</div>
</body>
</html>
