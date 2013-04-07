
content = File.read File.join "app", "models", "MageTheAwakening.ruleset"
content.gsub(/    /, "\t")
$output = ""

def a(val)
	$output += val
end

def ind(count)
	count.times {a "\t"}
end

def process_row(prev_indent, row)
	if row =~ /^\s*$/
		return
	end
	process_row_without_blank_checks(prev_indent, row)
end

def process_row_without_blank_checks(prev_indent, row)
	$indent_level = /^\t*/.match(row).to_s.length

	if prev_indent >= $indent_level
		ind(prev_indent)
		a "End\n"
	end
	while prev_indent > $indent_level
		prev_indent -= 1
		ind(prev_indent)
		a "End\n"
	end
	a row

end

$indent_level = -1
content.lines.each do |l|

	process_row($indent_level, l)

end
process_row_without_blank_checks($indent_level, "\n")

puts $output
