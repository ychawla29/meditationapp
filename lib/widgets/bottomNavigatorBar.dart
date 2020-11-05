part of widgets;

class BottomNavigationWidget extends StatefulWidget {
  final int selectedIndex;

  const BottomNavigationWidget({Key key, this.selectedIndex}) : super(key: key);
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: _selectedIndex,
      onTap: (index) {
        if (index == 0) {
          if (_selectedIndex != 0) {
            Navigator.pushNamed(context, "/");
            setState(() {
              _selectedIndex = index;
            });
          }
        } else if (index == 1) {
          if (_selectedIndex != 1) {
            Navigator.pushNamed(context, "/lessons");
            setState(() {
              _selectedIndex = index;
            });
          }
        } else if (index == 3) {
          if (_selectedIndex != 3) {
            Navigator.pushNamed(context, "/profile");
            setState(() {
              _selectedIndex = index;
            });
          }
        }
      },
      items: [
        BottomNavigationBarItem(
          label: "Home",
          icon: Image.asset("assets/icons/home.png"),
          activeIcon: Image.asset("assets/icons/homeActive.png"),
        ),
        BottomNavigationBarItem(
          label: "Lessons",
          icon: Image.asset("assets/icons/lessons.png"),
          activeIcon: Image.asset("assets/icons/lessonsActive.png"),
        ),
        BottomNavigationBarItem(
          label: "Meditation",
          icon: Image.asset("assets/icons/meditation.png"),
          activeIcon: Image.asset("assets/icons/meditation.png"),
        ),
        BottomNavigationBarItem(
          label: "Profile",
          icon: Image.asset("assets/icons/profile.png"),
          activeIcon: Image.asset("assets/icons/profileActive.png"),
        ),
      ],
    );
  }
}
