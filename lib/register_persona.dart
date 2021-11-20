import 'package:proyecto_final/my_home_page.dart';
import 'package:proyecto_final/text_box.dart';
import 'package:flutter/material.dart';

class RegisterContact extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RegisterContact();
}

class _RegisterContact extends State<RegisterContact> {
  late TextEditingController controllerName;
  late TextEditingController controllerSurname;
  late TextEditingController controllerFechaIngreso;
  late TextEditingController controllerFechaNacimiento;
  late TextEditingController controllerSalario;
  late TextEditingController controllerDireccion;

  @override
  void initState() {
    controllerName = new TextEditingController();
    controllerSurname = new TextEditingController();
    controllerFechaIngreso = new TextEditingController();
    controllerFechaNacimiento = new TextEditingController();
    controllerSalario = new TextEditingController();
    controllerDireccion = new TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Registrar Persona"),
        ),
        body: ListView(
          children: [
            TextBox(controllerName, "Nombre"),
            TextBox(controllerSurname, "Apellido"),
            TextBox(controllerFechaIngreso, "Fecha Ingreso"),
            TextBox(controllerFechaNacimiento, "Fecha Nacimiento"),
            TextBox(controllerSalario, "Salario"),
            TextBox(controllerDireccion, "Direccion"),
            ElevatedButton(
                onPressed: () {
                  String name = controllerName.text;
                  String surname = controllerSurname.text;
                  String fechaIngreso = controllerFechaIngreso.text;
                  String fechaNacimiento = controllerFechaNacimiento.text;
                  String salario = controllerSalario.text;
                  String direccion = controllerDireccion.text;

                  if (name.isNotEmpty &&
                      surname.isNotEmpty &&
                      fechaIngreso.isNotEmpty &&
                      fechaNacimiento.isNotEmpty &&
                      salario.isNotEmpty &&
                      direccion.isNotEmpty) {
                    Navigator.pop(context,
                        new Client(name: name, surname: surname, fechaIngreso: fechaIngreso, fechaNacimiento: fechaNacimiento, salario: salario, direccion: direccion));
                  }
                },
                child: Text("Guardar Persona")),
          ],
        ));
  }
}