while (line = gets)
  line.gsub!(/\\diff/, '\mathrm{d}')
  case line
  when /\\section\{(.*)\}/
    puts "# #{$1}"
  when /\\subsection\{(.*)\}/
    puts "## #{$1}"
  when /\\subsubsection\{(.*)\}/
    puts "### #{$1}"
  when /\\ans\{(.*)\}\{(.*)\}/
    puts "### #{$1}. (#{$2})"
  when /\\begin\{equation\}/
    puts "\n$$"
  when /\\end\{equation\}/
    puts "$$\n\n"
  when /^%/
    # nop
  else
    puts line
  end
end
