#include <stdio.h>


 
#if LONG64 || defined(__aarch64__) || defined(_LP64)
#define SIZEOF_x     16
#define SIZEOF_dobj  24
#if !defined(__sun)
#define SIZEOF_eobj  24
#else
#define SIZEOF_eobj  32
#endif
#define SIZEOF_gobj  32
#define SIZEOF_h2obj 48
#define SIZEOF_iobj  48
#else
#define SIZEOF_x      8
#define SIZEOF_dobj  12
#define SIZEOF_eobj  16

#if __R12 || __linux__
#define SIZEOF_gobj  16
#define SIZEOF_h2obj 20
#define SIZEOF_iobj  20
#else
#define SIZEOF_gobj  24
#define SIZEOF_h2obj 32
#define SIZEOF_iobj  32
#endif
#endif

struct A{
   union X {
        int i;
        long obj2;
    } obj3;
   int obj4;
}x;

struct B {
  char a;
} bobj;

union C {
  short i;
  long double cc;
#if LONG_DOUBLE_8
  long double dummy[2];
#endif
}cobj;

class D : public A{
 public:
   char d;
 }dobj;

class E : public D{
 public:
   short e;
 }eobj;

class F :public B {
 public:
  char f;
}fobj;


class G {
 public:
  long double g1;
#if LONG_DOUBLE_8
  long double dummy;
  int dummy2;
#endif
  char g2;
}gobj;

class H {
 public:
  union {
    short uh1;
    char uh2;
  };
  char aa;
  union HU {
   long double uh3;
#if LONG_DOUBLE_8
   long double dummy[2];
#endif
   short xxx;
  };
  char g2;
}hobj;

class H2 {
 public:
  union {
    short uh1;  
    char uh2;
  }uhobj;       
  char aa;      
  union HU {
   long double uh3; 
#if LONG_DOUBLE_8
   long double dummy[3];
#endif
   short xxx;
  }uh2obj;      
  char g2;     
}h2obj;

class I {
 public:
    short uh1;  
    char aa;      
    long double uh3; 
#if LONG_DOUBLE_8
    long double dummy[2];
#endif
    char g2;     
}iobj;

int main(){
if ( sizeof(struct A) != sizeof(x)
   || sizeof(x) != SIZEOF_x  )
  { 
    printf("error\n");
    printf("size of A = %d\n",sizeof(struct A)); 
    printf("size of x = %d\n",sizeof(x));    

  } 
if ( (int*)(&(x.obj3.i)) != (int*)(&(x.obj3.obj2)))
  {
    printf("error\n");
    printf("addr i = %x\n",&(x.obj3.i));     
    printf("addr obj2 = %x\n",&(x.obj3.obj2));  

  }
if ( sizeof(struct B) != sizeof(bobj)
   || sizeof(bobj) != 1  )
  {
    printf("error\n");
    printf("size of B = %d\n",sizeof(struct B)); 
    printf("size bobj = %x\n",sizeof(bobj));

  }
if ( sizeof(union C) != sizeof(cobj)
#if __R12 || (__linux__ && !__aarch64__ && !__x86_64__ )
   || sizeof(cobj) != 12  )
#else
   || sizeof(cobj) != 16  )
#endif
  {
    printf("error\n");
    printf("size of C = %d\n",sizeof(union C)); 
    printf("size cobj = %d\n",sizeof(cobj));

  }

if ( sizeof(class D) != sizeof(dobj)
   || sizeof(dobj) != SIZEOF_dobj  )
  {
    printf("error\n");
    printf("size of D = %d\n",sizeof(class D )); 
    printf("size dobj = %d\n",sizeof(dobj));

  }

if ( sizeof(class E) != sizeof(eobj)
   || sizeof(eobj) != SIZEOF_eobj  )
  {
    printf("error\n");
    printf("size of E = %d\n",sizeof(class E )); 
    printf("size eobj = %d\n",sizeof(eobj));

  }  

if ( sizeof(class F) != sizeof(fobj)
   || sizeof(fobj) != 2  )
  {
    printf("error\n");
    printf("size of F = %d\n",sizeof(class F )); 
    printf("size fobj = %d\n",sizeof(fobj));

  }

if ( sizeof(class G) != sizeof(gobj)
   || sizeof(gobj) != SIZEOF_gobj  )
  {
    printf("error\n");
    printf("size of G = %d\n",sizeof(class G )); 
    printf("size gobj = %d\n",sizeof(gobj));

  }
if ( sizeof(class H) != sizeof(hobj)
   || sizeof(hobj) != 4  )
  {
    printf("error\n");
    printf("size of H = %d\n",sizeof(class H )); 
    printf("size hobj = %d\n",sizeof(hobj));

  }
if ( sizeof(class H2) != sizeof(h2obj)
   || sizeof(h2obj) != SIZEOF_h2obj  )
  {
    printf("error\n");
    printf("size of H2 = %d\n",sizeof(class H2 )); 
    printf("size h2obj = %d\n",sizeof(h2obj));

  }
if ( sizeof(class I) != sizeof(iobj)
   || sizeof(iobj) != SIZEOF_iobj  )
  {
    printf("error\n");
    printf("size of I = %d\n",sizeof(class I )); 
    printf("size iobj = %d\n",sizeof(iobj));

  }
printf("ok\n");
}
