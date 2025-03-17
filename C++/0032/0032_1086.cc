#include <stdio.h>
static int dtor_count=0,ctor_count=0;
class X { public: int i; 
  X(){ ctor_count++; }
  ~X(){ dtor_count++; }
};
void f(){
 X a[4]; 
 return;
} 
void ff(){
 X a[4]; 

} 


int main(){
 f();
 ff();
 if (dtor_count == 8 && ctor_count == 8){
   printf("ok\n");
 } else {
   printf("ng\n");
 }
return  0;
}

