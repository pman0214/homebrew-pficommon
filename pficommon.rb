require 'formula'

class Pficommon < Formula
  url 'https://github.com/gwtnb/pficommon/tarball/mavericks-20140805'
  head 'https://github.com/pfi/pficommon.git'
  homepage 'http://pfi.github.io/pficommon/'
  sha1 '06e877935acdc79e7fa2ccd269390a39f302a8f8'
  version 'mavericks-20140805'

  depends_on 'msgpack'
  depends_on 'pkg-config'

  def install
    if MacOS.version >= "10.9"
      ENV['CXXFLAGS'] = '-std=c++11'
    end
    system './waf', 'configure', "--prefix=#{prefix}"
    system './waf'
    system './waf', 'install'
  end
end
