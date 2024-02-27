import 'package:flutter/material.dart';
import 'package:innovate_2/global/global_var.dart';

class StudentSignup extends StatefulWidget {
  const StudentSignup({super.key});

  @override
  State<StudentSignup> createState() => _StudentSignupState();
}

class _StudentSignupState extends State<StudentSignup> {
  String selectedValue = "FE";
  String selectedDivision = "C1";
  String selectedCourse = "Economics";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Student SignUp',
          style: TextStyle(
              color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
        ),
        flexibleSpace: Container(
          decoration:
              const BoxDecoration(gradient: GlobalVariables.primaryGradient),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 10.0),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                    floatingLabelStyle: TextStyle(color: Color.fromRGBO(31, 68, 255, 0.776)),
                    focusColor: Color.fromRGBO(31, 68, 255, 0.776),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color.fromRGBO(31, 68, 255, 0.776)),
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Student Email',
                    floatingLabelStyle: TextStyle(color: Color.fromRGBO(31, 68, 255, 0.776)),
                    focusColor: Color.fromRGBO(31, 68, 255, 0.776),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color.fromRGBO(31, 68, 255, 0.776)),
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color.fromRGBO(31, 68, 255, 0.776)),
                    ),
                    labelText: 'Password',
                    floatingLabelStyle: TextStyle(color: Color.fromRGBO(31, 68, 255, 0.776)),
                  ),
                ),
                const SizedBox(height: 16.0),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color.fromRGBO(31, 68, 255, 0.776)),
                    ),
                    labelText: 'Confirm Password',
                    floatingLabelStyle: TextStyle(color: Color.fromRGBO(31, 68, 255, 0.776)),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text('Select a year'),
                Container(
                  height: 70,
                  width: 80,
                  child: DropdownButton<String>(
                    elevation: 6,
                    value: selectedValue,
                    items: const <DropdownMenuItem<String>>[
                      DropdownMenuItem(
                        value: 'FE',
                        child: Text("FE"),
                      ),
                      DropdownMenuItem(
                        value: "SE",
                        child: Text("SE"),
                      ),
                      DropdownMenuItem(
                        value: "TE",
                        child: Text("TE"),
                      ),
                      DropdownMenuItem(
                        value: "BE",
                        child: Text("BE"),
                      ),
                    ],
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValue = newValue!;
                        // Perform actions based on the selected value
                      });
                    },
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text('Select a Division'),
                Container(
                  height: 70,
                  width: 80,
                  child: DropdownButton<String>(
                    elevation: 6,
                    value: selectedDivision,
                    items: const <DropdownMenuItem<String>>[
                      DropdownMenuItem(
                        value: "C1",
                        child: Text("C1"),
                      ),
                      DropdownMenuItem(
                        value: "C2",
                        child: Text("C2"),
                      ),
                      DropdownMenuItem(
                        value: "DS1",
                        child: Text("DS1"),
                      ),
                      DropdownMenuItem(
                        value: "Mech1",
                        child: Text("Mech1"),
                      ),
                      DropdownMenuItem(
                        value: "Mech2",
                        child: Text("Mech2"),
                      ),
                    ],
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValue = newValue!;
                        // Perform actions based on the selected value
                      });
                    },
                  ),
                ),
                Text("Select Course"),
                Container(
                  height: 70,
                  child: DropdownButton<String>(
                    elevation: 6,
                    value: selectedCourse,
                    items: const <DropdownMenuItem<String>>[
                      DropdownMenuItem(
                        value: "Economics",
                        child: Text("Economics"),
                      ),
                      DropdownMenuItem(
                        value: "History",
                        child: Text("History"),
                      ),
                      DropdownMenuItem(
                        value: "Computer Science",
                        child: Text("Computer Science"),
                      ),
                      DropdownMenuItem(
                        value: "Political Science",
                        child: Text("Political Science"),
                      ),
                      DropdownMenuItem(
                        value: "Literature",
                        child: Text("Literature"),
                      ),
                    ],
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValue = newValue!;
                        // Perform actions based on the selected value
                      });
                    },
                  ),
                ),
                const SizedBox(height: 45.0),
                ElevatedButton(
                  onPressed: () {
                    // Perform student login logic here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(31, 68, 255, 0.776),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    minimumSize: const Size(350.0, 45.0),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                const SizedBox(height: 45.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already Have an account? ',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (_) => const StudentSignupPage()
                        //     ));
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Color.fromRGBO(31, 68, 255, 0.776),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}