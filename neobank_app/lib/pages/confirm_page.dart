import 'package:flutter/material.dart';

class ConfirmPage extends StatelessWidget {
  final String recipient;
  final double amount;

  const ConfirmPage({super.key, required this.recipient, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Confirmar")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.check_circle, size: 100, color: Colors.green),
            const SizedBox(height: 20),
            Text("Transferência confirmada!", style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 10),
            Text("Para: $recipient"),
            Text("Valor: R\$ ${amount.toStringAsFixed(2)}"),
          ],
        ),
      ),
    );
  }
}
