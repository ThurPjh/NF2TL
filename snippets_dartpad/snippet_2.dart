// ATIVIDADE NF2 - Fidelização de Usuário na Aplicação
// Exercício 2: Melhorar a tela de Transferência
// Tarefa: Adicionar botões de valores sugeridos (R$ 50, R$ 100, R$ 200, R$ 500)

import 'package:flutter/material.dart';

void main() => runApp(const NeoBankApp());

class NeoBankApp extends StatelessWidget {
  const NeoBankApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF00D4AA))),
        home: const TransferPage(),
      );
}

class TransferPage extends StatefulWidget {
  const TransferPage({super.key});
  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  final _recipientController = TextEditingController();
  final _amountController = TextEditingController();

  // TODO: Crie uma função que preenche o campo de valor quando o aluno clicar em um valor sugerido
  // Exemplo: void _addQuickAmount(double value) { ... }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Nova Transferência")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _recipientController,
              decoration: const InputDecoration(labelText: "Nome ou chave PIX", border: OutlineInputBorder()),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _amountController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Valor", border: OutlineInputBorder()),
            ),
            const SizedBox(height: 25),
            const Text("Valores sugeridos:", style: TextStyle(fontWeight: FontWeight.w500)),
            const SizedBox(height: 10),
            // TODO: Adicione aqui uma Row ou Wrap com botões para R$ 50, R$ 100, R$ 200 e R$ 500
            // Cada botão deve chamar a função _addQuickAmount com o valor correspondente

            const Spacer(),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Transferência simulada")),
                );
              },
              child: const Text("Confirmar Transferência"),
            ),
          ],
        ),
      ),
    );
  }
}
