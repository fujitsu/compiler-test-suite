#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func10();
int func9();
int func8();
int func7();
int func6();
int func5();
int func4();
int func3();
int func2();
int func1();
int main()
{
  printf(" START\n");
  func1();
  func2();
  func3();
  func4();
  func5();
  func6();
  func7();
  func8();
  func9();
  func10();
  printf(" END    \n");
exit (0);
}
int func1(){
  static int  i=1;
  static char c=2;
  static short int s=3;
  static unsigned int ui=4;
  static unsigned char uc=5;
  static unsigned short int us=6;
   int  ia;
   char ca;
   short int sa;
   unsigned int uia;
   unsigned char uca;
   unsigned short int usa;
 
  ia=i;ca=c;sa=s;uia=ui;uca=uc;usa=us;
  if (ia==1 && ca==2 && sa==3 && uia==4 && uca==5 && usa==6)
    printf(" FUNC1 OK\n");
  else
    printf(" FUNC1 NG\n");
}
int func2(){
  static int  i=1;
  static char c=2;
  static short int s=3;
  static unsigned int ui=4;
  static unsigned char uc=5;
  static unsigned short int us=6;
   int  ia;
   char ca;
   short int sa;
   unsigned int uia;
   unsigned char uca;
   unsigned short int usa;
 
  ia=us;ca=uc;sa=ui;uia=s;uca=c;usa=i;
  if (ia==6 && ca==5 && sa==4 && uia==3 && uca==2 && usa==1)
    printf(" FUNC2 OK\n");
  else
    printf(" FUNC2 NG\n");
}
int func3(){
  static int  i[2]={0,1};
  static char c[3]={0,0,2};
  static short int s=3;
  static unsigned int ui=4;
  static unsigned char uc=5;
  static unsigned short int us[4]={0,0,0,6};
  static short int *sp=&s;
  static unsigned int *uip=&ui;
  static unsigned char *ucp=&uc;
   int  ia;
   char ca;
   short int sa;
   unsigned int uia;
   unsigned char uca;
   unsigned short int usa;
 
  ia=i[i[1]];ca=c[2];sa=*sp;uia=*uip;uca=*ucp;usa=us[s];
  if (ia==1 && ca==2 && sa==3 && uia==4 && uca==5 && usa==6)
    printf(" FUNC3 OK\n");
  else
    printf(" FUNC3 NG\n");
}
int func4(){
  static int  i[2]={0,1};
  static char c[3]={0,0,2};
  static short int s=3;
  static unsigned int ui=4;
  static unsigned char uc=5;
  static unsigned short int us[4]={0,0,0,6};
  static short int *sp=&s;
  static unsigned int *uip=&ui;
  static unsigned char *ucp=&uc;
   int  ia;
   char ca;
   short int sa;
   unsigned int uia;
   unsigned char uca;
   unsigned short int usa;
 
  uca=i[i[1]];usa=c[2];uia=*sp;ca=*uip;sa=*ucp;ia=us[s];
  if (ia==6 && ca==4 && sa==5 && uia==3 && uca==1 && usa==2)
    printf(" FUNC4 OK\n");
  else
    printf(" FUNC4 NG\n");
}
int func5(){
  static int  i[2]={0,1};
  static char c[3]={0,0,2};
  static short int s=3;
  static unsigned int ui=4;
  static unsigned char uc=5;
  static unsigned short int us[4]={0,0,0,6};
  static int  ia;
  static char ca;
  static unsigned short int usa;
  static short int *sp=&s;
  static unsigned int *uip=&ui;
  static unsigned char *ucp=&uc;
  static int  *iap=&ia;
  static char *cap=&ca;
  static unsigned short int *usap=&usa;
   short int sa[3];
   unsigned int uia[4];
   unsigned char uca[5];
 
  *iap=us[3];*(cap+i[1]-1)=*(ucp+ui-ui);sa[ui-4]=*(uip+s-3);
  uia[uc-3]=*(sp+ui-4);uca[s]=i[s-s+1];*(usap+ui-ui)=c[2];
  if (*iap==6 && *cap==5 && sa[0]==4 && uia[2]==3 &&
      uca[3]==1 && *usap==2)
    printf(" FUNC5 OK\n");
  else
    printf(" FUNC5 NG\n");
}
int func6(){
  static struct stag {
         unsigned int  a:3;
         unsigned char b:4;
               }x={1,2};
  struct stag *sp,sa[3],s;
  sp=&s;
  s.a=3;(*sp).b=x.b;sa[2].a=(*sp).b;
  if (s.a==3 && (*sp).b==2 && sa[2].a==2)
    printf(" FUNC6 OK\n");
  else
    printf(" FUNC6 NG\n");
}
int func7(){
  static int i=1;
  struct stag  { int a; char b; }x,*p;
  x.a=i+i;x.b=i+i+i;
  if (x.a==2 && x.b==3)
    printf(" FUNC7 OK\n");
  else
    printf(" FUNC7 NG\n");
}
int func8(){
  static int i=1;
  struct stag  { int a; char b; }x,*p;
  p=&x;
  x.a=i?i:i;p->b=i&&i;
  if (x.a==1 && x.b==1)
    printf(" FUNC8 OK\n");
  else
    printf(" FUNC8 NG\n");
}
int func9(){
  static int i=1;
  struct stag  { int a; char b; }x,*p;
  p=&x;
  x.b=(char)i;p->a=i+i;
  if (x.a==2 && (int)x.b==1)
    printf(" FUNC9 OK\n");
  else
    printf(" FUNC9 NG\n");
}
int func10(){
  struct stag  { int a; char b; }x;
  x.b=1;
  x.a=1234567;
  if (x.a==1234567 && x.b==1)
    printf(" FUNC10 OK\n");
  else
    printf(" FUNC10 NG\n");
}
