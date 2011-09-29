require 'formula'

class MysqlConnectorC < Formula
  version '6.0.2'
  homepage 'http://dev.mysql.com/downloads/connector/c/6.0.html'
  url 'http://mysql.mirrors.pair.com/Downloads/Connector-C/mysql-connector-c-6.0.2-osx10.5-x86-64bit.tar.gz'
  md5 '254829149c9b5f5707d956e592c81cfc'

  def install
    system "cp -r * #{prefix}"
  end
end
