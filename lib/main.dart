import 'package:chat_app/Pages/chat_page.dart';
import 'package:chat_app/Pages/login_page.dart';
import 'package:chat_app/Pages/signup_page.dart';
import 'package:chat_app/blocs/bloc/auth_bloc.dart';
// import 'package:chat_app/cubits/auth_cubit/auth_cubit.dart';
import 'package:chat_app/cubits/chat_cubit/chat_cubit.dart';
// import 'package:chat_app/cubits/login_cubit/login_cubit.dart';
// import 'package:chat_app/cubits/signup_cubit/signup_cubit.dart';
import 'package:chat_app/firebase_options.dart';
import 'package:chat_app/helper/simple_bloc_observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Bloc.observer = SimpleBlocObserver();

  runApp(
    const TAKAMUL(),
  );
}

class TAKAMUL extends StatelessWidget {
  const TAKAMUL({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider(
        //   create: (context) => LoginCubit(),
        // ),
        // BlocProvider(
        //   create: (context) => SignupCubit(),
        // ),
        BlocProvider(
          create: (context) => ChatCubit(),
        ),
        // BlocProvider(
        //   create: (context) => AuthCubit(),
        // ),
        BlocProvider(
          create: (context) => AuthBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          SignupPage.id: (context) => const SignupPage(),
          LoginPage.id: (context) => const LoginPage(),
          ChatPage.id: (context) => const ChatPage(),
        },
        initialRoute: LoginPage.id,
      ),
    );
  }
}
