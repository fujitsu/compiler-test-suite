#include <stdlib.h>
#include <stdio.h>
#include <math.h>
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
  printf(" END  \n");
exit (0);
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
 
  ia=i+i;sa=uc-us;ca=us/ui;uia=ui*c;usa=c%s;uca=s+i;
 
  if (ia==2  &&  sa==1 && ca==1 && uia==12 && usa==1 && uca==3)
    printf(" FUNC1 OK\n");
  else
    printf(" FUNC1 NG\n");
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
 
  ia=uc[i+s]+s;sa=us[c-s]-i;ca=ui[i-i]*i;uia=*(cp+i-i)/s;
  usa=*(sp+c-i-s)%i;
 
  if (ia==8 && sa==4 && ca==4 && uia==1 && usa==0)
    printf(" FUNC2 OK\n");
  else
    printf(" FUNC2 NG\n");
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
 
  ia=s+uc[i+s];sa=i-us[c-s];ca=i*ui[i-i];uia=s/(*(cp+i-i));
  usa=i%(*(sp+c-i-s));
 
  if (ia==8 && sa==-4 && ca==4 && uia==0 && usa==1)
    printf(" FUNC3 OK\n");
  else
    printf(" FUNC3 NG\n");
}
int func4(){
  static int i=1;
  static short int s=2;
  static char  c=3;
  static unsigned int ui[2]={4,0};
  static unsigned short int us[3]={0,5,0};
  static unsigned char   uc[4]={0,0,0,6};
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
 
  ia[i-i]=uc[i+s]+uc[i+s];sa[s]=us[c-s]-us[c-s];
  ca[c]=ui[i-i]*ui[i-i];*(uiap+i-i)=(*(cp+i-i))/(*(cp+i-i));
  *(usap+s-s)=(*(sp+c-i-s))%(*(sp+c-i-s));
 
  if (ia[0]==12 && sa[2]==0 && ca[3]==16  &&
      *uiap==1 && *usap==0)
    printf(" FUNC4 OK\n");
  else
    printf(" FUNC4 NG\n");
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
 
  ia=(i*i)+(i*i);sa=(s/s)-(s/s);ca=(c/c)*(c/c);
  uia=(ui%ui)/(ui*ui);usa=(us*us)%(us*us);
 
  if (ia==2 && sa==0 && ca==1  &&
      uia==0 && usa==0)
    printf(" FUNC5 OK\n");
  else
    printf(" FUNC5 NG\n");
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
 
  ia=(i?i:i)+(i?i:i);sa=(s&&s)-(s&&s);ca=(c?c:c)*(c&&c);
  uia=(ui&&ui)/(ui&&ui);usa=(us?us:us)%(us&&us);
 
  if (ia==2 && sa==0 && ca==3  &&
      uia==1 && usa==0)
    printf(" FUNC6 OK\n");
  else
    printf(" FUNC6 NG\n");
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
 
  ia=i+1;sa=s-2;ca=c*(char)3;
  uia=ui/4;usa=us%5;
 
  if (ia==2 && sa==0 && ca==9  &&
      uia==1 && usa==0)
    printf(" FUNC7 OK\n");
  else
    printf(" FUNC7 NG\n");
}
int func8(){
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
 
  ia=1+i[0];sa=2-s[1];ca=3*c[2];
  uia=4/ui[3];usa=5%us[4];
 
  if (ia==2 && sa==0 && ca==9  &&
      uia==1 && usa==0)
    printf(" FUNC8 OK\n");
  else
    printf(" FUNC8 NG\n");
}
int func9(){
  static struct tag {
                      unsigned int a:5;
                      unsigned int b:4;
                    }x={1,2};
  static struct tag y[3]={{1,2},{3,4},{5,6}};
  int  i,j,k,l,m;
 
  i=x.a+y[1].b;j=y[1].a-x.b;k=x.a*y[0].a;
  l=x.b/y[2].a;m=y[0].b%x.a;
 
  if (i==5 && j==1 && k==1  &&
      l==0  && m==0 )
    printf(" FUNC9 OK\n");
  else
    printf(" FUNC9 NG\n");
}
