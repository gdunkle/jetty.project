//
//  ========================================================================
//  Copyright (c) 1995-2015 Mort Bay Consulting Pty. Ltd.
//  ------------------------------------------------------------------------
//  All rights reserved. This program and the accompanying materials
//  are made available under the terms of the Eclipse Public License v1.0
//  and Apache License v2.0 which accompanies this distribution.
//
//      The Eclipse Public License is available at
//      http://www.eclipse.org/legal/epl-v10.html
//
//      The Apache License v2.0 is available at
//      http://www.opensource.org/licenses/apache2.0.php
//
//  You may elect to redistribute this code under either of these licenses.
//  ========================================================================
//

/**
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
//
//  ========================================================================
//  Copyright (c) 1995-2015 Mort Bay Consulting Pty. Ltd.
//  ------------------------------------------------------------------------
//  All rights reserved. This program and the accompanying materials
//  are made available under the terms of the Eclipse Public License v1.0
//  and Apache License v2.0 which accompanies this distribution.
//
//      The Eclipse Public License is available at
//      http://www.eclipse.org/legal/epl-v10.html
//
//      The Apache License v2.0 is available at
//      http://www.opensource.org/licenses/apache2.0.php
//
//  You may elect to redistribute this code under either of these licenses.
//  ========================================================================
//

package org.eclipse.jetty.util.statistic;

import java.util.concurrent.atomic.AtomicLong;

import org.eclipse.jetty.util.Atomics;


/* ------------------------------------------------------------ */
/** Statistics on a counter value.
 * <p>
 * Keep total, current and maximum values of a counter that
 * can be incremented and decremented. The total refers only
 * to increments.
 *
 */
public class CounterStatistic
{
    protected final AtomicLong _max = new AtomicLong();
    protected final AtomicLong _curr = new AtomicLong();
    protected final AtomicLong _total = new AtomicLong();

    /* ------------------------------------------------------------ */
    public void reset()
    {
        _total.set(0);
        _max.set(0);
        long current=_curr.get();
        _total.addAndGet(current);
        Atomics.updateMax(_max,current);
    }

    /* ------------------------------------------------------------ */
    public void reset(final long value)
    {
        _total.set(0);
        _max.set(0);
        _curr.set(value);
        if (value>0)
        {
            _total.addAndGet(value);
            Atomics.updateMax(_max,value);
        }
    }

    /* ------------------------------------------------------------ */
    /**
     * @param delta the amount to add to the count
     * @return the new value
     */
    public long add(final long delta)
    {
        long value=_curr.addAndGet(delta);
        if (delta > 0)
        {
            _total.addAndGet(delta);
            Atomics.updateMax(_max,value);
        }
        return value;
    }

    /* ------------------------------------------------------------ */
    /**
     * increment the value by one
     * @return the new value, post increment
     */
    public long increment()
    {
        return add(1);
    }

    /* ------------------------------------------------------------ */
    /**
     * decrement by 1
     * @return the new value, post-decrement
     */
    public long decrement()
    {
        return add(-1);
    }

    /* ------------------------------------------------------------ */
    /**
     * @return max value
     */
    public long getMax()
    {
        return _max.get();
    }

    /* ------------------------------------------------------------ */
    /**
     * @return current value
     */
    public long getCurrent()
    {
        return _curr.get();
    }

    /* ------------------------------------------------------------ */
    /**
     * @return total value
     */
    public long getTotal()
    {
        return _total.get();
    }

    /* ------------------------------------------------------------ */
    @Override
    public String toString()
    {
        return String.format("%s@%x{c=%d,m=%d,t=%d}",this.getClass().getSimpleName(),hashCode(),_curr.get(),_max.get(),_total.get());
    }
}
