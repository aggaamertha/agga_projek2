// main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medical Inventory',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[100],
      ),
      home: const DashboardLayout(),
    );
  }
}

class DashboardLayout extends StatelessWidget {
  const DashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Sidebar
          Container(
            width: 250,
            color: Colors.white,
            child: Column(
              children: [
                const SizedBox(height: 20),
                // Logo or App Name
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Medical Inventory',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Menu Items
                _buildMenuItem(Icons.dashboard, 'Dashboard'),
                _buildMenuItem(Icons.person, 'Patient'),
                _buildMenuItem(Icons.medical_services, 'Products & Services'),
                _buildMenuItem(Icons.medication, 'Medicine'),
                _buildMenuItem(Icons.science, 'Lab Test'),
                _buildMenuItem(Icons.support_agent, 'Service'),
                _buildMenuItem(Icons.description, 'Diagnosis'),
                _buildMenuItem(Icons.folder, 'Profile'),
                _buildMenuItem(Icons.settings, 'Setting'),
                const Spacer(),
                _buildMenuItem(Icons.logout, 'Logout'),
                const SizedBox(height: 20),
              ],
            ),
          ),
          // Main Content Area
          Expanded(
            child: Column(
              children: [
                // Header
                Container(
                  height: 60,
                  color: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      const Text(
                        'Data Obat',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      // Search Bar
                      Container(
                        width: 300,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'Search obat',
                            prefixIcon: Icon(Icons.search),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 10,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Content Area
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Add Button
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.add),
                          label: const Text('Add'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 20),
                        // Medicine List
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: ListView(
                              children: const [
                                _MedicineListItem('Nama Obat'),
                                _MedicineListItem('ACETYL CYSTEINE DRY SYR (NYTEX)'),
                                _MedicineListItem('ACETYLCYSTEINE TAB 200MG (ALEXIN)'),
                                _MedicineListItem('Acetyl Glutathe'),
                                _MedicineListItem('ACICLOVIR CREAM (ACIFAR) 5GR'),
                                _MedicineListItem('AMLODIPINE TAB 10MG (ZEVASK)'),
                                _MedicineListItem('AMLODIPINE TAB 5MG (ZEVASK)'),
                                _MedicineListItem('AMOXICILIN SYR (YUSIMOX FORTE)'),
                                _MedicineListItem('ATORVASTATIN TAB (NEO PROSTOP)'),
                                _MedicineListItem('AZITHROMYCIN CAPS 500MG'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.grey[600]),
      title: Text(
        title,
        style: TextStyle(color: Colors.grey[800]),
      ),
      onTap: () {},
    );
  }
}

class _MedicineListItem extends StatelessWidget {
  final String name;

  const _MedicineListItem(this.name);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey[200]!)),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(
              value: false,
              onChanged: (value) {},
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              name,
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}