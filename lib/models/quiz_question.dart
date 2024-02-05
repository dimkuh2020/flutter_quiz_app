class QuizQuestion{
  const  QuizQuestion(this.text, this.answers); 

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() { //перемешиваем список и формируем новый список оператором of() - создаёт новый сприсок на основе предыдущего
    final shuffeledList =  List.of(answers);
    shuffeledList.shuffle();  
    return shuffeledList;                         
  }
}