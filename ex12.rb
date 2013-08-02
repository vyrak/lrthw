require 'open-uri'

open("http://www.ruby-lang.org/en") do |f|
  f.each_line {|line| p line}
  puts f.base_uri
  puts f.content_type
  puts f.charset
  puts f.content_encoding
  puts f.last_modified
end

=begin
1. Research the difference between _require_ and _include_. How are they different?
  _require_ runs code in another file and keeps track of files that have been
  required so it doesn't run them twice.  To run files more than once, use _load_.

  _include_ takes all methods from another module and includes them in the current
  module.  It is the primary way to "extend" with other modules.  This is also known
  as mix-ins.

2. Can you _require_ a script that doesn't contain a library specifically?
  Yes, it just runs the required script, regardless of its content type.

3. Figure out which directories on your system Ruby will look in to find the libraries
you require.

  Using rbenv, so it's a little different from a single ruby version install
  ~/.rbenv/versions/1.9.3-p286/lib/ruby/site_ruby/1.9.1
  ~/.rbenv/versions/1.9.3-p286/lib/ruby/site_ruby/1.9.1/x86_64-darwin12.2.1
  ~/.rbenv/versions/1.9.3-p286/lib/ruby/site_ruby
  ~/.rbenv/versions/1.9.3-p286/lib/ruby/vendor_ruby/1.9.1
  ~/.rbenv/versions/1.9.3-p286/lib/ruby/vendor_ruby/1.9.1/x86_64-darwin12.2.1
  ~/.rbenv/versions/1.9.3-p286/lib/ruby/vendor_ruby
  ~/.rbenv/versions/1.9.3-p286/lib/ruby/1.9.1
  ~/.rbenv/versions/1.9.3-p286/lib/ruby/1.9.1/x86_64-darwin12.2.1

  To add more, the RUBYLIB environment variable can include a list of paths.
  Alternatively, the $: variable can be used in ruby to append more paths.
=end
