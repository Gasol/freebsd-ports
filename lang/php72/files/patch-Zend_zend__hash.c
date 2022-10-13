--- Zend/zend_hash.c.orig	2020-09-30 05:15:55 UTC
+++ Zend/zend_hash.c
@@ -1545,7 +1545,7 @@ ZEND_API void ZEND_FASTCALL zend_hash_apply_with_argum
 }
 
 
-ZEND_API void ZEND_FASTCALL zend_hash_apply_with_arguments(HashTable *ht, apply_func_args_t apply_func, int num_args, ...)
+ZEND_API void zend_hash_apply_with_arguments(HashTable *ht, apply_func_args_t apply_func, int num_args, ...)
 {
 	uint32_t idx;
 	Bucket *p;
