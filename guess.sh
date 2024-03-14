# Gerar número aleatório entre 1 e 100
n=$(( $RANDOM % 100 + 1 ))

# Número da tentativa
i=1

echo "Estou a pensar num número entre 1 e 100. Quer adivinhar?"
echo ""

# Continuar o loop até o utilizador adivinhar
while :; do
    echo "Introduza a sua tentativa #$i (0 para desistir):"
    read guess

    # Se acertar ou desistir sair do loop
    if [[ $guess == $n  ||  $guess == 0 ]]; then
        break
    fi

    if (( guess < n )); then
        echo "muito pequeno"
    else
        echo "muito grande"
    fi

    i=$(( i + 1 ))
done

if((guess == 0)); then
    echo "Desististe com $i tentativas, FRACO!!!"
else
    if (( $i < 5)); then 
        echo "Parabéns, acertaste em $i tentativas"
    else
        echo "Parabéns, acertaste em $i tentativas, FRACO!!!"
    fi 
fi 