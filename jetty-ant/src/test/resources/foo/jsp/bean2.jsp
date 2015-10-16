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
<html>
<%@ page session="true"%>
<body>
<jsp:useBean id='counter' scope='session' class='com.acme.Counter' type="com.acme.Counter" />

<h1>JSP1.2 Beans: 2</h1>

Counter accessed <jsp:getProperty name="counter" property="count"/> times.<br/>
Counter last accessed by <jsp:getProperty name="counter" property="last"/><br/>
<jsp:setProperty name="counter" property="last" value="<%= request.getRequestURI()%>"/>

<a href="bean1.jsp">Goto bean1.jsp</a>

</body>
</html>
