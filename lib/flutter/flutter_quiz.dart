import '../inquiries.dart';

class FlutterQuiz {
  int _inquiryStage = 0;

  final List<Inquiries> _inquiryBase = [
    Inquiries('Some cats are actually allergic to humans', true),
    Inquiries('You can lead a cow down stairs but not up stairs.', false),
    Inquiries(
        'Approximately one quarter of human bones are in the feet.', true),
    Inquiries('A slug\'s blood is green.', true),
    Inquiries('Buzz Aldrin\'s mother\'s maiden name was "Moon".', true),
    Inquiries('It is illegal to pee in the Ocean in Portugal.', true),
    Inquiries(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
  ];

  void otherInquiry() {
    if (_inquiryStage < _inquiryBase.length - 1) {
      _inquiryStage++;
    }
  }

  String findInquiryLetters() {
    return _inquiryBase[_inquiryStage].inquiryLetters;
  }

  bool findInquiryReply() {
    return _inquiryBase[_inquiryStage].inquiryReply;
  }

  bool theEnd() {
    if (_inquiryStage >= _inquiryBase.length - 1) {
      //print('Correct');
      return true;
    } else {
      return false;
    }
  }

  void startOver() {
    _inquiryStage = 0;
  }
}