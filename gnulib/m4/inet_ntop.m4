# inet_ntop.m4 serial 5
dnl Copyright (C) 2005, 2006, 2008 Free Software Foundation, Inc.
dnl This file is free software; the Free Software Foundation
dnl gives unlimited permission to copy and/or distribute it,
dnl with or without modifications, as long as this notice is preserved.

AC_DEFUN([gl_INET_NTOP],
[
  AC_REQUIRE([gl_ARPA_INET_H_DEFAULTS])
  ARPA_INET_H='arpa/inet.h'

  AC_REPLACE_FUNCS(inet_ntop)
  gl_PREREQ_INET_NTOP
])

# Prerequisites of lib/inet_ntop.c.
AC_DEFUN([gl_PREREQ_INET_NTOP], [
  AC_CHECK_DECLS([inet_ntop],,,[#include <arpa/inet.h>])
  AC_REQUIRE([gl_SOCKET_FAMILIES])
  AC_REQUIRE([AC_C_RESTRICT])
])
