import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Cairo is the capital of Egypt?', true),
    Question('Can you have a driving licence before 18?', false),
    Question('The color of the sky is blue?.', true),
    Question('All Muslims are Arabs?', false),
    Question('Allah in the sky?', true),
    Question('Muslims do not believe in giving to the poor?', false),
    Question('Madinah is where the Hajj performed?', false),
    Question('There are 5 pillars of faith in Islam?', true),
    Question('Muslims must pray once a day?', false),
    Question('Ibraahiim was the last prophet?', false),
    Question('Islam means peace?', true),
    Question('Salaat is the second pillar of Islam?', true),
    Question('Muharram is the name of the first month of the Islamic calendar?',
        true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
