#include <stdio.h>

int func();
int main()
{
signed char            wi1=0;
short int              wi2=2;
int                    wi4=3;
long long int          wi8=4;
unsigned char          wu1=5;
unsigned short int     wu2=6;
unsigned int           wu4=7;
unsigned long long int wu8=8;
float                  wr4=9.0;
double                 wr8=10.0;
long double            wrq=11.0;
int iresult=func(wi1,wi2,wi4,wi8,wu1,wu2,wu4,wu8,wr4,wr8,wrq);
if(iresult==66)
  {
    printf("  OK \n");
  }
else
  {
    printf("  NG \n");
  }
}
int func(pi1,pi2,pi4,pi8,pu1,pu2,pu4,pu8,pr4,pr8,prq)
signed char            pi1;
short int              pi2;
int                    pi4;
long long int          pi8;
unsigned char          pu1;
unsigned short int     pu2;
unsigned int           pu4;
unsigned long long int pu8;
float                  pr4;
double                 pr8;
long double            prq;
{
  printf(" FUNC ENTERED : PI1 = %d \n",pi1);
  if(pi1==0)
    return(func(pi1+1,pi2,pi4,pi8,pu1,pu2,pu4,pu8,pr4,pr8,prq));
  else
    return(pi1+pi2+pi4+pi8+pu1+pu2+pu4+pu8+pr4+pr8+prq);
}
