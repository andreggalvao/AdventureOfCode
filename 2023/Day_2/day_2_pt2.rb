dados = File.read("day_2.txt")
dados.gsub! ";", ","


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
        number, color = par.split    #split em "numero", "cor"
        # armazeno o par
        # se o próximo número da cor, for menor, substituo
        # criar uma hash, armazena tudo e depois mantem só os menores?

    end
    linha = linha + 1
end
# puts jogos_quebrados.uniq
# puts jogos_totais
jogos_disponiveis = jogos_totais - jogos_quebrados.uniq
puts jogos_disponiveis.sum()