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
}