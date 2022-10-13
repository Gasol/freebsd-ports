--- breakiterator/codepointiterator_internal.h.orig	2020-09-30 05:15:54 UTC
+++ breakiterator/codepointiterator_internal.h
@@ -36,7 +36,11 @@ namespace PHP {
 
 		virtual ~CodePointBreakIterator();
 
+#if U_ICU_VERSION_MAJOR_NUM >= 70
+		virtual bool operator==(const BreakIterator& that) const;
+#else
 		virtual UBool operator==(const BreakIterator& that) const;
+#endif
 
 		virtual CodePointBreakIterator* clone(void) const;
 
