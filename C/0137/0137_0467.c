#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int  funca(int n),funcb(int n);
int main()
{
  int a;
  if((a=funca(4))== 24)
    { printf("SNITR05 (1) OK : 4-NO-func = %d \n",a); }
  else
    { printf("SNITR05 (1) NG : 4-NO-func = %d \n",a); }
  if((a=funcb(5))==120)
    { printf("SNITR05 (2) OK : 5-NO-func = %d \n",a); }
  else
    { printf("SNITR05 (2) NG : 5-NO-func = %d \n",a); }
exit (0);
}
int funca(int n)
{
  if(n==1) return(1);
    else   return(n*funca(n-1)  );
}
int funcb(int n)
{
  if(n==1) return(1);
    else   return(  funcb(n-1)*n);
}
