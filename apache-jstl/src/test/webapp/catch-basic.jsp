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
<%@ page contentType="text/plain; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
Title: JSTL c:catch test

<c:catch var ="catchException">
  <fmt:parseNumber var="parsedNum" value="aaa" />
</c:catch>

<c:if test = "${catchException != null}">
[c:catch] exception : ${catchException}
[c:catch] exception.message : ${catchException.message}
</c:if>
<c:if test = "${catchException == null}">
[c:catch] exception is null
</c:if>
