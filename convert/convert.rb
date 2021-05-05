kai = ["一","二","三","四","五","六","七","八","九"]
kai_num = 0
q_num = 0
subq_num = 0

while line = gets
  if line=~/\{\\Large (.*)\}/
    puts "# 第#{kai[kai_num]}回 #{$1}"
    kai_num += 1
    q_num = 0
    subq_num = 0
  elsif line=~/\\question\{(.*)/
    q_num += 1
    puts "## #{q_num}."
    puts
    puts "#{$1}"
    subq_num = 0
  elsif line=~/\\subquestion\{(.*)/
    subq_num += 1
    puts "### (#{subq_num})"
    puts
    puts "#{$1}"
  elsif line=~/^}\r$/
  elsif line=~/^{\\huge/
  elsif line=~/\\begin{center}/
  elsif line=~/\\end{center}/
  elsif line=~/\\newpage/
  elsif line=~/^%/
  elsif line=~/\\end{document}/

  else
    puts line.chomp
  end
end