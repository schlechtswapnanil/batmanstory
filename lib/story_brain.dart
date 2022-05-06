//TODO: Step 6 - import the story.dart file into this file.

//TODO: Step 5 - Create a new class called StoryBrain.

//TODO: Step 7 - Uncomment the lines below to include storyData as a private property in StoryBrain. Hint: You might need to change something in story.dart to make this work.



//TODO: Step 23 - Use the storyNumber property inside getStory(), get     () and getChoice2() so that it gets the updated story and choices rather than always just the first (0th) one.

//TODO: Step 8 - Create a method called getStory() that returns the first   from _storyData.

//TODO  Step 11 - Create a method called getChoice1() that returns the text for the first choice1 from _storyData.

//TODO  Step 12 - Create a method called getChoice2() that returns the text for the first choice2 from _storyData.

//TODO  Step 25 - Change the storyNumber property into a private property so that only story_brain.dart has access to it. You can do this by right clicking on the name (storyNumber) and selecting Refactor -> Rename to make the change across all the places where it's used.

//TODO  Step 16 - Create a property called storyNumber which starts with a value of 0. This will be used to track which story the user is currently viewing.

//TODO  Step 17 - Create a method called nextStory(), it should not have any outputs but it should have 1 input called choiceNumber which will be the choice number (int) made by the user.

//TODO  Step 20 - Download the story plan here  https //drive.google.com/uc?export=download&id=1KU6EghkO9Hf2hRM0756xFHgNaZyGCou3

//TODO  Step 21 - Using the story plan, update nextStory() to change the storyNumber depending on the choice made by the user. e.g. if choiceNumber was equal to 1 and the storyNumber is 0, the storyNumber should become 2.

//TODO  Step 22 - In nextStory() if the storyNumber is equal to 3 or 4 or 5, that means it's the end of the game and it should call a method called restart() that resets the storyNumber to 0.

//TODO  Step 27 - Create a method called buttonShouldBeVisible() which checks to see if storyNumber is 0 or 1 or 2 (when both buttons should show choices) and return true if that is the case, else it should return false.

import 'story.dart';



class StoryBrain{
  List<Story> _storyData = [
      Story(
        'The Mayor has been killed. The Riddler left a note for you which reads \'What does a liar do when he is dead?\' ', 'He Lies Still', 'The Riddle isn\'t important',1),
      Story(
            'The CatWoman and her stealth actions seem supicious. ',
            'At least she\'s honest and she has a cause.',
            'No One Other than Gordon can be trusted.', 1),
      Story(            
          'The DA maybe the Riddler\'s next victim.',
          'The Riddler only attacks the corrupt officials',
          'Send Selina to investigate him', 2
          ),
      Story(            
          'Now You\'re the next target. You, Bruce Wayne. The Riddler sent for a bomb . Alfred is injured.',
          'My Father Was never Corrupt',
          'I need to dig more details', 2),
      Story(
            
          'Gordon and You find his Flash Drive intended for you. He mentions \'el rata alada\'. Poor Spanish of course, what does it signify? ',
          'A bird with wings',
          'This Needs to be dug deeper', 2
          ),
      Story(            
          'El Rata Alada turns out to be a website. It must be an attempt to bring into light one of the ex-informants of the Police. Now who might that be?',
          'Carmine Falcone',
          'The Penguin', 1),
      Story(
            
          'Carmine Falcone speaks out dark secrets about you and Selina. You both break but stay firm.',
          'Hand him over to the police',
          'Deliver The  Bat Brand of Justice', 1),
      Story( 'Carmine Falcone is Sniped in the head. A woman saw someone run down the alley coming out from where the snipe was intended.' ,       
          'It is surely a hoax',
          'Go for him !', 2),
      Story(
            
          'The Riddler is caught. Congratulations !!',
          'The Job is done',
          'The Conspiracy maybe bigger', 2),
      ];
      
    String getStory(int n)
    {
        return _storyData[n-1].storyTitle;
    }

    String getChoice1(int n)
    {
        return _storyData[n-1].choice1;
    }
    String getChoice2(int n)
    {
        return _storyData[n-1].choice2;
    } 
    int getCorrect(int n)
    {
      return _storyData[n-1].correct;
    }

}

