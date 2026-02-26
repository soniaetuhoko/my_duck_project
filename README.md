A screenshot of the final UI embedded
https://docs.google.com/document/d/1TIVdoIAAKaEjQ_uRRBwb1tGhywHesdo307D8gIp24Gk/edit?usp=sharing

**Widget App: My RubberDigitalDuck**
It uses State Management to listen to your problems. You type a question into the text field, and the Duck 'analyzes' it. Now, it’s a Simple Logic Model—it doesn’t need a whole paragraph of questions. 


**key Feautures**
-StatefuWidget & setState: I useda StatefulWidget because the Ui is reactive. When the user types a problem and clicks the button, setState tels Fluttr to rebuild the speech bubble with the nes answer.

-TextEditingController: This is the listener. It captures the string from the TextField so the logic can process what the user is complaining about.

-List<String> & Random(): The Duck's brain is a collection of strings. I imported dart:math to use the Random().nextInt function, which picks a random index from the list to stimulate a natural conversation.

-Future.delayed: I added an async delay to simulate thinking' time.


**How to run the App** 
-Flutter run -d chrome 

**When the app starts running- type in a short sentence and paste to see the duck's interactions.



