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
  printf("02 START\n");
  func1();
  func2();
  func3();
  func4();
  func5();
  func6();
  func7();
  func8();
  printf("02 END  \n");
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

  ia=i<<i;sa=s>>s;uia=ui<<ui;usa=us>>us;

  if (ia==2  &&  sa==0 && uia==64 && usa==0)
    printf("02 FUNC1 OK\n");
  else
    printf("02 FUNC1 NG\n");
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

  ia=*ip<<i;sa=*sp>>i;uia=ui[i-i]<<c;usa=us[i]>>s;

  if (ia==2 && sa==1 && uia==32 && usa==1)
    printf("02 FUNC2 OK\n");
  else
    printf("02 FUNC2 NG\n");
}

int func3(){
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

  ia=s<<*ip;sa=i>>*sp;uia=ui<<*ip;usa=us>>*sp;

  if (ia==4 && sa==0 && uia==8 && usa==1)
    printf("02 FUNC3 OK\n");
  else
    printf("02 FUNC3 NG\n");
}

int func4(){
  static int i=1;
  static short int s=2;
  static char  c=3;
  static unsigned int ui=4;
  static unsigned short int us=5;
  static unsigned char   uc=6;
  static int *ip=&i;
  static short int *sp=&s;
  static char  *cp=&c;
  int ia[3];
  short int sa[4];
  char  ca[5];
  unsigned int uia,*uiap;
  unsigned short int usa,*usap;
  unsigned char   uca,*ucap;
  uiap=&uia;usap=&usa;ucap=&uca;

  ia[0]=i<<i;sa[2]=c>>i;*uiap=ui<<i;*usap=us>>s;

  if (ia[0]==2 && sa[2]==1 && *uiap==8 && *usap==1)
    printf("02 FUNC4 OK\n");
  else
    printf("02 FUNC4 NG\n");
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

  ia=(i*i)<<(i*i);sa=(s/s)>>(s/s);
  uia=(ui%ui)<<(ui*ui);usa=(us*us)>>(us*us);

  if (ia==2 && sa==0 && uia==0 && usa==0)
    printf("02 FUNC5 OK\n");
  else
    printf("02 FUNC5 NG\n");
}

int func6(){
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

  ia=(i?i:i)<<(i?i:i);sa=(s&&s)>>(s&&s);
  uia=(ui&&ui)<<(ui&&ui);usa=(us?us:us)>>(us&&us);

  if (ia==2 && sa==0 &&  uia==2 && usa==2)
    printf("02 FUNC6 OK\n");
  else
    printf("02 FUNC6 NG\n");
}

int func7(){
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

  ia=i<<(short)1;sa=s>>(char)2;
  uia=ui<<4;usa=us>>(unsigned int)5;

  if (ia==2 && sa==0 && uia==64 && usa==0)
    printf("02 FUNC7 OK\n");
  else
    printf("02 FUNC7 NG\n");
}

int func8(){
  static struct tag {
                      unsigned int a:5;
                      unsigned int b:4;
                    }x={1,2};
  static struct tag2 {
                      int a:5;
                      int b:4;
                     }z={1,2};
  static struct tag y[3]={{1,2},{3,4},{5,6}};
  static struct tag w[3]={{1,2},{3,4},{5,6}};
  int  i,j,k,l,m;

  i=z.a<<y[1].b;j=w[1].a>>x.b;k=x.a<<z.a;
  l=y[1].b>>z.a;

  if (i==16 && j==0 && k==2 && l==2)
    printf("02 FUNC8 OK\n");
  else
    printf("02 FUNC8 NG\n");
}
