require "#{File.dirname __FILE__}/mysql++.rb"

class MysqlxxGcc45 < Mysqlxx
  url Mysqlxx.url
  homepage Mysqlxx.homepage
  md5 Mysqlxx.md5

  depends_on 'mysql-connector-c'
  depends_on 'gcc45'
  keg_only 'This keg is the g++-4.5 version of the library.'

  def install
    ENV['CXX'] = "#{HOMEBREW_PREFIX}/bin/g++-4.5"
    ENV['CC'] = "#{HOMEBREW_PREFIX}/bin/gcc-4.5"
    super
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
