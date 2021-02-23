#!/usr/bin/env ruby

require "bundler/setup"
require "ruby_network_scanner"
require "optparse"

option = {}
OptionParser.new do |opts|
    opts.banner = "Usage: example.rb [option]"

    opts.on("-d", "--deep", "rub a longer deep scan") do |v|
        option[:deep] = v
    end

    opts.on("-f", "--freq=FREQ", "Choose 2 or 5") do |v|
        options[:freq] = v
      end
    end.parse!

    
    scanner = RubyWifiScanner::Scanner.create
    
    if option[:deep]
        scanner.deep_scan
    end

    puts scanner.print_fmt(options)