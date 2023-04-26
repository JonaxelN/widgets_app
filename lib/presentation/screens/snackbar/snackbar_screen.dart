import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const routeName = "snackbarScreen";
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    var snackbar = SnackBar(
      content: const Text('Hola Mundo'),
      duration: const Duration(seconds: 2),
      action: SnackBarAction(
        label: 'Ok',
        onPressed: () {},
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: const Text('Are you sure?'),
          content: const Text(
              'Cupidatat ut duis excepteur consectetur sunt dolore commodo cillum dolor cillum ullamco exercitation dolore. Consequat qui laborum irure proident duis enim qui. Eiusmod nisi aute qui ipsum aute culpa exercitation deserunt cupidatat culpa ut eiusmod cillum adipisicing. Adipisicing dolore nostrud velit minim eu tempor aliqua dolor. Voluptate ipsum adipisicing est ut. Deserunt id laborum pariatur ex fugiat aliquip sit. Nostrud velit et aliqua qui officia voluptate incididunt mollit.'),
          actions: [
            TextButton(
                onPressed: () => context.pop(), child: const Text('Cancelar')),
            FilledButton(
                onPressed: () => context.pop(), child: const Text('Aceptar'))
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(
                      context: context,
                      children: [const Text('Párrafo de prueba')]);
                },
                child: const Text('Licencias usadas')),
            FilledButton.tonal(
                onPressed: () => openDialog(context),
                child: const Text('Mostrar diálogo de pantalla'))
          ],
        ),
      ),
    );
  }
}
