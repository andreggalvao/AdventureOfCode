dados = File.read("day_2.txt")
dados.gsub! ";", ","


#Capturar 1 número + 1 espaço + 1 cor
# \d+  \s  \[a-zA-Z]+  ->> /\d+\s\[a-zA-Z]+/
regex = /\d+\s[a-zA-Z]+/
linha = 1
somatoria = 0
dados.each_line do |line|
    # puts line
    matches = line.scan(regex) #scan vai escanear e me entregar os pares que batem com meu regex
    valores_maximos_por_cor   = {}
    matches.each do |par|
        
        number, color = par.split    #split em "numero", "cor"
        # armazeno o par
        # se o próximo número da cor, for menor, substituo

        number = number.to_i
        # puts "A cor é #{color}, o numero eh #{number}"
        if valores_maximos_por_cor [color].nil? || number >  valores_maximos_por_cor [color] #se for vazio eu preencho se for maior eu substituo
            valores_maximos_por_cor [color] = number
        end
    end
    somatoria += valores_maximos_por_cor .values.inject(:*)
    # puts min_values_by_color
    linha += 1
end
puts somatoria

