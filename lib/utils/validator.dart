class Validator {

  static String? isPhone(phone) {
    if (phone.isEmpty) {
      return 'please enter phone';
    }
    else if (phone.length != 10) {
      return 'phone number must be 10 digit';
    }
    return null;
  }
}
