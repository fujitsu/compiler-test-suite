







#include "000.h"
long y=0;
class TEST1{
 public:
 int x;
 int func1(int i){
   i=x;
   x++;
   y=x;
   i=y; 
   return i;
 }
};
template<class T> class TEST2{
 public:
 char x;
 void func2(char c,T t){
   c=t;
   x=c;
   x++;
   t=x;
   y=t;
 }
};
void func3(long x){
 x=y; 
 x++;
 y++;
 x=y;
}
extern int func_so(int);
#include <stdio.h>
int main(){
 TEST1 obj1;
 TEST2<char> obj2;
   
 
 obj1.func1(10);
 obj2.func2(1,2);
 func3(100);
 func_inc(1,2,3);
 func_so(10);
 {
   int x,z;
   x=0;z=0;
   { 
     int x,z;
     x=10;
     z=x;
     x++;z++;
   }    
   x++,z++;
 }

 puts("ok");
}
