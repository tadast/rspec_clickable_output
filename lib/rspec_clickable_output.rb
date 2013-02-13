require "rspec_clickable_output/version"
require "rspec/core"

module RSpec
  module Core
    class Metadata

      def self.relative_path(line)
        prefix = "subl://open?url=file://"
        cwd = Dir.pwd
        case line
          when %r{(^[a-z_]+\([A-Za-z]+\)) \[\.?(/?.*):(\d+)\]:}
            line = "#{$1}\n#{prefix}#{File.join(cwd, $2)}&line=#{$3}"
          when %r{^\s*(\[?)(/.+):(\d+):(.*)$}               # regular stacktrace
            line = "#{$1}#{prefix}#{$2}&line=#{$3} #{$4}"
          when %r{^\s*(\[?)\.?(/?.+):(\d+):(in .*)$}        # stacktrace with relative path
            line = "#{$1}#{prefix}#{File.join(cwd, $2)}&line=#{$3} #{$4}"
        end
        line.gsub(%r|/[^/]+/\.\./|, '/')
      end

    end
  end
end