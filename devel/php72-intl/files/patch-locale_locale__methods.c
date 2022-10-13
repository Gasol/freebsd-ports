--- locale/locale_methods.c.orig	2020-09-30 05:15:54 UTC
+++ locale/locale_methods.c
@@ -1333,7 +1333,7 @@ PHP_FUNCTION(locale_filter_matches)
 		if( token && (token==cur_lang_tag) ){
 			/* check if the char. after match is SEPARATOR */
 			chrcheck = token + (strlen(cur_loc_range));
-			if( isIDSeparator(*chrcheck) || isEndOfTag(*chrcheck) ){
+			if( isIDSeparator(*chrcheck) || isKeywordSeparator(*chrcheck) || isEndOfTag(*chrcheck) ){
 				if( cur_lang_tag){
 					efree( cur_lang_tag );
 				}
@@ -1389,7 +1389,7 @@ PHP_FUNCTION(locale_filter_matches)
 		if( token && (token==cur_lang_tag) ){
 			/* check if the char. after match is SEPARATOR */
 			chrcheck = token + (strlen(cur_loc_range));
-			if( isIDSeparator(*chrcheck) || isEndOfTag(*chrcheck) ){
+			if( isIDSeparator(*chrcheck) || isKeywordSeparator(*chrcheck) || isEndOfTag(*chrcheck) ){
 				if( cur_lang_tag){
 					efree( cur_lang_tag );
 				}
