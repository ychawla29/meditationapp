part of widgets;

class Title extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const Title({Key key, this.title = "", this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          GestureDetector(
            onTap: onPressed,
            child: Text(
              "See All",
              style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.w700,
              ),
            ),
          )
        ],
      ),
    );
  }
}
