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

            //注册按钮
            $('.btn').linkbutton({
                plain: false
            });

            $('.panel-body-noborder').css('min-height', '100%');
        });

        var titileid = 0;

        var addTab = function (url,title) {

            $(".tab-iframe").each(function (i,dom){
                if(title==$(dom).attr("titlename")){
                    $('#tabs-panel').tabs('select',title);
                }
            });


            $('#tabs-panel').tabs('add', {
                title: title,
                content: '<iframe class=\"tab-iframe\" src=\"' + url + '\" titlename=\"'+ title +'\" frameborder=\"0\" height=\"100%\" weight=\"100%\"></iframe>',
                closable: true,
                tools:[{
                    iconCls:'icon-mini-refresh',
                    handler:function(){
                        var tab = $('#tabs-panel').tabs('getSelected');  // get selected panel
                        tab.panel('refresh');
                    }
                }]
            });
            titileid++;

            $('.panel-body-noborder').css('height', '100%'); //设置tab的高度为最大

        }


    </script>
</head>
<body class="easyui-layout" style="font-family: '微软雅黑';">
<div region="north" title="" split="true" style="height:100px;">
    Here is the header.
</div>
<div region="south" title="" split="true" style="height:100px;text-align: center;padding: 35px;">

    Copyright © 2014 Powered By WangJin
</div>
<%--<div region="east" iconCls="icon-reload" title="" split="true" style="width:100px;"></div>--%>
<div region="west" split="true" title="菜单" style="width:300px;">

    <div id="aa" class="easyui-accordion" style="width:auto;height:auto;">
        <div title="系统管理" iconCls="icon-save" selected="true" style="overflow:auto;padding:10px;text-align: center;">
            <a href="javascript:addTab('form/index.do','菜单管理');" class="btn" iconCls="icon-search"
               style="width: 100%;margin:100px,0px,10px,0px;">菜单管理</a>
            <a href="javascript:addTab('form/index.do','xx管理');" class="btn" iconCls="icon-search"
               style="width: 100%;margin:100px,0px,10px,0px;">xx管理</a>
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

    <div class="easyui-tabs" style="width:auto;height: 100%" id="tabs-panel">
        <div title="首页" style="padding:10px">
            <p style="font-size:14px">jQuery EasyUI framework helps you build your web pages easily.</p>
            <ul>
                <li>easyui is a collection of user-interface plugin based on jQuery.</li>
                <li>easyui provides essential functionality for building modem, interactive, javascript applications.
                </li>
                <li>using easyui you don't need to write many javascript code, you usually defines user-interface by
                    writing some HTML markup.
                </li>
                <li>complete framework for HTML5 web page.</li>
                <li>easyui save your time and scales while developing your products.</li>
                <li>easyui is very easy but powerful.</li>
            </ul>
        </div>


    </div>


</div>
</body>
</html>
