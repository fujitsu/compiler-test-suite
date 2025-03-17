#include <stdio.h>
class ozObj;
class OZObj;
class A;
class B;

ozObj *B_A_OZObj_ozObj_p1=0;
ozObj *B_A_OZObj_ozObj_p2=0;
A     *B_A_p1 = 0; 
A     *B_A_p2 = 0; 
OZObj *B_A_OZObj_p1=0;
OZObj *B_A_OZObj_p2= 0;
B     *B_p = 0; 
int ozObj_count = 0;
int OZObj_count = 0;
int A_count = 0;
class ozObj {
 public:
  int head;
  int j;
  ozObj() {  head = 0; 
      if(ozObj_count == 0 ){
        B_A_OZObj_ozObj_p1=this;
      } else {
        head = 100;
        B_A_OZObj_ozObj_p2=this;
      }
      ozObj_count++;

  } 
};

class OZObj : virtual public ozObj {
public:
    OZObj() {
      if(OZObj_count == 0 ){
        B_A_OZObj_p1=this;
      } else {
        B_A_OZObj_p2=this;
      }
      OZObj_count++;

    }
};

class X { public: int a[2];};

class A : public OZObj {
 public:
  int b;
  A() { 
      if(A_count == 0 ){
        B_A_p1=this;
      } else {
        B_A_p2=this;
      }
      A_count++;


   }
};

class B : public X {
  public:
  int a;
  double b;
  A   c;
  char d;
  A   e;

    B() {  B_p = this; 

    }
};

#if LONG64 || __x86_64__ ||  defined(__aarch64__)
typedef long INT;
#else
typedef int INT;
#endif
int main()
{
  B* b;
  b = new B;
  int s_b = sizeof(B);
  
  

#if LONG64 || __x86_64__ || defined(__aarch64__)
if ( s_b ==80
  && ((void*)B_A_p1 == (void *)((INT)b+24))
  && ((void*)B_A_p2 == (void *)((INT)b+56))
  && ((void*)B_A_OZObj_ozObj_p1 == (void*)((INT)B_A_p1+12))
  && ((void*)B_A_OZObj_ozObj_p2 == (void*)((INT)B_A_p2+12))
  && (((INT)B_A_OZObj_ozObj_p2 -(INT)B_A_OZObj_ozObj_p1)== 32) 
  && (b->e.head == 100 )){
#else
#if __linux__
if ( s_b ==56
  && ((void*)B_A_p1 == (void *)((INT)b+20))
  && ((void*)B_A_p2 == (void *)((INT)b+40))
#else
if ( s_b ==64
  && ((void*)B_A_p1 == (void *)((INT)b+24))
  && ((void*)B_A_p2 == (void *)((INT)b+44))
#endif
  && ((void*)B_A_OZObj_ozObj_p1 == (void*)((INT)B_A_p1+8))
  && ((void*)B_A_OZObj_ozObj_p2 == (void*)((INT)B_A_p2+8))
  && (((INT)B_A_OZObj_ozObj_p2 -(INT)B_A_OZObj_ozObj_p1)== 20) 
  && (b->e.head == 100 )){
#endif
   printf("ok\n");
  } else {
   printf("ng\n");
   printf("%d\n", s_b);
   printf("%d\n", b);
   printf("B_A_p1=%d\n",(void *)((INT)b+24));
   printf("B_A_p2=%d\n",(void *)((INT)b+44));
   printf("B_A_OZObj_ozObj_p1=%d\n",(void*)((INT)B_A_p1+8));
   printf("B_A_OZObj_ozObj_p2=%d\n",(void*)((INT)B_A_p2+8));
   printf("%d\n",(((INT)B_A_OZObj_ozObj_p2 -(INT)B_A_OZObj_ozObj_p1)));
   printf("%d\n",b->e.head);

  }

}












