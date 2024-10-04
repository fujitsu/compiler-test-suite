#include<stdio.h>
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
  printf("02 END    \n");
}

int func1(){
  static struct tag { int a; int b;} st1={0,1};
  struct tag st2;
  struct tag *stp,stpa;
  struct tag *stp2,stp2a;
  struct tag ar[3];
  int i; i=1;

  stp=&stpa;
  stp2=&stp2a;

  st2=st1;
  *(stp+i-1)=st1;
  *stp2=st1;
  ar[2]=st1;

  if (st2.b==1 && (*stp).b==1 && (*stp2).b==1 && ar[2].b==1)
    printf("02 FUNC1 OK\n");
  else {
    printf("02 FUNC1 NG\n");
    printf("ST2.B (1) == %D \n",st2.b);
    printf("(*STP).B (1) == %D \n",(*stp).b);
    printf("(*STP2).B (1) == %D \n",(*stp2).b);
    printf("AR[2].B (1) == %D \n",ar[2].b);
  }
}

int func2(){
  static struct tag { int a; int b;} st1={0,1};
  static struct tag ar[3]={{0,0},{0,1},{0,0}};
  struct tag st2;
  struct tag *stp;
  struct tag *stp2;
  struct tag st3,st4;
  int i; i=1;

  stp=&st1;
  stp2=&st1;

  st2=*(stp+i-1);
  st3=*stp2;
  st4=ar[1];

  if (st2.b==1 && st3.b==1 && st4.b==1)
    printf("02 FUNC2 OK\n");
  else
    printf("02 FUNC2 NG\n");
}

int func3(){
  static struct tag { int a; int b; } st1={0,1};
  struct tag ar[3];
  struct tag st2;
  struct tag *stp,stpa;
  struct tag *stp2,stp2a;
  struct tag st3,st4;
  int i; i=1;

  stp=&stpa;
  stp2=&stp2a;

  st2=st1;
  *stp=st2;
  ar[0]=*(stp+i-1);

  if (ar[0].b==1)
    printf("02 FUNC3 OK\n");
  else
    printf("02 FUNC3 NG\n");
}

int func4(){
  int a[3]={0,1,2};
  struct tag { int a; int b;}st={1,2};
  union  utag { struct tag sa; int b;} ut={{1,2}};

  if (a[1]==1 && st.b==2 && ut.sa.a==1)
    printf("02 FUNC4 OK\n");
  else
    printf("02 FUNC4 NG\n");
}
