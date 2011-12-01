require 'formula'

class Mysqlxx < Formula
  url 'http://tangentsoft.net/mysql++/releases/mysql++-3.1.0.tar.gz'
  homepage 'http://tangentsoft.net/mysql++/'
  md5 'd92769cc579b87a60e58a77099cc4f0e'

  depends_on 'mysql-connector-c'

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "--enable-thread-check",
                          "--with-field-limit=40",
                          "--with-mysql-lib=#{HOMEBREW_PREFIX}/lib",
                          "--with-mysql-include=#{HOMEBREW_PREFIX}/include"
    system "make install"
  end

  def patches
    DATA
  end
end


__END__
diff --git a/configure b/configure
index 8c92598..75832e1 100755
--- a/configure
+++ b/configure
@@ -9123,7 +9123,7 @@ echo $ECHO_N "checking for MySQL library directory... $ECHO_C" >&6
 	for m in $MYSQL_lib_check
 	do
 		if test -d "$m" && \
-			(test -f "$m/lib$MYSQL_C_LIB_NAME.so" || \
+			(test -f "$m/lib$MYSQL_C_LIB_NAME.$SO_SUFFIX" || \
 			 test -f "$m/lib$MYSQL_C_LIB_NAME.a")
 		then
 			MYSQL_C_LIB_DIR=$m
