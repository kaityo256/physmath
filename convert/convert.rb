while (line = gets)
  line.gsub!(/\\diff/, '\mathrm{d}')
  line.gsub!(/\\e\^/, '\mathrm{e}^')
  line.gsub!(/&=&/, '&=')
  line.gsub!(/\\cal/, '\mathcal')
  line.gsub!(/{\\bf\s(.*?)}/,' **\1** ')
  case line
  when /\\section\{(.*)\}/
    puts "# #{$1}"
  when /\\subsection\{(.*)\}/
    puts "## #{$1}"
  when /\\subsubsection\{(.*)\}/
    puts "### #{$1}"
  when /^\\ans\{(.*)\}\{(.*)\}/
    puts "### #{$1}. (#{$2})\n\n"
  when /\\begin\{eqnarray\}/
    puts "\n$$\n\\begin{aligned}\n"
  when /\\end\{eqnarray\}/
    puts "\\end{aligned}\n$$\n\n"
  when /\\begin\{equation\}/
    puts "\n$$"
  when /\\end\{equation\}/
    puts "$$\n\n"
  when /\$\$(.*)\$\$$/
    puts "$$\n#{$1}\n$$\n\n"
  when /^%/
    # nop
  when /\\yodan/
    # nop
  when /^\}$/
    # nop
  when /\\newpage/
    break
  else
    puts line
  end
end
