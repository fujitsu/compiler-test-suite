#include <stdio.h>
int main()
{

    float         fl1 = 12.8;

    double        do1 = 12.8;

    long  double  ld1 = 12.8;

    printf("***TEST FOR TOKEN***STARTED\n");
    if(-1e-4 <= ld1 - fl1 && ld1 - fl1 <= 1e-4) 
    {
        if(-1e-4 <= ld1 - fl1 && ld1 - fl1 <= 1e-4) 
        {
            printf("TEST***O   K***\n");
        }
        else
        {
            printf("TEST***N   G***\n");
        }
    }
    else
    {
        printf("TEST***N   G***\n");
    }
    printf("***TEST FOR TOKEN***END\n");
}
