    <%@ page language="java" contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8"%>
    <%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    %>    
    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <title>新闻管理后台</title>
        <link rel="icon" href="<%=basePath%>include/img/ucte.ico" type="image/x-icon" />
        <link rel="stylesheet" type="text/css" href="<%=basePath%>include/css/themes/bootstrap/easyui.css">
        <link rel="stylesheet" type="text/css" href="<%=basePath%>include/css/themes/icon.css">
        <script type="text/javascript" src="<%=basePath%>include/js/jquery.min.js"></script>
        <script type="text/javascript" src="<%=basePath%>include/js/jquery.easyui.min.js"></script>
        <script type="text/javascript" src="<%=basePath%>include/js/easyui-lang-zh_CN.js"></script>
        <script>var base="<%=basePath%>";</script>
    </head>
    <body style="margin: 0px auto; width: 1000px;">
    <div style="width: 800px;text-align:right;background-color: rgba(230,240,241,.5);">
            <span style="font-weight:bold"> ${sessionScope.me.xm}，您好！欢迎登录</span> <a href="#" id="logout" style="text-decoration: blink;">【退出】</a></div>
    <table id="dg" cellpadding="2" ></table>
    <div id="tb" style="padding:5px;">
        <input id="s_name" class="easyui-textbox"  data-options="prompt:'标题关键字...'" style="width:200px;height:32px">
        <a id="s_news" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'">查询</a>
        <a id="a_news" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-add'">添加</a>
    </div>
    <script type="text/javascript">

    var s_name="",id="",title="";
    function loadGrid(){
        s_name=$("#s_name").val();
        $("#dg").datagrid({
            width:800,height:500,nowrap:false,
            striped:true,border:true,collapsible:false,
            url:base+"listnews",                    
            queryParams:{"s_name":s_name},
            pagination:true,
            rownumbers:true,
            singleSelect:true,
            pageSize:20,
            loadMsg:'数据加载中...' ,
            columns:[[
                        {title:'标题', field:'title',width:200},
                        {title:'发布时间', field:'tjdate',width:150, formatter: function(value,row,index){
                            return (new Date(row.tjdate).Format("yyyy-MM-dd hh:mm"));
                        }},
                      {title:'操作', field:'hitnum',width:100, formatter: function(value,row,index){
                          var p="<a href=\"javascript:editNews('"+row.id+"')\">修改</a>";
                          p+="    |   <a href=\"javascript:delNews('"+row.id+"','"+row.title+"')\">删除</a>";
                          return p;
                      }},
                  ]],
                toolbar:'#tb'
        });
    }
    function editNews(id){
        window.location.href=base+"goeditnews?id="+id;
    }
    function delNews(ph,titl){
        id=ph;title=titl;
        $.messager.confirm('确认删除？', "您确认要删除“"+title+"”吗？", function(r){
            if (r){
                $.ajax({
                    url:base+"delanews?id="+id,
                    type:"post",
                    success: function(res){
                        if(res.delflag==true){
                            $.messager.alert('系统提示','您已删除新闻!','info');
                            id="";s_name="";
                            loadGrid();
                        }else {
                            $.messager.alert('系统提示','删除失败!','error');
                        }
                        return false;
                    },
                    error:function(res){
                        $.messager.alert('系统提示','系统错误!','error');
                    }
                })
            }
        });
    }

    $(function(){
        loadGrid();
        $("#s_news").click(function(){
            s_name=$("#s_name").val();
            loadGrid();
        });
        $("#a_news").click(function(){
            window.location.href=base+"goaddnews";
        });
        $("#logout").click(function(){
            window.location.href=base+"logout";
        });
        $("#tb").bind("keydown",function(e){            
            var theEvent = e || window.event; // 兼容FF和IE和Opera   
            var code = theEvent.keyCode || theEvent.which || theEvent.charCode;    
            if (code == 13) {//回车执行查询
                $("#s_news").click();
            }    
        });
    })
    </script>
    </body>
    </html>