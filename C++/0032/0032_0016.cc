#include <stdio.h>
class ozObj;
class OZObj;
class A;
class B;

ozObj *B_A_OZObj_ozObj_p=0;
ozObj *B_OZObj_ozObj_p=0;
A     *B_A_p = 0; 
OZObj *B_OZObj_p=0;
OZObj *B_A_OZObj_p = 0;
B     *B_p = 0; 
int ozObj_count = 0;
int OZObj_count = 0;

class ozObj {
 public:
  int head;
  int j;
  ozObj() {  head = 0; 
      if(ozObj_count == 0 ){
        B_OZObj_ozObj_p=this;
      } else {
        B_A_OZObj_ozObj_p=this;
      }
      ozObj_count++;
      
  } 
};

class OZObj : virtual public ozObj {
public:
    OZObj() {
      if(OZObj_count == 0 ){
        B_OZObj_p=this;
      } else {
        B_A_OZObj_p=this;
      }
      OZObj_count++;
      
    }
};

class A : public OZObj {
 public:
  int b;
  A() { 
   B_A_p = this; 
    
   }
};

class B : public OZObj {
  A   b;
  int c;
  public:
    B() {  B_p = this; 
    c = 0; 
    }
};

#if LONG64 ||__x86_64__ || defined(__aarch64__)
typedef long INT;
#else
typedef int INT;
#endif
#line 63
int main()
{
  B* b;
  b = new B;

#if LONG64 || __x86_64__ || defined(__aarch64__)
  if ( (((INT) B_OZObj_ozObj_p - (INT)B_p) == 36 )
     &&( ((INT)B_OZObj_ozObj_p -  (INT)B_A_OZObj_ozObj_p) == 16)
     &&( ((INT)B_A_OZObj_ozObj_p - (INT)B_A_p) == 12)){
#else
  if ( (((INT) B_OZObj_ozObj_p - (INT)B_p) == 24 )
     &&( ((INT)B_OZObj_ozObj_p -  (INT)B_A_OZObj_ozObj_p) == 12)
     &&( ((INT)B_A_OZObj_ozObj_p - (INT)B_A_p) == 8)){
#endif
   printf("ok\n");
  } else {
   printf("B_OZObj_ozObj_p - B_p=%d\n",(INT)B_OZObj_ozObj_p - (INT)(B_p));
   printf("B_OZObj_ozObj_p - B_A_OZObj_ozObj_p=%d\n",(INT)B_OZObj_ozObj_p - (INT)B_A_OZObj_ozObj_p);
   printf("B_A_OZObj_ozObj_p - B_A_p=%d\n",(INT)B_A_OZObj_ozObj_p - (INT)B_A_p);

  printf("B_OZObj_ozObj_p=%d\nB_OZObj_p=%d\nB_A_OZObj_ozObj_p=%d\nB_A_OZObj_p=%d\nB_A_p=%d\nB_p=%d\n",B_OZObj_ozObj_p,B_OZObj_p,B_A_OZObj_ozObj_p,B_A_OZObj_p,B_A_p,B_p);
  }
}












