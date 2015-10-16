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
<h1>JSP2.0 Expressions</h1>

<table border="1">
  <tr><th>Expression</th><th>Result</th></tr>      
  <tr>
    <td>\${param["A"]}</td>
    <td>${param["A"]}&nbsp;</td>
  </tr><tr>
    <td>\${header["host"]}</td>
    <td>${header["host"]}</td>
  </tr><tr>
    <td>\${header["user-agent"]}</td>
    <td>${header["user-agent"]}</td>
  </tr><tr>
    <td>\${1+1}</td>
    <td>${1+1}</td>
  </tr><tr>
    <td>\${param["A"] * 2}</td>
    <td>${param["A"] * 2}&nbsp;</td>
  </tr>
</table>
</html>
