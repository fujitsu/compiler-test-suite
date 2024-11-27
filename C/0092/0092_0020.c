

#include  <stdio.h>

#define I_MAX 20

double A[I_MAX],B[I_MAX];

static int iii(int x){
  return x;
}

static void main_test(int n){
  int x=0,y=0,test=iii(n);
  int i=0;
  double s=1.0,t=1.0;
  printf("test%d start\n",n);
  if (test>0){
    s=-1.0;
    t=s*-1.0;
    switch (iii(n)){
    case 0:
    case 1:
      goto LOOP_1;
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
      goto LOOP_0;
    case 100:
    case 200:
      goto END;
    default:
      goto ERROR;
    }
  }
  s=2.0;
LOOP_0:  
  t=s+(float)i;
LOOP_1:
  if (i<I_MAX)
    A[i]+=s*B[i];
  else
    goto END;
  i++;
  goto LOOP_0;
 END:
  printf("test%d ended\n",n);
  return;
 ERROR:
  printf("ERROR %d\n",n);
  return;
}
  

int main()
{
  int i=0,test=0;
  printf(" Start\n");
  printf("Check the GEN Graph and make sure that there are no LOOP PSEUDO GEN\n");
  for (i=0;i<I_MAX;i++){
    A[i]=(double)-i;
    B[i]=i;
  }
  main_test(-1);
  printf("%f %f\n",(float)A[1],(float)A[I_MAX-1]);
  for (i=0;i<I_MAX;i++){
    A[i]=(double)-i;
    B[i]=i;
  }
  main_test(1);
  printf("%f %f\n",(float)A[1],(float)A[I_MAX-1]);
  for (i=0;i<I_MAX;i++){
    A[i]=(double)-i;
    B[i]=i;
  }
  main_test(20);
  printf("%f %f\n",(float)A[1],(float)A[I_MAX-1]);
  printf(" End\n");
  for (i=0;i<I_MAX;i++){
    A[i]=(double)-i;
    B[i]=i;
  }
  main_test(200);
  printf("%f %f\n",(float)A[1],(float)A[I_MAX-1]);
  printf(" End\n");
}
