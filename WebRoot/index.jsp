 <%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
    <%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    %>

    <!DOCTYPE HTML>
    <html>
      <head>
        <meta charset="UTF-8"> 
        <title>JavaEE开发技术-SSH demo</title>
        <link rel="icon" href="<%=basePath%>include/img/ucte.ico" type="image/x-icon" />
        <link rel="stylesheet" type="text/css" href="<%=basePath%>include/css/themes/default/easyui.css">
        <link rel="stylesheet" type="text/css" href="<%=basePath%>include/css/themes/icon.css">
        <script type="text/javascript" src="<%=basePath%>include/js/jquery.min.js"></script>
        <script type="text/javascript" src="<%=basePath%>include/js/jquery.easyui.min.js"></script>
        <script type="text/javascript" src="<%=basePath%>include/js/easyui-lang-zh_CN.js"></script>
        <link rel="stylesheet" type="text/css" href="<%=basePath%>include/css/news.css">
        <script>var base="<%=basePath%>";</script>
        <script src="<%=basePath%>include/js/ckobject.js"></script>
        <script src="<%=basePath%>include/js/login.js"></script>
        <link href="<%=basePath%>include/css/login1.css" rel='stylesheet' type='text/css' />
    </head>
    <body style="margin: 0px auto; width: 1000px;">
    <div class="easyui-layout" style="width:1000px;height:550px;background-color: rgba(204, 255, 0, 0.46);">
    <div data-options="region:'north',border:false" style="height:130px;width:1000px;">
        <div id="bver" style="background-color: #FFEB3B;text-align: center;line-height: 30px;"></div>
        <div id="bg" style="position: relative;overflow:hidden;">  
          <div style="position: absolute;overflow:hidde;">  
            <img src="<%=basePath%>include/img/xxxy.png"/>  
          </div>  
            <img src="<%=basePath%>include/img/bannerbg.jpg"/>  
        </div> 
    </div>
    <div data-options="region:'west',border:false" style="width:680px;">
        <!-- 左边显示考试新闻的区域 -->
        <div class="f-left f-w710" style="width:650px;margin: 0px 10px;">
            <div class="div">
                <div class="l-news">
                    <div class="nheader">
                        <table class="winstyle44497" cellspacing="0" cellpadding="0">
                            <tbody>
                                <tr>
                                    <td nowrap=""><h3>新闻公告</h3></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="nlist">
                        <table id="newstable" width="100%" class="winstyle122389">
                            <tbody>
                                <!-- easyui 分页（pagination） -->
                                <tr id="trpp">
                                    <td colspan="3" align="left">
                                        <div id="pp" style="background:#efefef; margin: 2px 5px;">暂时无相关新闻</div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div data-options="region:'center',border:false" style="width:320px;">          
        <!-- 右边登录的区域 -->
        <div class="f-right f-w280 div-red" style="width:305px;">
            <div class="div">
                <div class="l-news">
                    <div class="nheader">
                        <h3>用户登录</h3>
                    </div>
                    <div class="login-form" style="width:305px">
                        <div class="clear"></div>
                        <form id="login_form" method="post" onsubmit="return false">
                            <input type="text" class="text" id="uid" name="uid" placeholder="用户名" value=""> 
                            <input type="password" id="pwd" name="pwd" placeholder="密码" value="123"> 
                            <input type="hidden" name="role" value="5">
                        </form>
                        <div class="signin">
                            <input type="submit" id="login_submit" value="登录">
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div data-options="region:'south',border:false" >
        <div class="copy-rights"><p>Copyright &copy; 2017 lk@huhst </p> </div>
    </div>
    </div>
    </body>
    </html>