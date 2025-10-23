void main() {
  print('Starting program...');

  httpGet('https://gasu.com/the-best').then((value) {
    print(value);
  }).catchError((err){
    print('Error: $err');
  });

  print('End of the program');
}

Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 1), () {
    
    throw 'Error in the http request';
    
    //return 'Response of the http request';
    
  });
}
