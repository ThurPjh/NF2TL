# NeoBank - Atividade Avaliativa NF2

Disciplina: Sistemas de Informação
Avaliação: 2ª Avaliação - Ciclo 2
Tema: NF2 - Fidelização de Usuário na Aplicação
Professor: Me. Luis Vinicius Costa Silva
Turma: Noturno 2º Ciclo – 2º Semestre 2025
Valor da Atividade: 40 pontos

---

## Sobre o Projeto

Este é o projeto base NeoBank, um aplicativo financeiro simples desenvolvido em Flutter.

O app já possui:

* Tela inicial com saldo
* Lista de últimas transações
* Tela de nova transferência

No entanto, os usuários testaram o aplicativo e relataram que:

* Falta feedback claro após realizar ações
* A tela de transferência é um pouco confusa
* Falta sensação de segurança
* O app ainda não transmite sensação de personalização

---

## Objetivo da Atividade

Melhorar a fidelização de usuários aplicando conceitos de UI e UX no NeoBank.

Vocês devem forkar este repositório, realizar melhorias no código e entregar as alterações junto com uma pequena justificativa teórica.

---

## Instruções

### 1. Como começar

1. Faça Fork deste repositório
2. Clone o seu fork para sua máquina:

   ```bash
   git clone https://github.com/SEU-USUARIO/neobank_app.git
   ```
3. Abra o projeto no VS Code ou Android Studio
4. Rode o comando:

   ```bash
   flutter pub get
   ```
5. Execute o app (`flutter run`)

---

### 2. O que você deve fazer (Parte Prática - 25 pontos)

Escolha e implemente exatamente 4 melhorias das opções abaixo:

* [ ] Melhoria 1: Adicionar feedback visual claro após realizar uma transferência (SnackBar ou Dialog de sucesso)
* [ ] Melhoria 2: Melhorar a tela de transferência adicionando valores sugeridos (R$ 50, R$ 100, R$ 200) e máscara de dinheiro
* [ ] Melhoria 3: Criar uma confirmação simples de transferência (tela ou Dialog com PIN 1234)
* [ ] Melhoria 4: Permitir esconder/mostrar o saldo na tela inicial (com ícone de olho)
* [ ] Melhoria 5: Mudar as cores do app e deixar o cartão de saldo mais atraente
* [ ] Melhoria 6: Salvar as novas transações usando `SharedPreferences` (persistência básica)

Dica: Comece pelas melhorias mais simples. Não é necessário fazer todas, apenas 4.

---

### 3. Parte Teórica (15 pontos)

Crie um arquivo chamado `RELATORIO.md` na raiz do projeto e responda as seguintes perguntas:

a) Qual a diferença entre UI e UX? Como as melhorias que você fez impactam cada um deles? (4,0 pts)

b) Explique como o feedback ao usuário e a sensação de segurança ajudam na fidelização de clientes em um app financeiro. (4,0 pts)

c) Por que é importante testar as mudanças com usuários antes de publicar o app? (3,0 pts)

d) Escolha uma das melhorias que você implementou e explique como ela melhora a experiência e a confiança do usuário. (4,0 pts)

---

## Critérios de Avaliação

| Critério                        | Pontos |
| ------------------------------- | ------ |
| Implementação das 4 melhorias   | 20     |
| Código organizado e funcionando | 5      |
| Relatório teórico (qualidade)   | 15     |
| Total                           | 40     |

---

## Prazo de Entrega

* Data: Primeira release no dia 09/04/2026
* Envie o link do seu repositório forkado por e-mail (luisvinicius.professor@uniatenas.edu.br) até a data limite
* O repositório deve estar público

---
