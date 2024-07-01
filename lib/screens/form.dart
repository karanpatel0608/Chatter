import 'package:flutter/material.dart';
import 'submitted.dart';
class ReportPage extends StatelessWidget{
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _header(context),
              _inputField(context),
              _submit(context),
            ],
          ),
        ),
      ),
    );
  }

  _header(context) {
    return const Column(
      children: [
        Text(
          "Report a Crime.",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  _inputField(context) {
    return Column(

      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          decoration: InputDecoration(
              hintText: "Full name",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none
              ),
              fillColor: Colors.purple.withOpacity(0.1),
              filled: true,
              prefixIcon: const Icon(Icons.person)),
        ),
        const SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            hintText: "Phone no.",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none),
            fillColor: Colors.purple.withOpacity(0.1),
            filled: true,
            prefixIcon: const Icon(Icons.phone),
          ),
          obscureText: true,
        ),

        TextField(
          decoration: InputDecoration(
            hintText: "Report level",
            border: OutlineInputBorder(

                borderSide: BorderSide.none),
            fillColor: Colors.purple.withOpacity(0.1),
            filled: true,
            prefixIcon: const Icon(Icons.crisis_alert),
          ),
          obscureText: true,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "Report Description",
            border: OutlineInputBorder(
                borderSide: BorderSide.none),
            fillColor: Colors.purple.withOpacity(0.1),
            filled: true,
            prefixIcon: const Icon(Icons.text_fields),
          ),
          obscureText: true,
        ),
        const SizedBox(height: 10),
        // ElevatedButton(
        //   onPressed: () {
        //   },
        //   style: ElevatedButton.styleFrom(
        //     shape: const StadiumBorder(),
        //     padding: const EdgeInsets.symmetric(vertical: 16),
        //     backgroundColor: Colors.purple,
        //   ),
        //   child: const Text(
        //     "Login",
        //     style: TextStyle(fontSize: 20),
        //   ),
        // )
      ],
    );
  }

  _submit(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
            onPressed: () {

              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SubmitedPage()));
            },
            child: const Text("Submit", style: TextStyle(color: Colors.purple),)
        )
      ],
    );
  }
}