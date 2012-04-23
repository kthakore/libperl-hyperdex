libperl-hyperdex
================

Perl IO client for Hyperdex

See http://www.hyperdex.org for more information about Hyperdex.


SUMMARY

Hyperdex is a key-value store with additional features intended to solve the problems presented with existing options. While values are accessed via key, additional stored fields are also indexed allowing fast  searches even when the key is not known. In addition, there are features that support asynchronous requests, atomic read-write-modify, and transparent fault tolerance. 

The goal of this project is to create a Perl interface to allow users writing Perl code to seamlessly integrate Hyperdex interactions into their scripts and applications.

ROADMAP

* v1 - Support basic functions (put, get, search)
* v1.5 - Support additional functions (string_*, list_*, set_*
* v2 - Support atomic read-write-modify (condput, atomic*)
* v2.5 - Support map functions (map_atomic_*, map_string_*)
* v3 - Support asynchronous requests (async_*)
