import 'package:flutter/material.dart';
import 'package:homepage/widgets/card.dart';
import 'package:homepage/widgets/content_container.dart';
import 'package:homepage/widgets/custome_app_bar.dart';
import 'package:homepage/widgets/image_container.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl, // دعم اللغة العربية
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: ListView(
            children: [
              CustomeAppBar(),
              walletAndVoteBox(),
              SizedBox(height: 10),
              ImageContainer(),
              SizedBox(height: 10),
              contentContainer(),
              Image.asset('lib/assets/Frame 1984079138.png'),
              SizedBox(height: 10),
              Image.asset('lib/assets/Main Container.png'),
              SizedBox(height: 10),
              Container(
                color: Colors.blue,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: Image.asset('lib/assets/last_Container.png'),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomNavBar(
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
            // هنا ممكن تضيف التنقل بين الصفحات مستقبلاً
          },
        ),
      ),
    );
  }
}

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNavBar({
    required this.currentIndex,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
        BottomNavigationBarItem(icon: Icon(Icons.assignment_turned_in_outlined), label: 'الانجازات'),
        BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'التوقعات'),
        BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: 'الطلبات'),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'حسابي'),
      ],
    );
  }
}
