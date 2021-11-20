import 'package:proyecto_final/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_final/text_box.dart';

class ModifyContact extends StatefulWidget {
  final Client _client;
  ModifyContact(this._client);
  @override
  State<StatefulWidget> createState() => _ModifyContact();
}

class _ModifyContact extends State<ModifyContact> {
  late TextEditingController controllerName;
  late TextEditingController controllerSurname;
  late TextEditingController controllerFechaIngreso;
  late TextEditingController controllerFechaNacimiento;
  late TextEditingController controllerSalario;
  late TextEditingController controllerDireccion;

  @override
  void initState() {
    Client c = widget._client;
    controllerName = new TextEditingController(text: c.name);
    controllerSurname = new TextEditingController(text: c.surname);
    controllerFechaIngreso = new TextEditingController(text: c.fechaIngreso);
    controllerFechaNacimiento = new TextEditingController(text: c.fechaNacimiento);
    controllerSalario = new TextEditingController(text: c.salario);
    controllerDireccion = new TextEditingController(text: c.direccion);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Visualizar y Editar Persona"),
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


                if (name.isNotEmpty && surname.isNotEmpty && fechaNacimiento.isNotEmpty && fechaNacimiento.isNotEmpty && salario.isNotEmpty && direccion.isNotEmpty) {
                  Navigator.pop(context,
                      new Client(name: name, surname: surname, fechaIngreso: fechaIngreso, fechaNacimiento: fechaNacimiento, salario: salario, direccion: direccion));
                }
              },
              child: Text("Guardar Persona")),
        ],
      ),
    );
  }
}