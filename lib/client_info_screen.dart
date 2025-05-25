import 'package:flutter/material.dart';

class ClientInfoScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('بيانات العميل'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // ✅ صورة الشعار
              SizedBox(height: 50),
              Center(
                child: Image.asset('assets/logo.png', width: 200),
              ),
              SizedBox(height: 30),

              // ✅ حقل الاسم
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'الاسم الكامل',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15),

              // ✅ حقل الجوال
              TextField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'رقم الجوال',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 25),

              // ✅ زر التالي
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // تابع التخزين أو الانتقال هنا
                  },
                  child: Text('التالي'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
