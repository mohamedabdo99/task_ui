class Validation {
  String? emailValidation(String? value) {
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = RegExp(p);
    if (value!.trim().isEmpty) {
      return ('اداخل البريد الأكتروني');
    } else if (!regExp.hasMatch(value.trim())) {
      return ('بريد إلكتروني غير صحيح');
    } else {
      return null;
    }
  }

  String? passwordValidation(value) {
    if (value!.isEmpty || value.length < 8) {
      return ('كلمة المرور حجمها صغير');
    } else {
      return null;
    }
  }

  String? confirmPasswordValidation(value, String password) {
    if (value!.isEmpty || value.length < 8) {
      return ('كلمة المرور حجمها صغير');
    } else if (password != value) {
      return ('كلمة المرور غير متطابقة');
    } else {
      return null;
    }
  }

  String? defaultValidation(value) {
    if (value!.isEmpty) {
      return ("هذا الحقل مطلوب");
    } else {
      return null;
    }
  }
}
