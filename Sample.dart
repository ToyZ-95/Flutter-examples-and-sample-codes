/********************************************** async await  ************************************************************************/

import "dart:async";

void main() {
  print('Program start');
 pintFileContent();
  print('Program end');
  
}


void pintFileContent() async{
  
   String fileContent = await downloadFile();
  print('The content of file is $fileContent');
  
}

 Future <String> downloadFile(){
  
  Future<String> result = Future.delayed(Duration(seconds:6),(){
    return "My secret file content";
  });
  
  return result;
  
}

/**********************************************************************************************************************/

/********************************************** Future API  ************************************************************************/

import "dart:async";

void main() {
  print('Program start');
 pintFileContent();
  print('Program end');
  
}


void pintFileContent() {
  
  Future<String> fileContent =  downloadFile();
  
  fileContent.then((resultedString) {
    print('The content of file is $resultedString');
  });
  
}

 Future <String> downloadFile(){
  
  Future<String> result = Future.delayed(Duration(seconds:6),(){
    return "My secret file content";
  });
  
  return result;
  
}

/**********************************************************************************************************************/
