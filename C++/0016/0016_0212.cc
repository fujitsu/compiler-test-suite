#include <exception>
#include <stdio.h>
#include <stdlib.h>
using namespace std;
enum {A,B,C,D,E}cond=A;
template<class T,int I> void temp_func(T (*p)[I]){
  T i=I;
  try {
     i++;
     throw i;
   } 
  catch (char c){
   printf ("NG\n");
  }
  catch (T ii){
   printf("OK $d\n");
  }
}
template<class T> void temp_func2(T x){
  int i=0;
  try {
     i++;
     throw i;
   } 
  catch (int c){
   printf ("OK\n");
  }
  catch (T ii){
   printf("NG\n");
  }
}

void func2(){
   throw; 
}
void user_term(){
  printf("OK term \n");
  exit(0);
}
int main(){
 int  a[2][3];
 short b[2][5];
 switch (cond){
 case A:
   temp_func(a);
   break;
 case B:
   temp_func(b);
   break;
 case C:
   temp_func2(0.0);
   break;
 case D:
   temp_func2((void*)0);
   break;
 case E:
   set_terminate(user_term);
   func2();
   break;
 default:
   break;
 }
}   
