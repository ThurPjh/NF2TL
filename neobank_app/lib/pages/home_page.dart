import 'package:flutter/material.dart';
import 'transfer_page.dart';
import '../widgets/transaction_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> transactions = [
    {
      "title": "Salário - Empresa XYZ",
      "amount": 4850.00,
      "date": "Hoje",
      "isIncome": true,
    },
    {
      "title": "Transferência para João Silva",
      "amount": 250.00,
      "date": "Ontem",
      "isIncome": false,
    },
    {
      "title": "Netflix",
      "amount": 39.90,
      "date": "03/04",
      "isIncome": false,
    },
    {
      "title": "Freelance - Design",
      "amount": 1200.00,
      "date": "02/04",
      "isIncome": true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final balance = 12487.65;

    return Scaffold(
      appBar: AppBar(
        title: const Text("NeoBank", style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Saldo
            Card(
              elevation: 8,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    colors: [Color(0xFF00D4AA), Color(0xFF00B894)],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Saldo disponível", style: TextStyle(fontSize: 16, color: Colors.white70)),
                    const SizedBox(height: 8),
                    Text(
                      "R\$ ${balance.toStringAsFixed(2)}",
                      style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),

            // Ações rápidas
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildActionButton(Icons.pix, "PIX", Colors.green, () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const TransferPage()),
                  );
                }),
                _buildActionButton(Icons.account_balance, "Depósito", Colors.blue, () {}),
                _buildActionButton(Icons.payment, "Pagar", Colors.orange, () {}),
              ],
            ),

            const SizedBox(height: 32),

            // Últimas transações
            const Text(
              "Últimas movimentações",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            Expanded(
              child: ListView.builder(
                itemCount: transactions.length,
                itemBuilder: (context, index) {
                  final tx = transactions[index];
                  return TransactionItem(
                    title: tx["title"],
                    amount: tx["amount"],
                    date: tx["date"],
                    isIncome: tx["isIncome"],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const TransferPage()),
          );
        },
        child: const Icon(Icons.add),
        backgroundColor: const Color(0xFF00D4AA),
      ),
    );
  }

  Widget _buildActionButton(IconData icon, String label, Color color, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: color, size: 28),
          ),
          const SizedBox(height: 8),
          Text(label, style: const TextStyle(fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
