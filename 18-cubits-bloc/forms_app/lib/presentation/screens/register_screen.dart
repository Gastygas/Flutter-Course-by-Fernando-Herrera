import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forms_app/presentation/blocs/register/register_cubit.dart';
import 'package:forms_app/presentation/widgets/widgets.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('New User')),
      body: BlocProvider(
        create: (context) => RegisterCubit(),
        child: _RegisterView(),
      ),
    );
  }
}

class _RegisterView extends StatelessWidget {
  const _RegisterView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const FlutterLogo(size: 100),
              const SizedBox(height: 20),
              _RegisterForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class _RegisterForm extends StatefulWidget {
  const _RegisterForm();

  @override
  State<_RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<_RegisterForm> {
  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // String username = '';
  // String email = '';
  // String password = '';

  @override
  Widget build(BuildContext context) {
    final registerCubit = context.watch<RegisterCubit>();
    final username = registerCubit.state.username;
    final email = registerCubit.state.email;
    final password = registerCubit.state.password;

    return Form(
      // key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(
            label: 'Username',
            onChanged: registerCubit.usernameChanged,
            errorMessage: username.errorMessage,
            // validatior: (value) {
            //   if (value == null || value.isEmpty) return 'Field required';
            //   if (value.trim().isEmpty) return 'Field required';
            //   if (value.length < 4) return 'More than 4 characters please';
            //   return null;
            // },
          ),

          const SizedBox(height: 20),

          CustomTextFormField(
            label: 'Email',
            onChanged: registerCubit.emailChanged,
            errorMessage: email.errorMessage,
            // validatior: (value) {
            //   if (value == null || value.isEmpty) return 'Field required';
            //   if (value.trim().isEmpty) return 'Field required';
            //   final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
            //   if (!emailRegExp.hasMatch(value)) return 'Enter a valid email';
            //   return null;
            // },
          ),

          const SizedBox(height: 10),

          CustomTextFormField(
            label: 'Password',
            obscure: true,
            onChanged: registerCubit.passwordChanged,
            errorMessage: password.errorMessage,
            // validatior: (value) {
            //   if (value == null || value.isEmpty) return 'Field required';
            //   if (value.trim().isEmpty) return 'Field required';
            //   if (value.length < 4) return 'More than 6 characters please';
            //   return null;
            // },
          ),

          const SizedBox(height: 10),

          FilledButton.tonalIcon(
            onPressed: () {
              // final isValid = _formKey.currentState!.validate();
              // if (!isValid) return;

              registerCubit.onSubmit();
            },
            icon: Icon(Icons.save),
            label: Text('Create user'),
          ),
        ],
      ),
    );
  }
}
