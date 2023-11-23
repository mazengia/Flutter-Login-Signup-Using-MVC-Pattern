class AuthModel {
  Future<bool> login(String username, String password) async {
    if (username == 'example' && password == 'password') {
      return true;
    } else {
      return false;
    }
  }
}
