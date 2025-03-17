#include <stdio.h>
int main()
{
  unsigned long long int   ll;
    signed long long int  sll;





  
  ll = (unsigned long long int)(long double)-0.9l;
  if (ll == 0)
    printf("--- M3GLLU01 (01-20) OK ---\n");
  else {
    printf("*** M3GLLU01 (01-20) NG ***\n");
    printf("LL = %x\n" , ll);
  }



  sll = (signed long long int)(long double)-0.9l;
  if (sll == 0)
    printf("--- M3GLLU01 (01-21) OK ---\n");
  else {
    printf("*** M3GLLU01 (01-21) NG ***\n");
    printf("LL = %x\n" , sll);
  }
}
