import 'package:flut_os/Shared/Variaveis.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Save{
  load() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    User.name = prefs.getString("name") ?? "Guest";
    User.password = prefs.getString("password") ?? "User";
    User.newUser = prefs.getBool("newUser") ?? true;
    Variaveis.ImageBackground = prefs.getString("Wallpaper") ?? "assets/image.jpg";
  }
  save() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', User.name);
    await prefs.setString('password', User.password);
    await prefs.setBool("newUser", User.newUser);
    await prefs.setString("Wallpaper", Variaveis.ImageBackground);
  }
}