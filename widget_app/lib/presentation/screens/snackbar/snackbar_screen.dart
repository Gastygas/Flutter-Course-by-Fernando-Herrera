import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('I am the snackbar'),
      action: SnackBarAction(label: 'Ok!', onPressed: (){}),
      duration: const Duration(seconds: 2),
      );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context){
    showDialog(
     context: context,
     barrierDismissible: false,
     builder: (context) => AlertDialog(
      title: const Text('Are you sure in read it?'),
      content: const Text('Aliquip est laborum pariatur ea. Consequat enim elit aliqua consectetur in. Deserunt est non anim ullamco qui. Sunt do do anim consequat Lorem in ipsum qui Lorem in qui elit mollit. Incididunt aute adipisicing do aliquip dolor Lorem commodo enim amet est aliquip amet reprehenderit et.'),
      actions: [
        TextButton(onPressed: () => context.pop(), child: const Text('Cancel')), //Thanks go router we can do it .pop()

        FilledButton(onPressed: () => context.pop(), child: const Text('Accept')),
      ],
     ),
     );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Snackbars and dialogs')),

      body: Center(
        child: Column(
          children: [
            FilledButton.tonal(
              onPressed: (){
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Incididunt anim ea veniam irure magna ea Lorem laboris laboris est ipsum. Voluptate incididunt elit adipisicing cupidatat ad. Eu irure proident ut qui ipsum reprehenderit. Deserunt id esse enim pariatur culpa pariatur magna fugiat nostrud Lorem anim culpa ex ad. Cillum ex amet nulla minim irure nisi labore aliquip commodo magna proident pariatur id. Velit minim exercitation eiusmod qui minim nisi eu nulla id officia mollit duis dolore. Magna nulla irure quis laboris Lorem duis voluptate.')
                  ],
                  );
              }, 
              child: const Text('Licences used')
              ),
            FilledButton.tonal(
              onPressed: () => openDialog(context), 
              child: const Text('Show  my own dialog')
              ),
            FilledButton.tonal(
              onPressed: (){}, 
              child: const Text('Am I a button?')
              ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Show snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
