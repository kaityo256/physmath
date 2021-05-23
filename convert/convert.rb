while (line = gets)
  line.gsub!(/\\diff/, '\mathrm{d}')
  line.gsub!(/\\mbox/, '\mathrm')
  line.gsub!(/\\e\^/, '\mathrm{e}^')
  line.gsub!(/&\s?=&/, '&=')
  line.gsub!(/\\cal/, '\mathcal')
  line.gsub!(/{\\bf ([a-z])}/, '\bm{\1}')
  line.gsub!(/{\\bf\s(.*?)}/,' **\1** ')
  line.gsub!(/\\label\{.*?\}/,'')
  line.gsub!(/%$/,'')
  case line
  when /fig\/(.*)eps/
    puts "![#{$1}png](#{$1}png)"
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
  when /\\begin\{eqnarray\*\}/
    puts "\n$$\n\\begin{aligned}\n"
  when /\\end\{eqnarray\*\}/
    puts "\\end{aligned}\n$$\n\n"
  when /\\begin\{equation\}/
    puts "\n$$"
  when /\\end\{equation\}/
    puts "$$\n\n"
  when /\$\$(.*)\$\$$/
    puts "$$\n#{$1}\n$$\n\n"
  when /^%/
    # nop
  when /\\begin\{center\}/
    # nop
  when /\\end\{center\}/
    # nop
  when /\\begin\{figure\}/
    # nop
  when /\\end\{figure\}/
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
