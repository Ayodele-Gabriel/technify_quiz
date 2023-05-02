import '../inquiries.dart';

class HTMLQuiz {
  int _inquiryStage = 0;

  final List<Inquiries> _inquiryBase = [
    Inquiries(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Inquiries(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Inquiries(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Inquiries('Google was originally called "Backrub".', true),
    Inquiries(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Inquiries(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
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
      print('Correct');
      return true;
    } else {
      return false;
    }
  }

  void startOver() {
    _inquiryStage = 0;
  }
}