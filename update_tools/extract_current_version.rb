#!/usr/bin/env ruby

require 'json'
package_lock_file = JSON.parse( File.read '../src/package-lock.json' )
version = package_lock_file.to_h.dig( 'dependencies', 'hack', 'version' )
puts version
