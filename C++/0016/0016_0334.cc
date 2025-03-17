




#include <stdio.h>
class A {
public:
  int a;
  char b;
  static int st_a;
  void        f();
  void        f1();
  int         f2(){printf("a::f2\n"); return 1;}
  int         f3(int a){printf("a::f3i\n"); return 0;}
  int         f3(short a){printf("a::f3s\n"); return 0;}
  int         f3(char a){printf("a::f3c\n"); return 0;}
  virtual int f4(){printf("a::f2\n"); return 1;}
};
class B: public A {
public:
  void f();
  int a;
};
void A::f1(){printf("A::f1\n");}
void A::f(){ printf("A::f\n"); }
void B::f(){ printf("B::f\n"); }

int (A::*mg)()     = &A::f2;
int (A::*mgg)(int) = &A::f3;
int A::st_a = 1;
int g_a     = 1;

int         A::*mem_p     = &A::a;
static char A::*mem_p2    = &A::b;
void       (A::*mem_f1)() = &A::f1;
int        (A::*mem_f2)() = &A::f2;
int         B::*mem_g     = &B::a;

int A::* (*pmem) = &mem_p;

void f(){printf("f\n");}

static void g(){
  int  A::*ml1 = &A::a;
  char A::*ml2 = &A::b;
  int  B::*ml3 = &B::a;
  A aobj_l;
  B bobj_l;
  aobj_l.a = 10;
  aobj_l.b = 20;
  bobj_l.a = 1;
#if !defined (__EDG_IA64_ABI)
  printf("mem_g = 16\n");
#else 
  printf("mem_g = %d\n",mem_g);
#endif 
  printf("bobj_l.*mem_g = %d\n",bobj_l.*mem_g);
  printf("g() aobj_l.*ml1 = %d\n",aobj_l.*ml1);
  printf("g() aobj_l.*ml2 = %d\n",aobj_l.*ml2);
  printf("g() bobj_l.*ml3 = %d\n",bobj_l.*ml3);
}
int main(){
  int  A::*ml1 = &A::a;
  char A::*ml2 = &A::b;
  int  B::*ml3 = &B::a;
  A aobj_l;
  B bobj_l;
  aobj_l.f();
  f();
  bobj_l.f3(1);
  printf("%d\n",A::st_a);
  printf("%d\n",aobj_l.f2());
  g();
  aobj_l.a = 10;
  aobj_l.b = 20;
  bobj_l.a = 1;
  printf("aobj_l.*mem_p = %d\n",aobj_l.*mem_p);
  (aobj_l.*mem_f1)();
  (aobj_l.*mem_f2)();
  printf("main aobj_l.*ml1 = %d\n",aobj_l.*ml1);
  printf("main aobj_l.*ml2 = %d\n",aobj_l.*ml2);
  printf("main bobj_l.*ml3 = %d\n",bobj_l.*ml3);
  if (aobj_l.*mem_p) {
      int  A::*ml4 = &A::a;
      char A::*ml5 = &A::b;
      int  B::*ml6 = &B::a;
      printf("aobj_l.*ml4 = %d\n",aobj_l.*ml4);
      printf("aobj_l.*ml5 = %d\n",aobj_l.*ml5);
      printf("bobj_l.*ml6 = %d\n",bobj_l.*ml6);
  }
  return 0;
}
