#include <exception>
#include <stdio.h>
#include <stdlib.h>
enum {A,B,C,D}cond=A;int i=0;
using namespace std;
void func1(){
  try {    
     try {
     }
     catch (char*){}
     try {
       i++;
       throw i;
     }
     catch (int *){}
   }
  catch (char){
  }
  catch (int x){
    i=x--;
    printf("OK\n");
  }
}
void func2(){
  try {
   i++; 
  }
  catch(int){}
  catch(char i){
  }
  try {
   i++; 
   throw (float)0.0;
  }
  catch(float){
    printf(" OK \n");
  }
  catch(double){}
}
void func3(){
  try {
   i++;
   throw (int)0;
  }
  catch (float){}
  catch (int **){}
}
void func4(){
  printf("terminate:OK\n");
  exit(0);
}
int main(){
  set_terminate(func4);
  if (cond==A)
    func1();
  else if (cond==B)
    func2();
  else if (cond==C)
    func3();
  else
    printf("ERROR\n");
}
