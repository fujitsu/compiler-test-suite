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
  printf("01 START\n");
  func1();
  func2();
  func3();
  func4();
  func5();
  func6();
  func7();
  func8();
  printf("01 END  \n");
}

int func1(){
  volatile int a,ar[5]={0};
           int b,br[5]={0};
  volatile int *ap=ar;
  int *bp=br;
  a=ar[0];
  b=a+1;
  br[0]=b;
  ar[b&&1]=1+br[0];
  if (ar[1]==2)
    printf("01 FUNC1 OK\n");
  else
    printf("01 FUNC1 NG; AR[1]=%d\n",ar[1]);
}

int func2(){
  volatile struct stag {
    int aa;
  } sta;
  volatile struct stag stb;
  volatile union utag{
    int aa;
  } una;
  volatile union  utag unb;

  stb.aa=1;
  unb.aa=1;
  stb=stb;
  sta=stb;
  unb=unb;
  una=unb;
  if (sta.aa==1 && una.aa==1)
    printf("01 FUNC2 OK\n");
  else  {
    printf("01 FUNC2 NG\n");
    printf("STA.AA=%d\n",sta.aa);
    printf("UNA.AA=%d\n",una.aa);
  }
}

int func3(){
  volatile int a,ar[5]={0};
           int b,br[5]={0};
  volatile int *ap=ar;
  int *bp=br;
  ap=bp;
  ap=ap+0;
  bp=bp+0;

  if (*ap==0 && *bp==0)
    printf("01 FUNC3 OK\n");
  else  {
    printf("01 FUNC3 NG\n");
    printf("*AP=%d\n",*ap);
    printf("*BP=%d\n",*bp);
  }
}

int func4(){
    void *vp;
    int a=1;
    int *ap  ;
    ap = &a ;

    vp=ap;
    ap=vp;
  if (*ap==1)
    printf("01 FUNC4 OK\n");
  else  {
    printf("01 FUNC4 NG\n");
    printf("*AP=%d\n",*ap);
    }
}

int func5(){
    volatile  int *vpq;
    volatile int aq=1;
    volatile int *apq  ;
    apq= &aq;

    vpq=apq;
    apq=vpq;
  if (*apq==1)
    printf("01 FUNC5 OK\n");
  else  {
    printf("01 FUNC5 NG\n");
    printf("*APQ=%d\n",*apq);
    }
}

volatile  static int arq[1];
int func6(){
    volatile  int *vpq;
    volatile  int *apq=arq;
    vpq=apq;
    apq=vpq;
    {
      volatile extern int arq[1];
      arq[0]=1;
    }
  if (*apq==1)
    printf("01 FUNC6 OK\n");
  else  {
    printf("01 FUNC6 NG\n");
    printf("*APQ=%d\n",*apq);
  }
}

static int ar[1];
int func7(){
    void *vp;
    int * ap=ar;
    vp=ap;
    ap=vp;
    {
      extern int ar[1];
      ar[0]=1;
    }
  if (*ap==1 )
    printf("01 FUNC7 OK\n");
  else  {
    printf("01 FUNC7 NG\n");
    printf("*AP=%d\n",*ap);
    }
}

int func8(){
  int *ap   ;
  ap=0;

  if (ap==0)
    printf("01 FUNC8 OK\n");
  else {
    printf("01 FUNC8 NG\n");
    printf("AP=%d\n",ap);
    }
}
