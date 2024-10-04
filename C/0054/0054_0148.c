#include<stdio.h>
int func5();
int func4();
int func3();
int func1();
 

int main()
{
  printf("02 START\n");
  func1();
  func3();
  func4();
  func5();
  printf("02 END  \n");
}

int func1(){
  int a=0,b=0,c=0,d=0,e=0,ar[2];
  float f1=0.0,f2=0.0,fa[5] ;
  ar[1]=0;

  a=1-(-1);            
  b=a-1;               
  c=a-b;               
  d=ar[c]-1;         
  e=d-(-(a||b));       
  fa[0-e]=1.0;       
  fa[d-(-1)]=fa[0]+1.0; 
  fa[c-e]=fa[0]-1.0;    

  if (fa[1]==1.0)
    printf("02 FUNC1 OK\n");
  else {
    printf("02 FUNC1 NG\n");
    printf("FA[1]=%f\n",fa[1]);
  }
}

int func2(){
  volatile int aq[2];
  volatile int *aqp,*bqp;
  int a[2];
  int * ap,*bp;
  int  x=0;

  aqp=aq ;
  bqp=aq+1;
  ap=a ;
  bp=a+1;
  x =(bqp-aqp)+(bp-ap);

  if (x==2)
    printf("02 FUNC2 OK\n");
  else {
    printf("02 FUNC2 NG\n");
    printf("X=%d\n",x);
  }
}

int func3(){
  struct tag{ int a; } st[3];
  struct tag *stp;
  int b=0,ar[3];
  int *ap;

  ar[1]=0;
  stp=st;
  ap=ar;

  *(ar-(-1))=0;       
  *(ar-(-2))=*(ar-(-1)) -(-1); 
  (stp-(-1))->a=ar[2];   
  (stp-b)->a=st[1].a-1 ; 

  if (st[0].a==0)
    printf("02 FUNC3 OK\n");
  else {
    printf("02 FUNC3 NG\n");
    printf("ST[0].A=%d\n",st[0].a);
  }
}

int func4(){
  int a=0,b=0,c=0,d=0,e=0,ar[10];
  int *ap;
  ar[0]=1;ar[1]=0;ar[2]=0;ar[3]=0;ar[4]=0;
  ar[5]=0;ar[6]=0;ar[7]=0;ar[8]=0;ar[9]=0;

  a=ar[4-2-1];              
  b=ar[2-a-a];              
  c=ar[ 3-b-3-(-ar[1]) ]; 
  d=ar[ e=1-1+c,c-(1&&ar[0])-(-1) ]; 

  if (d==0 && e==1)
    printf("02 FUNC4 OK\n");
  else {
    printf("02 FUNC4 NG\n");
    printf("D=%d\n",d);
    printf("E=%d\n",e);
  }
}

int func5(){
  int a=120,x=0,ar[1];
  ar[0]=1;

  x=a-1-1-1-1-1-1-1-1-1-1-   
    1-1-1-1-1-1-1-1-1-1-   
    1-1-1-1-1-1-1-1-1-1-   
    1-1-1-1-1-1-1-1-1-1-   
    1-1-1-1-1-1-1-1-1-1-   
    1-1-1-1-1-1-1-1-1-1-   
    1-1-1-1-1-1-1-1-1-1-   
    1-1-1-1-1-1-1-1-1-1-   
    1-1-1-1-1-1-1-1-1-1-   
    1-1-1-1-1-1-1-1-1-1-   
    ar[0]-ar[0]-ar[0]-ar[0]-ar[0]-
    ar[0]-ar[0]-ar[0]-ar[0]-ar[0]-
    ar[0]-ar[0]-ar[0]-ar[0]-ar[0]-
    ar[0]-ar[0]-ar[0]-ar[0]-ar[0];

  if (x==0)
    printf("02 FUNC5 OK\n");
  else {
    printf("02 FUNC5 NG\n");
    printf("X=%d\n",x);
  }
}
