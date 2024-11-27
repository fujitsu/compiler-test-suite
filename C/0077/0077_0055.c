#include <stdio.h>


#include <fenv.h>
#define FLT_ROUNDS   fegetround()

#define  DEFALUT_ROUND FE_TONEAREST

int main()
{
  printf("%d\n",FLT_ROUNDS==DEFALUT_ROUND);

#if defined(__sparc) && !defined(__linux)
  fpsetround(FP_RZ);
  printf("%d\n",FLT_ROUNDS==0);
  fpsetround(FP_RP);
  printf("%d\n",FLT_ROUNDS==2);
  fpsetround(FP_RM);
  printf("%d\n",FLT_ROUNDS==3);
  fpsetround(FP_RN);
  printf("%d\n",FLT_ROUNDS==1);
#else
  fesetround(FE_TOWARDZERO);
  printf("%d\n",FLT_ROUNDS==fegetround());
  fesetround(FE_UPWARD);
  printf("%d\n",FLT_ROUNDS==fegetround());
  fesetround(FE_DOWNWARD);
  printf("%d\n",FLT_ROUNDS==fegetround());
  fesetround(FE_TONEAREST);
  printf("%d\n",FLT_ROUNDS==fegetround());
#endif
}

