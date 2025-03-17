typedef int** A[2];  
class B {
  short a[2][4];     
};  
struct  C{
  float *** a[10][20]; 
};
class D {
  B ** a[1][100]; 
  B b[30];      
};

#include <stdio.h>
int main(){
  puts("ok");
}
