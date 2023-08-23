Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
const Text.rich(
TextSpan(
text: "My",
children: [
TextSpan(
text: "Flutter",
style: TextStyle(
fontSize: 50.0,
fontWeight: FontWeight.bold,
),
),
TextSpan(
text: "App",
style: TextStyle(
fontSize: 30.0,
color: Colors.blue,
),
),
],
),
),
Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
const Icon(
Icons.numbers,
size: 15,
color: Colors.blue,
),
Text(
"Random value is: ${getNumber()}",
),
IconButton(
splashRadius: 20.0,
splashColor: Colors.lightGreenAccent,
padding: const EdgeInsets.all(0),
onPressed: () {
print("Random value is: ${getNumber()}");
},
icon: const Icon(Icons.restart_alt, color: Colors.lightGreen),
)
],
),
Image.asset("images/im2.jpg"),
],
),
)
