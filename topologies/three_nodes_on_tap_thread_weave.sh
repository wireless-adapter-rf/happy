#!/bin/bash
# Steps to manually build three_nodes_on_tap_thread_happy.json

happy-node-add node01
happy-node-add node02
happy-node-add node03
happy-network-add Home Thread
happy-network-address Home 2001:db8:1:2::
happy-node-join -m 1 --tap node01 Home
happy-node-join -m 2 --tap node02 Home
happy-node-join -m 3 --tap node03 Home

weave-fabric-add fab1
weave-node-configure -w 18B4300000000004 node01
weave-node-configure -w 18B4300000000005 node02
weave-node-configure -w 18B430000000000A node03


# happy-state -s three_nodes_on_tap_thread_weave.json
