#include <stdio.h>

#undef sun
int main()
{
    int ans;
    enum week_tag {sun,mon,tue,wed,thu,fri,sat}week;
    printf("***TEST FOR TOKEN***STARTED\n");
    if (sun == 0)
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
    ans = sun+mon+tue+wed+thu+fri+sat ;
    if (ans == 21)
    {
        printf("***TEST FOR TOKEN***END\n");
    }
}
