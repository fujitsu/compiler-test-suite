short x;
class A {
 int func1(){return 0;} 
 int * func2(){return 0;}    
 short & func3(){return x;}  
 char ** func4(){return 0;};    
}; 




A obj;
struct B {
 A fa(){ return obj;}                
 A & fc(){return obj;}              
 A ** fd(){return 0;}             
}; 
#include <stdio.h>
int main(){
  puts("ok");
}
