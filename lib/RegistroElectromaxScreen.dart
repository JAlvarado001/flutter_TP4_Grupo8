// Formulario de Registro de Clientes
//Grupo 8  - TP4

import 'package:flutter/material.dart';

class RegistroElectromaxScreen extends StatefulWidget {
  @override
  _RegistroElectromaxScreenState createState() =>
      _RegistroElectromaxScreenState();
}

class _RegistroElectromaxScreenState extends State<RegistroElectromaxScreen> {
  final TextEditingController cedulaCtrl = TextEditingController();
  final TextEditingController nombreCtrl = TextEditingController();
  final TextEditingController direccionCtrl = TextEditingController();
  final TextEditingController telefonoCtrl = TextEditingController();
  final TextEditingController ciudadCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Registro de Cliente"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 20),

            Icon(Icons.person_add, size: 70, color: Colors.blueAccent),
            SizedBox(height: 10),

            Text(
              "Crear Cuenta en Electromax",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),

            // --------- CÉDULA ---------
            TextField(
              controller: cedulaCtrl,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Cédula",
                prefixIcon: Icon(Icons.badge),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 20),

            // --------- NOMBRE ---------
            TextField(
              controller: nombreCtrl,
              decoration: InputDecoration(
                labelText: "Nombre completo",
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 20),

            // --------- DIRECCIÓN ---------
            TextField(
              controller: direccionCtrl,
              decoration: InputDecoration(
                labelText: "Dirección",
                prefixIcon: Icon(Icons.home),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 20),

            // --------- TELÉFONO ---------
            TextField(
              controller: telefonoCtrl,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: "Teléfono",
                prefixIcon: Icon(Icons.phone),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 20),

            // --------- CIUDAD ---------
            TextField(
              controller: ciudadCtrl,
              decoration: InputDecoration(
                labelText: "Ciudad",
                prefixIcon: Icon(Icons.location_city),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            SizedBox(height: 30),

            // --------- BOTÓN REGISTRAR ---------
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  // Aquí podrías agregar lógica para guardar el cliente en BD
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Cliente registrado correctamente"),
                      backgroundColor: Colors.green,
                    ),
                  );

                  Navigator.pop(context); // vuelve al login
                },
                child: Text(
                  "Registrar Cliente",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),

            SizedBox(height: 20),

            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "¿Ya tienes cuenta? Inicia sesión",
                style: TextStyle(color: Colors.blueAccent),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
