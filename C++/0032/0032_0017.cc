#include <stdio.h>
class ozObj;
class OZObj;
class A;
class B;

ozObj *B_A_OZObj_ozObj_p=0;
A     *B_A_p = 0; 
OZObj *B_A_OZObj_p = 0;
B     *B_p = 0; 


class ozObj {
 public:
  int head;
  int j;
  ozObj() {  head = 0; 
        B_A_OZObj_ozObj_p=this;
      
  } 
};

class OZObj : virtual public ozObj {
public:
    OZObj() {
        B_A_OZObj_p=this;
      
    }
};

class A : public OZObj {
 public:
  int b;
  A() { 
   B_A_p = this; 
    
   }
};

class B {
  public:
  A   b;
  int c;

    B() {  B_p = this; 
    c = 0; 
    }
};

#if LONG64 || defined(__aarch64__) || defined(__x86_64__)
typedef long INT;
#else
typedef int INT;
#endif
int main()
{
  B* b;
  b = new B;
  int s;  
  int *p;
  p = &(b->c);
  s = sizeof(B);
  
#if LONG64 || defined(__aarch64__) || defined(__x86_64__)
  if ( s == 32 && ((INT)p-(INT)b) == 24){
#else
  if ( s == 20 && ((INT)p-(INT)b) == 16){
#endif
   printf("ok\n");
  } else {
   printf("s ==%d\n",s);
   printf("p-b ==%d\n",((INT)p-(INT)b));
  }
}
















