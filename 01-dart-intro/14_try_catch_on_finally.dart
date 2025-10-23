Future<void> main() async{
  print('Starting program...');

  
  try{
    final value = await httpGet('https://gasu.com/the-best');
    print ( 'Success: $value' );
  } on Exception catch(err) {
    print('An exception: $err');
  } catch(err){
    print('OOP!! Something failed: $err');
  } finally{
    print('Try Catch Ending');
  }



  print('End of the program');
}

Future<String> httpGet(String url) async {
  
  await Future.delayed(const Duration(seconds: 2));
  
  throw new Exception('There is no param in the URL');
  
  //throw 'Error from your request';
  
  // return 'Here is your request from the Https';
}