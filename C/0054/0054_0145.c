#include<stdio.h>
int func7();
int func6();
int func5();
int func4();
int func3();
int func2();
int func1();
 

int main()
{
  printf("01 START\n");
  func1();
  func2();
  func3();
  func4();
  func5();
  func6();
  func7();
  printf("01 END    \n");
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

  ia=~i;ca=~c;sa=~s;uia=~ui;uca=~uc;usa=~us;
  if (ia==-2 && ca==(char)-3 && sa==-4 && uia==(unsigned int)-5 &&
      uca==(unsigned char)-6 && usa==(unsigned short int)-7)
    printf("01 FUNC1 OK\n");
  else
    printf("01 FUNC1 NG\n");
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

  ia=~us;ca=~uc;sa=~ui;uia=~s;uca=~c;usa=~i;
  if (ia==-7 && ca==(char)-6 && sa==-5 &&
      uia==(unsigned int)-4 && uca==(unsigned char)-3 &&
      usa==(unsigned short int)-2)
    printf("01 FUNC2 OK\n");
  else
    printf("01 FUNC2 NG\n");
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

  ia=~i[i[1]];ca=~c[2];sa=~*sp;
  uia=~*uip;uca=~*ucp;usa=~us[s];
  if (ia==-2 && ca==(char)-3 && sa==-4 && uia==(unsigned int)-5 &&
      uca==(unsigned char)-6 && usa==(unsigned short int)-7)
    printf("01 FUNC3 OK\n");
  else
    printf("01 FUNC3 NG\n");
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

  uca=~i[i[1]];usa=~c[2];uia=~*sp;
  ca=~*uip;sa=~*ucp;ia=~us[s];
  if (ia==-7 && ca==(char)-5 && sa==-6 && uia==(unsigned int)-4 &&
      uca==(unsigned char)-2 && usa==(unsigned short int)-3)
    printf("01 FUNC4 OK\n");
  else
    printf("01 FUNC4 NG\n");
}

int func5(){
  static struct stag {
                unsigned int  a:3;
                unsigned char b:4;
               }x={1,2};
  struct stag *sp,sa[3],s;
  sp=&s;
  s.a=~x.a;(*sp).b=~x.b;sa[2].a=~(*sp).b;
  if (s.a==6 && (*sp).b==13 &&
      sa[2].a==2)
    printf("01 FUNC5 OK\n");
  else
    printf("01 FUNC5 NG\n");
}

int func6(){
  static int i=1;
  struct stag  { int a; char b; }x,*p;
  x.a=~(i+i);x.b=~(i+i+i);
  if (x.a==-3 && x.b==(char)-4)
    printf("01 FUNC6 OK\n");
  else
    printf("01 FUNC6 NG\n");
}

int func7(){
  static int i=1;
  struct stag  { int a; char b; }x,*p;
  p=&x;
  x.a=~(i?i:i);p->b=~(i&&i);
  if (x.a==-2 && x.b==(char)-2)
    printf("01 FUNC7 OK\n");
  else
    printf("01 FUNC7 NG\n");
}
