/*
 *  ========================================================================
 *  Copyright (c) ${copyright-range} Mort Bay Consulting Pty. Ltd.
 *  ------------------------------------------------------------------------
 *  All rights reserved. This program and the accompanying materials
 *  are made available under the terms of the Eclipse Public License v1.0
 *  and Apache License v2.0 which accompanies this distribution.
 *
 *      The Eclipse Public License is available at
 *      http://www.eclipse.org/legal/epl-v10.html
 *
 *      The Apache License v2.0 is available at
 *      http://www.opensource.org/licenses/apache2.0.php
 *
 *  You may elect to redistribute this code under either of these licenses.
 *  ========================================================================
 */
//----------------------------------------------------------------------
//
// Silly / Pointless Javascript to test GZIP compression.
//
//----------------------------------------------------------------------

var LOGO = {
  dat: [
    0x50, 0x89, 0x47, 0x4e, 0x0a, 0x0d, 0x0a, 0x1a, 0x00, 0x00, 0x0d, 0x00, 0x48, 0x49, 0x52, 0x44,
    0x00, 0x00, 0x45, 0x49, 0x44, 0x4e, 0x42, 0xae, 0x82, 0x60,
  ],
  disp: function()
  {
    // Do Nothing

    throw "Does Nothing!";
  }

};

try
{
  LOGO.disp();
}
catch(e)
{
  alert("Error: " + e + "\n");
}

