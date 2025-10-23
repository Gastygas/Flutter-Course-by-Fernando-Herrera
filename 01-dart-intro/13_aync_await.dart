Future<void> main() async{
  print('Starting program...');

  
  try{
    final value = await httpGet('https://gasu.com/the-best');
    print (value);
  } catch(err){
    print('Here is the error: $err');
  }



  print('End of the program');
}

Future<String> httpGet(String url) async {
  
  await Future.delayed(const Duration(seconds: 2));
  
  throw 'Error from your request';
  
  // return 'Here is your request from the Https';
}