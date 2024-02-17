import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Find a Home',
      theme: ThemeData(

      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _selectedOption = 'Buy';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(


          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            Text("Let's Get Started"
              ,style:TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold
              ) ,),
            Text("Find a Home You'll Love Today",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400
              ),),
            Icon(Icons.home,
              size:100,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.scale(
                  scale:1.2,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        _selectedOption = 'Buy';
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary:
                      _selectedOption == 'Buy' ? Colors.red[300] : Colors.grey[300],
                    ),
                    icon: _selectedOption == 'Buy'
                        ? Icon(Icons.shopping_bag, color: Colors.white)
                        : Icon(Icons.shopping_bag, color: Colors.black),
                    label: Text('Buy',
                      style: TextStyle(
                        color: _selectedOption == 'Buy'
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 25.0),

                Transform.scale(
                  scale: 1.2,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        _selectedOption = 'Rent';
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary:
                      _selectedOption == 'Rent' ? Colors.red[300] : Colors.grey[300],
                    ),
                    icon: _selectedOption == 'Rent'
                  ? Icon(Icons.shopping_bag, color: Colors.white)
            : Icon(Icons.shopping_bag, color: Colors.black),
                    label: Text('Rent', style: TextStyle(
                      color: _selectedOption == 'Rent'
                          ? Colors.white
                          : Colors.black,
                    ),),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            if (_selectedOption == 'Buy') ...[
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Search Location',
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'What\'s Your Price Range?',
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'How many beds?',
                ),
              ),
            ] else if (_selectedOption == 'Rent') ...[

              Container(
                alignment:Alignment.center,
              child: Align(
               alignment: Alignment.centerLeft,

                child: Text('where?',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,

                  ),
                ),
              ),
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration:
                InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  labelText: 'Search Location',
                ),
              ),
              SizedBox(height: 16),
              Container(
              alignment:Alignment.center,
    child: Align(
    alignment: Alignment.centerLeft,
                child: Text('what is your price range??',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,

                  ),),
              ),
              ),
              
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Ex. \$3300',
                ),
              ),
            ],
            SizedBox(height: 15),
            Container(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // handle form submission
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  )
                ),
                child: Text('Skip',
                  style: TextStyle(
                    fontSize: 25
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}