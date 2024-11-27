#include <stdio.h>

int  factoriala(int n),factorialb(int n);
int main()
{
  int a;
  if((a=factoriala(4))== 24)
    { printf(" (1) OK : 4-NO-factorial = %d \n",a); }
  else
    { printf(" (1) NG : 4-NO-factorial = %d \n",a); }
  if((a=factorialb(5))==120)
    { printf(" (2) OK : 5-NO-factorial = %d \n",a); }
  else
    { printf(" (2) NG : 5-NO-factorial = %d \n",a); }
}
int factoriala(int n)
{
  if(n==1) return(1);
    else   return(n*factoriala(n-1)  );
}
int factorialb(int n)
{
  if(n==1) return(1);
    else   return(  factorialb(n-1)*n);
}
