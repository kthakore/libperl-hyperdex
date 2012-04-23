libperl-hyperdex
================

Perl IO client for Hyperdex

See http://www.hyperdex.org for more information about Hyperdex.

===========
= Summary =
===========

Hyperdex is a NoSQL Hash-Key storage solution with additional features intended to solve the problems presented
with existing options. While values are accessed via key, additional stored fields are also indexed allowing fast
searches even when the key is not known. In addition, there are features that support asynchronous requests, atomic
read-write-modify, and transparent fault tolerance. 

The goal of this project is to create a Perl interface to allow users writing Perl code to seamlessly integrate 
Hyperdex interactions into their scripts and applications.

===========
= Roadmap =
===========

v1 - Support basic functions (put, get, search)
v2 - Support atomic read-write-modify (condput)
v3 - Support asynchronous requests (async_get, async_put)
