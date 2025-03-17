#include <stdlib.h>
#include <stdio.h>
#include <math.h>
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
  printf(" END  \n");
exit (0);
}
int func1(){
  char *c="abc";
  if ( (*(c+1))=='b')
    printf(" FUNC1 OK\n");
  else {
    printf(" FUNC1 NG\n");
    printf("*(C+1)=%d\n",*(c+1));
    }
}
int func2(){
  struct tag {int x[2];} st;
  struct tag *stp;
  stp=&st;
  (stp->x)[1]=1;
  if (stp->x[1]==1 )
    printf(" FUNC2 OK\n");
  else {
    printf(" FUNC2 NG\n");
    printf("STP->X[1]=%d\n",stp->x[1]);
  }
}
int func3(){
  int ax[1][1];
  ax[0][0]=1;
 
  if (ax[0][0]==1 )
    printf(" FUNC3 OK\n");
  else {
    printf(" FUNC3 NG\n");
    printf("AX[0][0]=%d\n",ax[0][0]);
  }
}
int func4(){
  int (*p)[1];
  int a=1,*ap;
  ap=&a;
 
  p=(int (*) [1])ap;
  if ( (*p)[0]==1 )
    printf(" FUNC4 OK\n");
  else {
    printf(" FUNC4 NG\n");
    printf("(*P)[0]=%d\n",(*p)[0]);
  }
}
