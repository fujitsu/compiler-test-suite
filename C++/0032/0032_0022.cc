#include <stdio.h>
int main()
{
    unsigned char          c     = 255;
    int                    i     = -2147483648;
    long long int          llia  = 5;

    if(c>>llia != 7)
        printf("***C1NEX058-05*** N   G ***\n");
    else
      printf("ok\n");
    
    if(i>>llia != -67108864)
        printf("***C1NEX058-14*** N   G ***\n");
    else
      printf("ok\n");
  }
