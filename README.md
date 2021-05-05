### Quizzer-App
In this project, the exam application was carried out using json files.
Due to the problems that may occur while loading the json files, first check the files according to whether they are empty or not, then if not again, turn the emulator off and on again.
You can go to the settings page thanks to the button in the drawer section.
I did not function for the buttons in the drawer section because I did not need it, except one, it is the lowest button.
'''dart
    var random_array;
     var distinctIds = [];
     var rand = new Random();
       for (int i = 0; ;) {
       distinctIds.add(rand.nextInt(10));
         random_array = distinctIds.toSet().toList();
         if(random_array.length < 10){
           continue;
         }else{
           break;
         }
       }
     print(random_array);

  // ----- END OF CODE
  // var random_array = [1, 6, 7, 2, 4, 10, 8, 3, 9, 5];


'''
 Flutter Quiz app 
![a](https://user-images.githubusercontent.com/69467096/117134413-3af54780-adae-11eb-8b5b-805a77f5f283.jpeg)
![b](https://user-images.githubusercontent.com/69467096/117134415-3b8dde00-adae-11eb-8428-8ae4f703dcc9.jpeg)
![c](https://user-images.githubusercontent.com/69467096/117134417-3cbf0b00-adae-11eb-83a2-7457fad38935.jpeg)
![d](https://user-images.githubusercontent.com/69467096/117134420-3d57a180-adae-11eb-9e5d-c0fcc7c95320.jpeg)
![e](https://user-images.githubusercontent.com/69467096/117134424-3df03800-adae-11eb-800e-edea5554e722.jpeg)
![f](https://user-images.githubusercontent.com/69467096/117134426-3e88ce80-adae-11eb-897f-3c19278f7e75.jpeg)
