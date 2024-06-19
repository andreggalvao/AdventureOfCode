dados = File.read("day_2.txt")
dados.gsub! ";", ","

#posso usar a hash como simbolo ou string
# se eu usar como simbolo, tenho que converter o a string da cor para symbolo, se usar como string vai direto.
limites = {
    "red" => 12,
    "green" => 13,
    "blue" => 14
}

#Capturar 1 número + 1 espaço + 1 cor
# \d+  \s  \[a-zA-Z]+  ->> /\d+\s\[a-zA-Z]+/
regex = /\d+\s[a-zA-Z]+/
linha = 1
jogos_totais =(1..100).to_a
jogos_quebrados = []
dados.each_line do |line|
    # puts line
    matches = line.scan(regex) #scan vai escanear e me entregar os pares que batem com meu regex
    matches.each do |par|
        number, color = par.split    #split de padroes
        limit = limites[color]
        if number.to_i > limit
            # puts "O jogo #{linha} quebra as regras "
            jogos_quebrados << linha
        end
    end
    linha = linha + 1
end
# puts jogos_quebrados.uniq
# puts jogos_totais
jogos_disponiveis = jogos_totais - jogos_quebrados.uniq
puts jogos_disponiveis.sum()