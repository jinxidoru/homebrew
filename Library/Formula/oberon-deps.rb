require 'formula'

# This formula exists simply to collect the dependencies for oberon

class OberonDeps < Formula
  url 'https://github.com/rupa/z/tarball/v1.1'
  md5 '75125fba5be0638dafd2518489d2faf2'
  version '1'

  depends_on 'ice'
  depends_on 'mysql++'
  depends_on 'boost'
  depends_on 'libxml2'
  depends_on 'readline'

  def install
  end

end


