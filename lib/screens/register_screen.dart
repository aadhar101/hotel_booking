import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController dobController = TextEditingController();
  String? selectedGender;

  Future<void> _selectDOB() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime(2000),
      firstDate: DateTime(1950),
      lastDate: DateTime(2030),
    );

    if (picked != null) {
      setState(() {
        dobController.text = "${picked.year}-${picked.month}-${picked.day}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20),

              // Logo at top
              Center(
                child: Image.asset(
                  'assets/logo.png',
                  width: 120,
                  height: 120,
                ),
              ),
              SizedBox(height: 20),

              Center(
                child: Text(
                  "Hotel Booking",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange[800],
                  ),
                ),
              ),
              SizedBox(height: 30),

              // Full Name
              _buildInputField(
                hintText: "Enter Your Full Name",
                labelText: "Full Name",
              ),
              SizedBox(height: 20),

              // DOB
              TextField(
                controller: dobController,
                readOnly: true,
                decoration: InputDecoration(
                  labelText: "Date of Birth",
                  hintText: "mm-dd-yyyy",
                  suffixIcon: IconButton(
                    icon: Icon(Icons.calendar_month),
                    onPressed: () => _selectDOB(),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 15, vertical: 15),
                ),
              ),
              SizedBox(height: 20),

              // Gender
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: "Gender",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 15, vertical: 15),
                ),
                items: [
                  DropdownMenuItem(value: "Male", child: Text("Male")),
                  DropdownMenuItem(value: "Female", child: Text("Female")),
                  DropdownMenuItem(value: "Others", child: Text("Others")),
                ],
                onChanged: (value) {
                  selectedGender = value;
                },
              ),
              SizedBox(height: 20),

              // Phone
              _buildInputField(
                hintText: "Enter Phone Number",
                labelText: "Phone Number",
                keyboard: TextInputType.number,
              ),
              SizedBox(height: 20),

              // Password
              _buildInputField(
                hintText: "Enter Password",
                labelText: "Create Password",
                isPassword: true,
              ),
              SizedBox(height: 20),

              // Confirm Password
              _buildInputField(
                hintText: "Confirm Password",
                labelText: "Confirm Password",
                isPassword: true,
              ),
              SizedBox(height: 30),

              // Register Button (highlighted and bigger)
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => HomeScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange[800], // Same color as login
                  padding: EdgeInsets.symmetric(vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 5,
                ),
                child: Text(
                  'Register',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),

              SizedBox(height: 20),

              // Already have account
              Center(
                child: Text(
                  "Already have an account?",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(height: 10),

              // Sign In button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => LoginScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange[800], // Same color
                  padding: EdgeInsets.symmetric(vertical: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 3,
                ),
                child: Text(
                  'Sign In',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputField({
    required String labelText,
    required String hintText,
    bool isPassword = false,
    TextInputType keyboard = TextInputType.text,
  }) {
    return TextField(
      obscureText: isPassword,
      keyboardType: keyboard,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      ),
    );
  }
}
