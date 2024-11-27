#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

int main()
{
    int ans;
    enum week_tag {SUN,mon,tue,wed,thu,fri,sat}week;
    printf("\n");
    if (SUN == 0)
    {
        printf("TEST01 *** OK!!\n");
    }
    if (mon == 1)
    {
        printf("TEST02 *** OK!!\n");
    }
    if (tue == 2)
    {
        printf("TEST03 *** OK!!\n");
    }
    if (wed == 3)
    {
        printf("TEST04 *** OK!!\n");
    }
    if (thu == 4)
    {
        printf("TEST05 *** OK!!\n");
    }
    if (fri == 5)
    {
        printf("TEST06 *** OK!!\n");
    }
    if (sat == 6)
    {
        printf("TEST07 *** OK!!\n");
    }
    ans = SUN+mon+tue+wed+thu+fri+sat ;
    if (ans == 21)
    {
        printf("\n");
    }
exit (0);
}
