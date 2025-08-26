# Sistemas Digitais

Este repositório reúne exercícios e projetos desenvolvidos em Verilog como parte da disciplina de Sistemas Digitais. Cada pasta "Aula" corresponde a um tópico prático que consolida conceitos de lógica digital. O projeto **Letreiro** encerra o conjunto com a exibição sequencial de caracteres em displays de sete segmentos.

## Projetos

### Aula 1 – Alarme do Farol
Implementação de lógica combinacional que aciona um alarme quando o farol do carro está ligado em condições indevidas, reforçando o uso de operações booleanas básicas.

### Aula 2 – Comparador de 1 bit
Comparador de um bit com saídas de igualdade, maior e menor, introduzindo operadores lógicos de comparação.

### Aula 3 – Comparador de 4 bits
Expansão do comparador para 4 bits utilizando modularização e instâncias do comparador de 1 bit para demonstrar design hierárquico.

### Aula 4 – Somadores
Desenvolvimento de somadores de 1 e 2 bits, abordando conceitos de soma binária e propagação de carry.

### Aula 5 – Decodificador para Display
Conversão de entradas de 4 bits para os segmentos de um display de sete segmentos, aplicando expressões booleanas minimizadas.

### Aula 6 – Somador de 4 bits com Display
Somador de 4 bits que apresenta o resultado em dois displays, integrando os blocos de somadores e decodificadores previamente desenvolvidos.

### Aula 7 – Multiplexador/Demultiplexador
Implementação de um multiplexador 2:1, destacando o roteamento de sinais a partir de um seletor.

### Aula 8 – Decodificador com `case`
Uso da estrutura `case` para decodificar combinações de chaves e acionar um display de sete segmentos.

### Aula 9 – Registrador Deslocador
Registrador deslocador de 4 bits com reset assíncrono e testbench para simulação temporal.

### Aula 10 – Contador Decimal
Contador decimal de dois dígitos com divisores de clock e decodificadores de sete segmentos para exibir unidades e dezenas.

### Letreiro – Exibição Sequencial
Projeto final que utiliza um divisor de clock e múltiplos decodificadores para exibir ciclicamente a palavra "gabriel" em oito displays de sete segmentos.

## Como usar
Cada pasta contém os arquivos do projeto compatíveis com o software Quartus. Abra o `.qpf` correspondente para explorar, sintetizar e simular os circuitos.

