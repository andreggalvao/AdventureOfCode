

texto = File.read("day_1.txt")

def calibration(str)
    first_digit  = str[/\d/]
    last_digit  = str.reverse[/\d/]
    number_str = first_digit + last_digit
    number_int = number_str.to_i
    number_int
end

calibration_number = texto.each_line.sum { |line| calibration(line)}

puts calibration_number


#    str =~ /[0-9]/ -> Trás a posição do primeiro dígito
#    str[/\d/] -> Trás o primeiro dígito