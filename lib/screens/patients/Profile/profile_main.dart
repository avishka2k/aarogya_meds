import 'package:aarogya_meds/screens/patients/Profile/profile_edit.dart';
import 'package:aarogya_meds/utils/common.dart';
import 'package:aarogya_meds/widget/appbars/back_dots_appbar.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BackDots(title: "Inbox"),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColors.primary,
                      width: 2.0,
                    ),
                  ),
                  child: const CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.transparent,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 6),
            const Text(
              "Supiri AP",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 6),
            SizedBox(
              height: 40,
              width: 150,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  shape: RoundedRectangleBorder(borderRadius: appBorderRadius),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileEditPage(),
                    ),
                  );
                },
                child: const Center(
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ),
            const Divider(
              color: AppColors.primary,
              height: 30,
              thickness: 2,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "General Information",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                ProfileInfoItem(
                  title: 'Email',
                  value: 'ap@gmail.com',
                ),
                ProfileInfoItem(
                  title: 'Mobile',
                  value: '0772154775',
                ),
                ProfileInfoItem(
                  title: 'Address',
                  value: '495/7, Mulana, Rathnapura',
                ),
                ProfileInfoItem(
                  title: 'Date of Birth',
                  value: '30.01.2000',
                ),
                SizedBox(height: 20),
                Text(
                  "Addition Information",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                ProfileInfoItem(
                  title: 'Gender',
                  value: 'Male',
                ),
                ProfileInfoItem(
                  title: 'Weight',
                  value: '60 KG',
                ),
                ProfileInfoItem(
                  title: 'Height',
                  value: '175 cm',
                ),
                ProfileInfoItem(
                  title: 'Blood Type',
                  value: '0 Possitive',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileInfoItem extends StatelessWidget {
  final String title;
  final String value;

  const ProfileInfoItem({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 150,
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Flexible(
                child: Text(
                  value,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
