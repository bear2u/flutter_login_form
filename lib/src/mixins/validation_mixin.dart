class ValidationMixIn {
  String validateEmail(String value) {
        if(!value.contains('@')) {
          return 'Please enter a valid email';
        }

        return null;
      }
  String validatePassword(String value) {
        if(value.length < 4) {
          return 'Please input more than 4 character';
        }

        return null;
      }
}