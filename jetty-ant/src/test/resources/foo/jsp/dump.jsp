<%--

     ========================================================================
     Copyright (c) ${copyright-range} Mort Bay Consulting Pty. Ltd.
     ------------------------------------------------------------------------
     All rights reserved. This program and the accompanying materials
     are made available under the terms of the Eclipse Public License v1.0
     and Apache License v2.0 which accompanies this distribution.

         The Eclipse Public License is available at
         http://www.eclipse.org/legal/epl-v10.html

         The Apache License v2.0 is available at
         http://www.opensource.org/licenses/apache2.0.php

     You may elect to redistribute this code under either of these licenses.
     ========================================================================

--%>
<html><head>
<%@ page import="java.util.Enumeration" %>
</head><body>
<h1>JSP Dump</h1>

<table border="1">
<tr><th>Request URI:</th><td><%= request.getRequestURI() %></td></tr>
<tr><th>ServletPath:</th><td><%= request.getServletPath() %></td></tr>
<tr><th>PathInfo:</th><td><%= request.getPathInfo() %></td></tr>

<%
   Enumeration e =request.getParameterNames();
   while(e.hasMoreElements())
   {
       String name = (String)e.nextElement();
%>
<tr>
  <th>getParameter("<%= name %>")</th>
  <td><%= request.getParameter(name) %></td></tr>
<% } %>

</table>
</body></html>
