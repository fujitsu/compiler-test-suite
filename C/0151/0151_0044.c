
















  #include <stdio.h>
  #include "001.h"





void  func01(int int01){
  ichck("mov01_01",10,int01,"return void test"); 
}





int   func02(int int01){
  ichck("mov01_02",20,int01,"return not void test"); 
  return(2);
}





int   func04(int int01){
  return(int01*2);
}







int main()
{



  char *ans="   ";



  header("","void expression test"); 



 {
  void func01();
  func01(10);
 }



 {
  int func02();
  (void)func02(20);  
 }
 {
  int int01=1; 
  int int02=2; 

  int01=((void)int02++,int02);
  ichck("mov01_03",3,int01,"comma void test");  
 }



  header("","void expression test"); 
  }
