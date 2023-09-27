class quizQuestion{
  const quizQuestion(this.text,this.answers);
  final String text;
  final List<String>answers;

  List<String> getShuffle(){
     final newList=List.of(answers);
     newList.shuffle();
     return newList;
  }
}