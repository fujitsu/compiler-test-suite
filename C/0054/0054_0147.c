#include<stdio.h>
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
  printf("01 END  \n");
}

int func1(){
  int a=0,b=0,c=0,d=0,e=0,ar[2];
  float f1=0.0,f2=0.0,fa[5] ;
  ar[1]=0;

  a=1+(-1);
  b=a+1;
  c=b+a;
  d=ar[c]+1;
  e=d+(a&&b);
  fa[e+0]=1.0;
  fa[e+1]=fa[1]+1.0;
  fa[e+2]=fa[2]+1.0;

  if (fa[3]==3.0)
    printf("01 FUNC1 OK\n");
  else {
    printf("01 FUNC1 NG\n");
    printf("FA[1]=%f\n",fa[1]);
  }
}

int func2(){
  int a=0,b=0,c=0,d=0,e=0,ar[3];
  int *ap;
  ar[1]=0;

  ap=ar;
  *(ap+1)=1  ;
  *(ap+2)=*(ap+1)+1;

  if (ar[2]==2)
    printf("01 FUNC2 OK\n");
  else {
    printf("01 FUNC2 NG\n");
    printf("AR[2]=%d\n",ar[2]);
  }
}

int func3(){
  int a=0,b=0,c=0,d=0,e=0,ar[10];
  int *ap;
  ar[0]=1;ar[1]=0;ar[2]=0;ar[3]=0;ar[4]=0;
  ar[5]=0;ar[6]=0;ar[7]=0;ar[8]=0;ar[9]=0;

  a=ar[1+2+3];
  b=ar[2+a+a];
  c=ar[ b+3+(-2)+ar[1] ];
  d=ar[ e=1-1+c,c+(1&&ar[0])+(-1) ];

  if (d==1 && e==0)
    printf("01 FUNC3 OK\n");
  else {
    printf("01 FUNC3 NG\n");
    printf("D=%d\n",d);
    printf("E=%d\n",e);
  }
}

int func4(){
  int a=1,x=0,ar[1];
  ar[0]=1;

  x=a+a+a+a+a+a+a+a+a+a+   
    a+a+a+a+a+a+a+a+a+a+   
    a+a+a+a+a+a+a+a+a+a+   
    a+a+a+a+a+a+a+a+a+a+   
    a+a+a+a+a+a+a+a+a+a+   
    a+a+a+a+a+a+a+a+a+a+   
    a+a+a+a+a+a+a+a+a+a+   
    a+a+a+a+a+a+a+a+a+a+   
    a+a+a+a+a+a+a+a+a+a+   
    a+a+a+a+a+a+a+a+a+a+   
    ar[0]+ar[0]+ar[0]+ar[0]+ar[0]+
    ar[0]+ar[0]+ar[0]+ar[0]+ar[0]+
    ar[0]+ar[0]+ar[0]+ar[0]+ar[0]+
    ar[0]+ar[0]+ar[0]+ar[0]+ar[0];

  if (x==120)
    printf("01 FUNC4 OK\n");
  else {
    printf("01 FUNC4 NG\n");
    printf("X=%d\n",x);
  }
}
