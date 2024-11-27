#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int main( ) {
  int a,b,i,sub0( ),sub1( );
  a=sub0(2); b=sub1(2);
  if (a == b)
              printf("**dpmk2020-(01)** OK\n"); 
  else        printf("**dpmk2020-(01)** NG a=%d b=%d\n",a,b); 
  if (a != b)
              printf("**dpmk2020-(02)** NG\n"); 
  else        printf("**dpmk2020-(02)** OK\n");
  if (a >= b)
              printf("**dpmk2020-(03)** OK\n"); 
  else        printf("**dpmk2020-(03)** NG\n"); 
  if (a <= b) 
              printf("**dpmk2020-(04)** OK\n"); 
  else        printf("**dpmk2020-(04)** NG\n"); 
  if (a <  b)
              printf("**dpmk2020-(05)** NG\n"); 
  else        printf("**dpmk2020-(05)** OK\n");
  if (a >  b) 
              printf("**dpmk2020-(06)** NG\n"); 
  else        printf("**dpmk2020-(06)** OK\n");
  a=sub0(5);
  if (a == 100) 
              printf("**dpmk2020-(07)** NG\n"); 
  else        printf("**dpmk2020-(07)** OK\n");
  if (a != 100) 
              printf("**dpmk2020-(08)** OK\n"); 
  else        printf("**dpmk2020-(08)** NG\n"); 
  if (a >= 100) 
              printf("**dpmk2020-(09)** NG\n"); 
  else        printf("**dpmk2020-(09)** OK\n");
  if (a <= 100) 
              printf("**dpmk2020-(10)** OK\n"); 
  else        printf("**dpmk2020-(10)** NG\n"); 
  if (a <  100) 
              printf("**dpmk2020-(11)** OK\n"); 
  else        printf("**dpmk2020-(11)** NG\n"); 
  if (a >  100) 
              printf("**dpmk2020-(12)** NG\n"); 
  else        printf("**dpmk2020-(12)** OK\n");
  b=sub0(0);
  if (0+0 == b)
                printf("**dpmk2020-(13)** OK\n"); 
  else          printf("**dpmk2020-(13)** NG\n"); 
  if (0+0 != b)
                printf("**dpmk2020-(14)** NG\n"); 
  else          printf("**dpmk2020-(14)** OK\n");
  if (0+0 >= b)
                printf("**dpmk2020-(15)** OK\n"); 
  else          printf("**dpmk2020-(15)** NG\n"); 
  if (0+0 <= b)
                printf("**dpmk2020-(16)** OK\n"); 
  else          printf("**dpmk2020-(16)** NG\n"); 
  if (0+0 <  b)
                printf("**dpmk2020-(17)** NG\n"); 
  else          printf("**dpmk2020-(17)** OK\n");
  if (0+0 >  b)
                printf("**dpmk2020-(18)** NG\n"); 
  else          printf("**dpmk2020-(18)** OK\n");
  b=sub1(2);
  if (1+0 == b) 
                printf("**dpmk2020-(19)** NG\n"); 
  else          printf("**dpmk2020-(19)** OK\n");
  if (2+0 != b) 
                printf("**dpmk2020-(20)** OK\n"); 
  else          printf("**dpmk2020-(20)** NG\n"); 
  if (3+0 >= b) 
                printf("**dpmk2020-(21)** NG\n"); 
  else          printf("**dpmk2020-(21)** OK\n");
  if (4+0 <= b) 
                printf("**dpmk2020-(22)** OK\n"); 
  else          printf("**dpmk2020-(22)** NG\n"); 
  if (5+0 <  b) 
                printf("**dpmk2020-(23)** NG\n"); 
  else          printf("**dpmk2020-(23)** OK\n");
  if (6+0 >  b) 
                printf("**dpmk2020-(24)** OK\n"); 
  else          printf("**dpmk2020-(24)** NG\n"); 
  if (sub0(1) == sub1(1)) 
                printf("**dpmk2020-(25)** NG\n"); 
  else          printf("**dpmk2020-(25)** OK\n");
  if (sub0(1) != sub1(1)) 
                printf("**dpmk2020-(26)** OK\n"); 
  else          printf("**dpmk2020-(26)** NG\n"); 
  if (sub0(1) >= sub1(1)) 
                printf("**dpmk2020-(27)** NG\n"); 
  else          printf("**dpmk2020-(27)** OK\n");
  if (sub0(1) <= sub1(1)) 
                printf("**dpmk2020-(28)** OK\n"); 
  else          printf("**dpmk2020-(28)** NG\n"); 
  if (sub0(1) <  sub1(1)) 
                printf("**dpmk2020-(29)** OK\n"); 
  else          printf("**dpmk2020-(29)** NG\n");
  if (sub0(1) >  sub1(1)) 
                printf("**dpmk2020-(30)** NG\n"); 
  else          printf("**dpmk2020-(30)** OK\n"); 
exit (0);
}
int sub0(i) int i;{
 return(i*i);
}
int sub1(i) int i;{
 return(i+i);
}
