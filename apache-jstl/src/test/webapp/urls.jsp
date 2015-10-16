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
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/plain; charset=UTF-8" %>
Title: JSTL c:url Tests
[c:url value] = <c:url value="/ref.jsp" />
<c:set var="foo" value="ref.jsp;key=value"/>
[c:url param] = <c:url value="${foo}"><c:param name="noframe" value="true"/></c:url>
