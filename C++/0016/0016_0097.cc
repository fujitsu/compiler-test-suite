class A {
 char (*ap)(int);  
 short *(*bp)(char); 
 float &(*cp)() ;    
 int   *(*dp)(int);  
};
class B {
  A  (*ap)(int) ; 
  A *(*bp)();     
};

#include <stdio.h>
int main(){
  puts("ok");
}
