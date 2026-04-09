// ATIVIDADE NF2 - Fidelização de Usuário na Aplicação
// Versão Combinada - Modifique este código
// Tarefas principais:
// 1. Adicionar esconder/mostrar saldo na Home (ícone de olho)
// 2. Melhorar a tela de transferência com valores sugeridos
// 3. Adicionar confirmação com PIN + feedback de sucesso

import 'package:flutter/material.dart';

void main() => runApp(const NeoBankApp());

class NeoBankApp extends StatelessWidget {
  const NeoBankApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF00D4AA))),
        home: const HomePage(),
      );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // TODO 1: Crie variável bool _showBalance = true;

  final double balance = 12487.65;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("NeoBank")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Card(
              elevation: 8,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(colors: [Color(0xFF00D4AA), Color(0xFF00B894)]),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Saldo disponível", style: TextStyle(fontSize: 16, color: Colors.white70)),
                        // TODO 2: Adicione IconButton aqui para alternar _showBalance
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "R\$ ${balance.toStringAsFixed(2)}", // TODO 3: Condicionar com _showBalance
                      style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const TransferPage())),
              child: const Text("Fazer Transferência"),
            ),
          ],
        ),
      ),
    );
  }
}

class TransferPage extends StatefulWidget {
  const TransferPage({super.key});
  @override
  State<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  final _recipientController = TextEditingController();
  final _amountController = TextEditingController();

  // TODO 4: Crie função _addQuickAmount(double value)

  // TODO 5: Crie função _confirmTransfer() com AlertDialog de PIN e SnackBar de sucesso

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Nova Transferência")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(controller: _recipientController, decoration: const InputDecoration(labelText: "Destinatário")),
            const SizedBox(height: 16),
            TextField(controller: _amountController, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: "Valor")),
            const SizedBox(height: 20),
            const Text("Valores sugeridos:"),
            // TODO 6: Adicione botões de valores sugeridos aqui
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                // TODO 7: Chamar _confirmTransfer()
              },
              child: const Text("Confirmar Transferência"),
            ),
          ],
        ),
      ),
    );
  }
}
