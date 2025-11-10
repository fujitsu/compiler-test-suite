
#include <stdio.h>
extern int	printf(const char *, ...);
int lto_sub_4()
{
  {
    int val1 = 1,val2 = 2,c,a = 1;
    int *const p11 = &val1,*const p12 = &val2;
    c = *(a ? p11 : p12);
    if (c == 1)
        printf(" TEST - 01  OK \n");
    else
        printf(" TEST - 01  NG \n");
  }
  {
    int val1 = 1,val2 = 2,*c,a = 1;
    int *volatile p21 = &val1,*volatile  p22 = &val2;
    c = (int *)(a ? p21 : p22);
    if (*c == 1)
        printf(" TEST - 02  OK \n");
    else
        printf(" TEST - 02  NG \n");
  }
}
