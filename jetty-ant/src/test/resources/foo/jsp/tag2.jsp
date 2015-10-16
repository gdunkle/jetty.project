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
<body>

<%@ taglib uri="http://www.acme.com/taglib2" prefix="acme" %>

<acme:date2 format="long">
  On ${day} of ${month} in the year ${year}
</acme:date2>

<br/>

<acme:date2 format="short">
  ${day} - ${month} - ${year}
</acme:date2>

<br/>

</body>
</html>
