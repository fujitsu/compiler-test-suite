class A {
 typedef int T1;    
 typedef void * T2; 
 typedef char & T3;  
 typedef float ***T4; 
 };

class  B {
 typedef A TT1;          
 typedef A& TT2;         
 typedef int (**TT3)[20]; 
};
#include <stdio.h>
int main(){
  puts("ok");
}
