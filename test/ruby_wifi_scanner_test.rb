#!/usr/bin/env ruby

require "test_helper"
require "ruby_wifi_scanner/scanner"
require "ruby_wifscanner/osx_scanner"
require "ruby_wifi_scanner/linux_scanner"


class RubyWifiScannerTest
    def test_that_it_has_version_number
        refute_nil ::RubyWifiScanner::VERSION
    end

    def test_scanner
        rws = RubyWifiScanner::Scanner.create
        assert rws.network.first.level < rws.networks.last.level
    end

    def test_osx