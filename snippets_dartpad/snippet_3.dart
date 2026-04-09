// ATIVIDADE NF2 - Fidelização de Usuário na Aplicação
// Exercício 3: Adicionar sensação de segurança
// Tarefa: Implementar confirmação com PIN antes de fazer a transferência + feedback de sucesso

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

  // TODO: Crie o método _confirmTransfer() que:
  // 1. Verifica se os campos estão preenchidos
  // 2. Mostra um AlertDialog pedindo o PIN (1234 para teste)
  // 3. Se o PIN estiver correto, mostra SnackBar de sucesso ("Transferência realizada com sucesso!")

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
              decoration: const InputDecoration(labelText: "Destinatário", border: OutlineInputBorder()),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _amountController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Valor (R\$)", border: OutlineInputBorder()),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // TODO: Chame aqui o método _confirmTransfer()
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Botão pressionado - implementar confirmação")),
                );
              },
              style: ElevatedButton.styleFrom(padding: const EdgeInsets.symmetric(vertical: 16)),
              child: const Text("Realizar Transferência"),
            ),
          ],
        ),
      ),
    );
  }
}
