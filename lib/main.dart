import 'package:flutter/material.dart';
import 'story_brain.dart';


void main() => runApp(Destini());

class Destini extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

class EndPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/end.jpg'),
            fit: BoxFit.cover,
          ),
      ),
      child: Container(
        child:SafeArea(
          child: Row(children: <Widget>[
              Expanded(
                child: Center(
                  child: Text(
                  "",
                  style: TextStyle(
                    fontFamily:'Helvetica',
                    fontSize: 40.0,
                    color:Colors.white,
                  ),
                ),
                ),
              ),
            ]
          ), 
        ),
      ),
    );
  }
}

//TODO: Step 9 - Create a new storyBrain object from the StoryBrain class.

StoryBrain storyBrain= StoryBrain();

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override

  int number=1;

  void update(a, n)
  {
    if (a==storyBrain.getCorrect(n)) {
      //correct answer
        if(number==9)
           Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EndPage()),
            );
        else{
          setState(() {
            number++;
        });
        }
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor:Colors.black,   
          title: Center(
            child: Text("Batman Riddles",
            style: TextStyle(
              fontFamily:'Poppins',
              fontWeight: FontWeight.w900,
              fontSize:25.0,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/riddle$number.jpg',),
            opacity: 0.2,
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    //TODO: Step 10 - use the storyBrain to get the first story title and display it in this Text Widget.
                    storyBrain.getStory(number),
                    style: TextStyle(
                      fontSize: 25.0,
                      fontFamily: 'Poppins',
                      fontWeight:FontWeight.w600,
                      color:Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child:ElevatedButton(
                  onPressed: () {
                    update(1,number);
                  },
                    style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius:BorderRadius.circular(20),
                      ),
                    )
                  ),
                  child: Text(
                    storyBrain.getChoice1(number),
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 2,
                //TODO: Step 26 - Use a Flutter Visibility Widget to wrap this FlatButton.
                //TODO: Step 28 - Set the "visible" property of the Visibility Widget to equal the output from the buttonShouldBeVisible() method in the storyBrain.
                child: ElevatedButton(
                  onPressed: () {
                    update(2,number);
                    //Choice 1 made by user.
                    //TODO: Step 18 - Call the nextStory() method from storyBrain and pass the number 1 as the choice made by the user.
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.teal),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius:BorderRadius.circular(20),
                      )
                    )
                  ),
                  child: Text(
                    //TODO: Step 13 - Use the storyBrain to get the text for choice 1.
                    storyBrain.getChoice2(number),
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
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

