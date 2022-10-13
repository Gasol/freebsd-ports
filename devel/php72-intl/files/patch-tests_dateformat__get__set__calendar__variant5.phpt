--- tests/dateformat_get_set_calendar_variant5.phpt.orig	2020-09-30 05:15:54 UTC
+++ tests/dateformat_get_set_calendar_variant5.phpt
@@ -1,9 +1,9 @@
 --TEST--
-IntlDateFormatter: setCalendar()/getCalendar()/getCalendarObject()
+IntlDateFormatter: setCalendar()/getCalendar()/getCalendarObject() for ICU >= 58.1 and < 70.1
 --SKIPIF--
 <?php
 if (!extension_loaded('intl')) die('skip intl extension not enabled'); ?>
-<?php if (version_compare(INTL_ICU_VERSION, '58.1') < 0) die('skip for ICU >= 58.1'); ?>
+<?php if (version_compare(INTL_ICU_VERSION, '58.1') < 0 || version_compare(INTL_ICU_VERSION, '70.1') >= 0) die('skip for ICU >= 58.1 and < 70.1'); ?>
 --FILE--
 <?php
 ini_set("intl.error_level", E_WARNING);
