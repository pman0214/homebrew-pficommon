require 'formula'

class Pficommon < Formula
  url 'https://github.com/gwtnb/pficommon/tarball/mavericks-20140813'
  head 'https://github.com/pfi/pficommon.git'
  homepage 'http://pfi.github.io/pficommon/'
  sha256 'f4132eb8ce8c5635c869d178b9bae4f9a1b2e15f5d77193a59010a035531a923'
  version 'mavericks-20140813'

  depends_on 'msgpack059'
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
