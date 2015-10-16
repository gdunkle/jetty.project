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

<%@ taglib uri="http://www.acme.com/taglib" prefix="acme" %>

<small>&lt;acme:date tz="GMT"&gt;EEE, dd/MMM/yyyy HH:mm:ss ZZZ&lt;/acme:date&gt;
==&gt;</small>
<acme:date tz="GMT">EEE, dd/MMM/yyyy HH:mm:ss ZZZ</acme:date>
<br/>
<small>&lt;acme:date tz="EST"&gt;EEE, dd-MMM-yyyy HH:mm:ss ZZZ&lt;/acme:date&gt;
==&gt;</small>
<acme:date tz="EST">EEE, dd-MMM-yyyy HH:mm:ss ZZZ</acme:date>
<br/>

</body>
</html>
