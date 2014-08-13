require 'formula'

class Pficommon < Formula
  url 'https://github.com/gwtnb/pficommon/tarball/mavericks-20140813'
  head 'https://github.com/pfi/pficommon.git'
  homepage 'http://pfi.github.io/pficommon/'
  sha1 'b3be97c0a87ae8cf79228d751e4a36bdee4013af'
  version 'mavericks-20140813'

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
