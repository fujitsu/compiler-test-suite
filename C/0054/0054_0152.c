#include<stdio.h>
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
  printf("04 START\n");
  func1();
  func2();
  func3();
  func4();
  func5();
  func6();
  func7();
  func8();
  printf("04 END  \n");
}

int func1(){
  static int i=1;
  static short int s=2;
  static char  c=3;
  static unsigned int ui=4;
  static unsigned short int us=5;
  static unsigned char   uc=6;
  int ia;
  short int sa;
  char  ca;
  unsigned int uia;
  unsigned short int usa;
  unsigned char   uca;

  ia=(i&s);sa=(uc|c);ca=(us^ui);

  if (ia==0  &&  sa==7 && ca==1)
    printf("04 FUNC1 OK\n");
  else
    printf("04 FUNC1 NG\n");
}

int func2(){
  static int i=1;
  static short int s=2;
  static char  c=3;
  static unsigned int ui[2]={4,0};
  static unsigned short int us[3]={0,5,0};
  static unsigned char   uc[4]={0,0,0,6};
  static int *ip=&i;
  static short int *sp=&s;
  static char  *cp=&c;
  int ia;
  short int sa;
  char  ca;
  unsigned int uia;
  unsigned short int usa;
  unsigned char   uca;

  ia=(uc[i+s]&s);
  ca=(ui[i-i]|i);
  usa=(*(sp+c-i-s)^i);

  if (ia==2 && ca==5 && usa==3)
    printf("04 FUNC2 OK\n");
  else
    printf("04 FUNC2 NG\n");
}

int func3(){
  static int i=1;
  static short int s=2;
  static char  c=3;
  static unsigned int ui[2]={4,0};
  static unsigned short int us[3]={0,5,0};
  static unsigned char   uc[4]={0,0,0,6};
  static int *ip=&i;
  static short int *sp=&s;
  static char  *cp=&c;
  int ia;
  short int sa;
  char  ca;
  unsigned int uia;
  unsigned short int usa;
  unsigned char   uca;

  ia=(s&uc[i+s]);
  ca=(i|ui[i-i]);
  usa=(i^(*(sp+c-i-s)));

  if (ia==2 && ca==5 && usa==3 )
    printf("04 FUNC3 OK\n");
  else
    printf("04 FUNC3 NG\n");
}

int func4(){
  static int i=1;
  static short int s=2;
  static char  c=3;
  static unsigned int ui=4;
  static unsigned short int us=5;
  static unsigned char   uc=6;
  int ia[3];
  short int sa[4];
  char  ca[5];
  unsigned int uia,*uiap;
  unsigned short int usa,*usap;
  unsigned char   uca,*ucap;
  uiap=&uia;usap=&usa;ucap=&uca;

  ia[i-i]=((i*i)&(i*i));
  ca[c]=((c/c)|(c/c));
  *(uiap+s-s)=((ui%ui)^(ui*ui));

  if (ia[0]==1 && ca[3]==1 && *uiap==16)
    printf("04 FUNC4 OK\n");
  else
    printf("04 FUNC4 NG\n");
}

int func5(){
  static int i=1;
  static short int s=2;
  static char  c=3;
  static unsigned int ui=4;
  static unsigned short int us=5;
  static unsigned char   uc=6;
  static int *ip=&i;
  static short int *sp=&s;
  static char  *cp=&c;
  int ia;
  short int sa;
  char  ca;
  unsigned int uia;
  unsigned short int usa;
  unsigned char   uca;

  ia=((i?i:i)&(i?i:i));
  uia=((ui&&ui)|(ui&&ui));
  uca=((uc&&uc)^(uc?uc:uc));

  if (ia==1 && uia==1 && uca==7)
    printf("04 FUNC5 OK\n");
  else
    printf("04 FUNC5 NG\n");
}

int func6(){
  static int i=1;
  static short int s=2;
  static char  c=3;
  static unsigned int ui=4;
  static unsigned short int us=5;
  static unsigned char   uc=6;
  int ia;
  short int sa;
  char  ca;
  unsigned int uia;
  unsigned short int usa;
  unsigned char   uca;

  ia=(i&1);uia=(ui|4);usa=(us^5);

  if (ia==1 && uia==4 && usa==0)
    printf("04 FUNC6 OK\n");
  else
    printf("04 FUNC6 NG\n");
}

int func7(){
  static int i[3]={1,2,3};
  static short int s[4]={1,2,3,4};
  static char  c[5]={1,2,3,4,5};
  static unsigned int ui[6]={1,2,3,4,5,6};
  static unsigned short int us[7]={1,2,3,4,5,6,7};
  static unsigned char   uc[8]={1,2,3,4,5,6,7,8};
  int ia;
  short int sa;
  char  ca;
  unsigned int uia;
  unsigned short int usa;
  unsigned char   uca;

  ia=(1&i[0]);sa=(2|s[1]);
  uia=(4^ui[3]);

  if (ia==1 && sa==2 && uia==0)
    printf("04 FUNC7 OK\n");
  else
    printf("04 FUNC7 NG\n");
}

int func8(){
  static struct tag {
                      unsigned int a:5;
                      unsigned int b:4;
                    }x={1,2};
  static struct tag y[3]={{1,2},{3,4},{5,6}};
  int  i,j,k,l,m,n;

  i=(x.a&y[1].b);j=(y[1].a|x.b);
  l=(x.b^y[2].a);

  if (i==0 && j==3 && l==7)
    printf("04 FUNC8 OK\n");
  else
    printf("04 FUNC8 NG\n");
}
