====
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
====

This empty jar file is purely to work around a problem with the Maven Dependency plugin.
Several modules in jetty use the Dependency plugin to copy or unpack the dependencies of  other modules.
However, the Dependency plugin is not capable of unpacking or copying a dependency of type 'pom', which
this module is, as it consists purely of external dependencies needed to run jsp.
