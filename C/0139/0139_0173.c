#include <stdlib.h>
#include <stdio.h>
#include <math.h>
 
 
 
 
 
 
 
 
 
 

int main()
{

    float         fl1 = 128.;
    float         fl2 = 128;

    double        do1 = 128.;
    double        do2 = 128;

    long  double  ld1 = 128.;
    long  double  ld2 = 128;

    printf("\n");
    if(fl1 == do1)
    {
        if(ld1 == fl1)
        {
            printf("TEST01***O   K***\n");
        }
        else
        {
            printf("TEST01***N   G***\n");
        }
    }
    else
    {
        printf("TEST01***N   G***\n");
    }
    if(fl2 == do2)
    {
        if(ld2 == fl2)
        {
            printf("TEST02***O   K***\n");
        }
        else
        {
            printf("TEST02***N   G***\n");
        }
    }
    else
    {
        printf("TEST02***N   G***\n");
    }
    printf("\n");
exit (0);
}
