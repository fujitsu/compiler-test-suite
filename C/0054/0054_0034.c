#include<stdio.h>
int func4();
int func3();
int func2();
int func1();
int f();
 

int main()
{
  printf("01 START\n");
  func1();
  func2();
  func3();
  func4();
  printf("01 END  \n");
}

int func1(){
  static int i=0;
  static short int s=1;
  static char  c=2;
  static unsigned int ui=3;
  static unsigned short int us=4;
  static unsigned char   uc=5;
  int ia;
  short int sa;
  unsigned int uia;
  unsigned short int usa;
  unsigned char uca;

  ia=(i)?s:ui;sa=(i+s)?i:uc;
  if (ia=ui && sa==i)
    printf("01 FUNC1 OK\n");
  else
    printf("01 FUNC1 NG\n");
}

int func2(){
  static int i=0;
  static short int s=2;
  static char  c=3;
  static unsigned int ui[2]={4,0};
  static unsigned short int us[3]={0,5,0};
  static unsigned char   uc[4]={0,0,0,6};
  int ia;
  short int sa;
  char  ca;
  unsigned int uia;
  unsigned short int usa;
  unsigned char   uca;
  static int *ip=&i;
  static short int *sp=&s;
  static char  *cp=&c;

  ia=(i+s)?(i+i):(c*c);sa=(i*i)?(s*s):(s*c/s);
  ca=(us[0])?(*(ip-i+i)):(uc[1]);
  uia=(*(sp+s-2))?(us[c-s]):(*(sp+i));
  usa=(f())?(f()):(f()+1);

  if (ia==0 && sa==3 && ca==0 && uia==5 && usa==1)
    printf("01 FUNC2 OK\n");
  else
    printf("01 FUNC2 NG\n");
}
int f()
{
   return 1;
}

int func3(){
  static int i=1,*ip=&i;
  static short int s=2;
  static char  c=3;
  static unsigned int ui[2]={4,0};
  static unsigned short int us[3]={0,5,0};
  static unsigned char   uc[4]={0,0,0,6};
  static struct tag{ int a;} st={1},*stp=&st;
  int ia;
  short int sa;
  char  ca;
  unsigned int uia;
  unsigned short int usa;
  unsigned char   uca;

  ia=(i||i)?(ui[0]||(*stp).a):(s||s);
  sa=(i&&ui[1])?(s&&s):(st.a&&uc[3]);

  if (ia=i+i)
    printf("01 FUNC3 OK\n");
  else
    printf("01 FUNC3 NG\n");
}

int func4(){
  static int i=1;
  static short int s=2;
  static char  c=3;
  static unsigned int ui=4;
  static unsigned short int us=5;
  static unsigned char   uc=6;
  static unsigned int    ar[4]={0,0,1,1};
  int ia;
  short int sa;
  char  ca;
  double da;
  unsigned short int usa;
  unsigned char   uca;

  ia=(i||(i&&i))?(0+0+0):(5+5*4/6%3);
  da=(ar[i]&&((c-c)||*(ar+1)))?((float)1.0):((double)2);

  if (ia==0 && da==2.0)
    printf("01 FUNC4 OK\n");
  else
    printf("01 FUNC4 NG\n");
}

int func5(){
  static int i=1;
  static short int s=2;
  static char  c=3;
  static unsigned int ui=4;
  static unsigned short int us=5;
  static unsigned char   uc=6;
  static unsigned int    ar[4]={0,0,1,1};
  int ia;
  short int sa;
  char  ca;
  double da;
  unsigned short int usa;
  unsigned char   uca;

  ia=(i?i:i)?(i?(ar[3]):(ui+ui)):((s+s)?(uc+uc):(us+us));
  da=(ar[0]?uc:ar[1])?((i||i)?ui:ui):(ar[0]?uc:ui);

  if (ia==1 && da==4)
    printf("01 FUNC5 OK\n");
  else
    printf("01 FUNC5 NG\n");
}
