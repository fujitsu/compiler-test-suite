#include <stdio.h>

#include <fenv.h>
int main()
{
  printf("%d\n",fegetround());

  fesetround(FE_TOWARDZERO);
  printf("%d\n",fegetround()==FE_TOWARDZERO);
  fesetround(FE_UPWARD);
  printf("%d\n",fegetround()==FE_UPWARD);
  fesetround(FE_DOWNWARD);
  printf("%d\n",fegetround()==FE_DOWNWARD);
  fesetround(FE_TONEAREST);
  printf("%d\n",fegetround()==FE_TONEAREST);
}

