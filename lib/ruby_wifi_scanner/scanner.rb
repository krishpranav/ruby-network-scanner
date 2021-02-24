module RubyWifiScanner
	class Scanner
		attr_reader :networks

		WifiInfo = Struct.new(:ssid, :rssi, :level, :channel)

		def self.create(raw_scan=nil)
			case
			when osx? then OSXScanner.new(raw_scan)
			when linux? then LinuxScanner.new(raw_scan)
			end
		end

		private_class_method
		def self.osx?
			RUBY_PLATFORM =~ /darwin/ 
		end
		