##Parte 1
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

##Parte 2
teste = File.read("day_1_test.txt")

def calibration_round2(str)
    
    #Digits
    first_number = (str =~ /[0-9]/).nil? ? nil : str =~ /[0-9]/
    last_number =  (str =~ /[0-9]/).nil? ? nil : (str.length - (str.reverse =~ /[0-9]/).to_i - 1)

    #Words
    one_end = (str.reverse =~ /eno/).nil? ? nil : (str.length - (str.reverse =~ /eno/) - 1)
    two_end = (str.reverse =~ /owt/).nil? ? nil : (str.length - (str.reverse =~ /owt/) - 1)
    three_end = (str.reverse =~ /eerht/).nil? ? nil : (str.length - (str.reverse =~ /eerht/) - 1)
    four_end = (str.reverse =~ /ruof/).nil? ? nil : (str.length - (str.reverse =~ /ruof/) - 1)
    five_end = (str.reverse =~ /evif/).nil? ? nil : (str.length - (str.reverse =~ /evif/) - 1)
    six_end = (str.reverse =~ /xis/).nil? ? nil : (str.length - (str.reverse =~ /xis/) - 1)
    seven_end = (str.reverse =~ /neves/).nil? ? nil : (str.length - (str.reverse =~ /neves/) - 1)
    eight_end = (str.reverse =~ /thgie/).nil? ? nil : (str.length - (str.reverse =~ /thgie/) - 1)
    nine_end = (str.reverse =~ /enin/).nil? ? nil : (str.length - (str.reverse =~ /enin/) - 1)


    positions = { one: str =~ /one/,
                  one_end: one_end,
                 two: str =~ /two/,
                 two_end: two_end,
                 three: str =~ /three/,
                 three_end:three_end,
                 four: str =~ /four/,
                 four_end: four_end,
                 five: str =~ /five/,
                 five_end: five_end,
                 six: str =~ /six/,
                 six_end: six_end,
                 seven: str =~ /seven/,
                 seven_end:seven_end,
                 eight: str =~ /eight/,
                 eight_end:eight_end,
                 nine: str =~ /nine/,
                 nine_end:nine_end,
                 first_d: first_number,
                 last_d:last_number
                }

    positions.compact!
    key_min, _ = positions.min_by { |key, value| value}
    key_max, _ = positions.max_by { |key, value| value}

    first_d_value = (str =~ /[0-9]/).nil? ?  0 :  str[str =~ /[0-9]/] 
    last_d_value = (str =~ /[0-9]/).nil? ?  0 :  str[(str.length - (str.reverse =~ /[0-9]/).to_i - 1)]

    values = { one: "1",
                one_end: "1",
                two: "2",
                two_end: "2",
                three: "3",
                three_end: "3",
                four: "4",
                four_end: "4",
                five: "5",
                five_end: "5",
                six: "6",
                six_end: "6",
                seven: "7",
                seven_end: "7",
                eight: "8",
                eight_end: "8",
                nine: "9",
                nine_end: "9",
                first_d: first_d_value,
                last_d: last_d_value
            }
    number_str = values[key_min].to_s + values[key_max].to_s
    number_int = number_str.to_i
    number_int  
    

end

calibration_numeber_round2 = texto.each_line.sum { |line| calibration_round2(line) }
puts calibration_numeber_round2
# calibration_numeber_round2 = texto.each_line.sum { |line| calibration_round2(line) }
# puts calibration_numeber_round2
