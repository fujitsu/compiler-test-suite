#include <string.h>
#include  <stdio.h>
void sub2();
void sub1();
int ifun7();
int ifun6();
int ifun5();
int ifun4();
int ifun2();
int ifun1();
int ifun3();

#if INT64 
#define int __int32 
#endif

int global;
int *p_global;
int main()
{
      global = 0x100;
      if( ifun1() != 0 ) puts(" ng : 1 ");
      global = 0x100;
      if( ifun2() != 0 ) puts(" ng : 2 ");
      if( ifun3() != 0 ) puts(" ng : 3 ");
      if( ifun4() != 0 ) puts(" ng : 4 ");
      if( ifun5() != 0 ) puts(" ng : 5 ");
      if( ifun6() != 0 ) puts(" ng : 6 ");
      if( ifun7() != 0 ) puts(" ng : 7 ");
      puts(" test program end ");
}
int ifun1()
{
      global=global+1;
      sub1();
      global=global<<1;
      if( global == 0x200 ) return 0;
      else                  return 1;
}

void sub1()
{
      global=global-1;
}

int ifun2()
{
      int i;
      p_global=&i;
      i=global;
      i=i+1;
      sub2();
      if( i == 0x100 ) return 0;
      else             return 1;
}

void sub2()
{
     *p_global=*p_global-1;
}

int ifun3()
{
      static int i=0;
      if( i==1 ) return 1;
      else {
        i=i+1;
        global=(ifun3()+1)+i+i+1;
      }
      if( global == 5 ) return 0;
      else              return 1;
}

int ifun4()
{
      int a=1,b=2,c;
      int *p1,*p2;
      p1=&a;p2=&b;
      c=*p1;
      if( c != 1 ) return 1;
      p1=&c;
      if( *p1 != 1) return 1;
      *p1=c+1;
      if( c != 2 ) return 1;
      return 0;
}
#define v10

      struct tag {
        int a;
        int b;
        union {
          int c;
          struct tag2 {
            short d;
            short e;
          } f;
        } g;
      };

int ifun5()
{
      struct tag h,i;
      h.a=h.b=h.g.c=h.g.f.d=h.g.f.e=5;
#ifdef v10
      memcpy(&i,&h,sizeof(struct tag));
#else
      i=h;
#endif
      h.g.f.d=h.g.f.e-1;
      i.g.f.d=i.g.f.e+1;
#ifdef v10
      memcpy(&h,&i,sizeof(struct tag));
#else
      h=i;
#endif

#if defined(i386) || defined(__x86_64__) || defined(__aarch64__)
      if( h.g.f.d != 1 ) return 1;
#else
      if( h.g.f.d != 6 ) return 1;
#endif
      return 0;
}
int ifun6()
{
      struct tag h,i;
      h.a=h.b=h.g.c=h.g.f.d=h.g.f.e=5;
      memcpy(&i,&h,sizeof(struct tag));
      i.g.f.d=i.g.f.e+1;
      h.g.f.d=h.g.f.e-1;
      memcpy(&h,&i,sizeof(struct tag));
#if defined(i386) || defined(__x86_64__)  || defined(__aarch64__)
      if( h.g.f.d != 1 ) return 1;
#else
      if( h.g.f.d != 6 ) return 1;
#endif
      return 0;
}
int ifun7()
{
#ifndef v10
      struct tag h,i;
      h.a=h.b=h.g.c=h.g.f.d=h.g.f.e=5;
      i=h;
      i.g.f.d=i.g.f.e+1;
      h.g.f.d=h.g.f.e-1;
      sub7(h);
#endif
      return 0;
}
#ifndef v10
sub7(struct tag a)
{
      if( a.f.g.d != 6 ) puts(" ng : 7 ");
      return ;
}
#endif
#ifdef  v10
int ifun8()
{
      return 0;
}
#else
ifun8()
{
      struct tag h,i,sub8();
      h.a=h.b=h.g.c=h.g.f.d=h.g.f.e=5;
      i=h;
      i.g.f.d=i.g.f.e+1;
      h.g.f.d=h.g.f.e-1;
      h=sub8();
      if( h.g.f.d != 6 ) return 1;
      return 0;
}
sub8()
{
      struct tag a;
      a.g.f.d=6;
      return ;
}
#endif
