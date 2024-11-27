#include <stdio.h>

int main( ) {
  int a,b,i,sub0( ),sub1( );
  long long int aaa,ccc,succc0( ),succc1( );
  a=sub0(2); b=sub1(2);

  aaa=succc0(2ll); ccc=succc1(2ll);
  if (a == b)
              printf("**(01)** OK\n");
  else        printf("**(01)** NG a=%d b=%d\n",a,b);
  if (a != b)
              printf("**(02)** NG\n");
  else        printf("**(02)** OK\n");
  if (a >= b)
              printf("**(03)** OK\n");
  else        printf("**(03)** NG\n");
  if (a <= b)
              printf("**(04)** OK\n");
  else        printf("**(04)** NG\n");
  if (a <  b)
              printf("**(05)** NG\n");
  else        printf("**(05)** OK\n");
  if (a >  b)
              printf("**(06)** NG\n");
  else        printf("**(06)** OK\n");
  
  a=sub0(5);
  if (a == 100)
              printf("**(07)** NG\n");
  else        printf("**(07)** OK\n");
  if (a != 100)
              printf("**(08)** OK\n");
  else        printf("**(08)** NG\n");
  if (a >= 100)
              printf("**(09)** NG\n");
  else        printf("**(09)** OK\n");
  if (a <= 100)
              printf("**(10)** OK\n");
  else        printf("**(10)** NG\n");
  if (a <  100)
              printf("**(11)** OK\n");
  else        printf("**(11)** NG\n");
  if (a >  100)
              printf("**(12)** NG\n");
  else        printf("**(12)** OK\n");
  
  b=sub0(0);
  if (0+0 == b)
                printf("**(13)** OK\n");
  else          printf("**(13)** NG\n");
  if (0+0 != b)
                printf("**(14)** NG\n");
  else          printf("**(14)** OK\n");
  if (0+0 >= b)
                printf("**(15)** OK\n");
  else          printf("**(15)** NG\n");
  if (0+0 <= b)
                printf("**(16)** OK\n");
  else          printf("**(16)** NG\n");
  if (0+0 <  b)
                printf("**(17)** NG\n");
  else          printf("**(17)** OK\n");
  if (0+0 >  b)
                printf("**(18)** NG\n");
  else          printf("**(18)** OK\n");
  
  b=sub1(2);
  if (1+0 == b)
                printf("**(19)** NG\n");
  else          printf("**(19)** OK\n");
  if (2+0 != b)
                printf("**(20)** OK\n");
  else          printf("**(20)** NG\n");
  if (3+0 >= b)
                printf("**(21)** NG\n");
  else          printf("**(21)** OK\n");
  if (4+0 <= b)
                printf("**(22)** OK\n");
  else          printf("**(22)** NG\n");
  if (5+0 <  b)
                printf("**(23)** NG\n");
  else          printf("**(23)** OK\n");
  if (6+0 >  b)
                printf("**(24)** OK\n");
  else          printf("**(24)** NG\n");
  
  if (sub0 == sub1)
                printf("**(25)** NG\n");
  else          printf("**(25)** OK\n");
  if (sub0 != sub1)
                printf("**(26)** OK\n");
  else          printf("**(26)** NG\n");
  if (sub0 >= sub1)
                printf("**(27)** NG\n");
  else          printf("**(27)** OK\n");
  if (sub0 <= sub1)
                printf("**(28)** OK\n");
  else          printf("**(28)** NG\n");
  if (sub0 <  sub1)
                printf("**(29)** OK\n");
  else          printf("**(29)** NG\n");
  if (sub0 >  sub1)
                printf("**(30)** NG\n");
  else          printf("**(30)** OK\n");
  if (aaa == ccc)
              printf("**(01)** OK\n");
  else        printf("**(01)** NG\n");
  if (aaa != ccc)
              printf("**(02)** NG\n");
  else        printf("**(02)** OK\n");
  if (aaa >= ccc)
              printf("**(03)** OK\n");
  else        printf("**(03)** NG\n");
  if (aaa <= ccc)
              printf("**(04)** OK\n");
  else        printf("**(04)** NG\n");
  if (aaa <  ccc)
              printf("**(05)** NG\n");
  else        printf("**(05)** OK\n");
  if (aaa >  ccc)
              printf("**(06)** NG\n");
  else        printf("**(06)** OK\n");
  
  aaa=succc0(5ll);
  if (aaa == 100)
              printf("**(07)** NG\n");
  else        printf("**(07)** OK\n");
  if (aaa != 100)
              printf("**(08)** OK\n");
  else        printf("**(08)** NG\n");
  if (aaa >= 100)
              printf("**(09)** NG\n");
  else        printf("**(09)** OK\n");
  if (aaa <= 100)
              printf("**(10)** OK\n");
  else        printf("**(10)** NG\n");
  if (aaa <  100)
              printf("**(11)** OK\n");
  else        printf("**(11)** NG\n");
  if (aaa >  100)
              printf("**(12)** NG\n");
  else        printf("**(12)** OK\n");
  
  ccc=succc0(0ll);
  if (0+0 == ccc)
                printf("**(13)** OK\n");
  else          printf("**(13)** NG\n");
  if (0+0 != ccc)
                printf("**(14)** NG\n");
  else          printf("**(14)** OK\n");
  if (0+0 >= ccc)
                printf("**(15)** OK\n");
  else          printf("**(15)** NG\n");
  if (0+0 <= ccc)
                printf("**(16)** OK\n");
  else          printf("**(16)** NG\n");
  if (0+0 <  ccc)
                printf("**(17)** NG\n");
  else          printf("**(17)** OK\n");
  if (0+0 >  ccc)
                printf("**(18)** NG\n");
  else          printf("**(18)** OK\n");
  
  ccc=succc1(2ll);
  if (1+0 == ccc)
                printf("**(19)** NG\n");
  else          printf("**(19)** OK\n");
  if (2+0 != ccc)
                printf("**(20)** OK\n");
  else          printf("**(20)** NG\n");
  if (3+0 >= ccc)
                printf("**(21)** NG\n");
  else          printf("**(21)** OK\n");
  if (4+0 <= ccc)
                printf("**(22)** OK\n");
  else          printf("**(22)** NG\n");
  if (5+0 <  ccc)
                printf("**(23)** NG\n");
  else          printf("**(23)** OK\n");
  if (6+0 >  ccc)
                printf("**(24)** OK\n");
  else          printf("**(24)** NG\n");
  
  if (succc0 == succc1)
                printf("**(25)** NG\n");
  else          printf("**(25)** OK\n");
  if (succc0 != succc1)
                printf("**(26)** OK\n");
  else          printf("**(26)** NG\n");
  if (succc0 >= succc1)
                printf("**(27)** NG\n");
  else          printf("**(27)** OK\n");
  if (succc0 <= succc1)
                printf("**(28)** OK\n");
  else          printf("**(28)** NG\n");
  if (succc0 <  succc1)
                printf("**(29)** OK\n");
  else          printf("**(29)** NG\n");
  if (succc0 >  succc1)
                printf("**(30)** NG\n");
  else          printf("**(30)** OK\n");
}
long long int succc0(i) long long int i;{
 return(i*i);
}
long long int succc1(i) long long int i;{
 return(i+i);
}
int sub0(i) int i;{
 return(i*i);
}
int sub1(i) int i;{
 return(i+i);
}
