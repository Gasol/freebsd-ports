--- config.m4.orig	2020-09-30 05:15:53 UTC
+++ config.m4
@@ -32,8 +32,8 @@ fi
 PHP_ARG_WITH(xpm-dir, for the location of libXpm,
 [  --with-xpm-dir[=DIR]      GD: Set the path to libXpm install prefix], no, no)
 
-PHP_ARG_WITH(freetype-dir, for FreeType 2,
-[  --with-freetype-dir[=DIR] GD: Set the path to FreeType 2 install prefix], no, no)
+PHP_ARG_ENABLE(freetype, for FreeType 2,
+[  --enable-freetype       GD: Enable FreeType 2 support], no, no)
 
 PHP_ARG_ENABLE(gd-jis-conv, whether to enable JIS-mapped Japanese font support in GD,
 [  --enable-gd-jis-conv    GD: Enable JIS-mapped Japanese font support], no, no)
@@ -184,29 +184,13 @@ AC_DEFUN([PHP_GD_XPM],[
 ])
 
 AC_DEFUN([PHP_GD_FREETYPE2],[
-  if test "$PHP_FREETYPE_DIR" != "no"; then
+  if test "$PHP_FREETYPE" != "no"; then
+    PKG_CHECK_MODULES([FREETYPE2], [freetype2], [FREETYPE2_FOUND=true])
 
-    for i in $PHP_FREETYPE_DIR /usr/local /usr; do
-      if test -f "$i/bin/freetype-config"; then
-        FREETYPE2_DIR=$i
-        FREETYPE2_CONFIG="$i/bin/freetype-config"
-        break
-      fi
-    done
-
-    if test -z "$FREETYPE2_DIR"; then
-      AC_MSG_ERROR([freetype-config not found.])
-    fi
-
-    FREETYPE2_CFLAGS=`$FREETYPE2_CONFIG --cflags`
-    FREETYPE2_LIBS=`$FREETYPE2_CONFIG --libs`
-
     PHP_EVAL_INCLINE($FREETYPE2_CFLAGS)
     PHP_EVAL_LIBLINE($FREETYPE2_LIBS, GD_SHARED_LIBADD)
     AC_DEFINE(HAVE_LIBFREETYPE,1,[ ])
     AC_DEFINE(ENABLE_GD_TTF,1,[ ])
-  else
-    AC_MSG_RESULT([If configure fails try --with-freetype-dir=<DIR>])
   fi
 ])
 
@@ -287,6 +271,7 @@ dnl enable the support in bundled GD library
 
   if test -n "$GD_XPM_DIR"; then
     AC_DEFINE(HAVE_GD_XPM, 1, [ ])
+    AC_DEFINE(HAVE_XPM, 1, [ ])
     GDLIB_CFLAGS="$GDLIB_CFLAGS -DHAVE_XPM"
   fi
 
@@ -349,7 +334,7 @@ if test "$PHP_GD" != "no"; then
 
   if test "$GD_MODULE_TYPE" = "builtin"; then
     PHP_ADD_BUILD_DIR($ext_builddir/libgd)
-    GDLIB_CFLAGS="-I$ext_srcdir/libgd $GDLIB_CFLAGS"
+    GDLIB_CFLAGS="-I../.. -I$ext_srcdir/libgd $GDLIB_CFLAGS"
     GD_HEADER_DIRS="ext/gd/ ext/gd/libgd/"
 
     PHP_TEST_BUILD(foobar, [], [
@@ -357,7 +342,7 @@ if test "$PHP_GD" != "no"; then
     ], [ $GD_SHARED_LIBADD ], [char foobar () {}])
   else
     GD_HEADER_DIRS="ext/gd/"
-    GDLIB_CFLAGS="-I$GD_INCLUDE $GDLIB_CFLAGS"
+    GDLIB_CFLAGS="-I../.. -I$ext_srcdir/libgd $GDLIB_CFLAGS"
     PHP_ADD_INCLUDE($GD_INCLUDE)
     PHP_CHECK_LIBRARY(gd, gdImageCreate, [], [
       AC_MSG_ERROR([GD build test failed. Please check the config.log for details.])
