class LoginBloc {

  bool checkLogin(String email,String pass){
    if(email.isEmpty){
      return false;
    }else if(email == 'demo@gmail.com' && pass == 'Demo@123')
    {
      return true;
    }
    return false;
  }
  bool checkOTPValid(int otp){
    if(otp == 1234){
      return true;
    }
    return false;
  }
}