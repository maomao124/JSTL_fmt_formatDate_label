<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  Project name(项目名称)：JSTL_fmt_formatDate_label
  Author(作者）: mao
  Author QQ：1296193245
  GitHub：https://github.com/maomao124/
  Date(创建日期)： 2022/1/4
  Time(创建时间)： 13:05
  Description(描述)：
   JSTL <fmt:formatDate> 标签用于使用不同的方式格式化日期。
JSP <fmt:formatDate> 标签的语法如下。
<fmt:formatDate
  value="datevalue"
  [dateStyle="default|short|medium|long|full"]
  [pattern="customPattern"]
  [scope="page|request|session|application"]
  [timeStyle="default|short|medium|long|full"]
  [timeZone="timeZone"]
  [type="time|date|both"]
  [var="varname"]
/>
其中，[ ]中的内容为可选项，参数说明如下表所示：
参 数	说 明
value	要显示的日期
dateStyle	设定日期输出的格式
pattern	自定义格式的模式
scope	设定参数 var 的有效范围，默认为 page
timeStyle	设置日期的输出风格
timeZone	设置日期的时区
type	设置输出的类别，如 time、date 和 both
var	代表格式化后的数字，若设定了该参数，需要使用 <c:out> 标签输出
对 formatDate 输出模式的说明如下表所示：
模 式     	示 例
yyyyMMdd	20201012
HH:mm	11:50
HH:mm:ss	11:50:10
yyyy.mm.dd G 'at' HH:mm:ss z	2020.11.12 公元 at 11:30:10 CST
yyMMddHHmmssz	140120112030+0800
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:set var="Date" value="<%=new java.util.Date()%>"/>
日期格式化（1）：
<fmt:formatDate type="time" value="${Date}"/><br>
日期格式化（2）：
<fmt:formatDate type="date" value="${Date}"/><br>
日期格式化（3）：
<fmt:formatDate type="both" value="${Date}"/><br>
日期格式化（4）：
<fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${Date}"/><br>
日期格式化（5）：
<fmt:formatDate type="both" dateStyle="medium" timeStyle="medium" value="${Date}"/><br>
日期格式化（6）：
<fmt:formatDate type="both" dateStyle="long" timeStyle="long" value="${Date}"/><br>
<br/>
<%SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd   HH:mm:ss");%>
<%=simpleDateFormat.format(new Date())%>
</body>
</html>
