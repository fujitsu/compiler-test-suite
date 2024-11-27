#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

int main()
{
    float         fl1 = .12345678l;
    float         fl2 = .12345678L;
    float         fl3 = .12345678f;
    float         fl4 = .12345678F;

    double        do1 = .123456789012345678901234567890l;
    double        do2 = .123456789012345678901234567890L;
    double        do3 = .123456789012345678901234567890f;
    double        do4 = .123456789012345678901234567890F;

    long  double  ld1 = .123456789012345678901234567890l;
    long  double  ld2 = .123456789012345678901234567890L;
    long  double  ld3 = .123456789012345678901234567890f;
    long  double  ld4 = .123456789012345678901234567890F;

    printf("\n");

 
    if(fl1 == .12345678f)
    {
        printf("TEST01***O   K***\n");
    }
    else
    {
        printf("TEST01***N   G***\n");
    }
 
    if(fl1 == fl2)
    {
        printf("TEST02***O   K***\n");
    }
    else
    {
        printf("TEST02***N   G***\n");
    }
 
    if(fl2 == fl3)
    {
        printf("TEST03***O   K***\n");
    }
    else
    {
        printf("TEST03***N   G***\n");
    }
 
    if(fl3 == fl4)
    {
        printf("TEST04***O   K***\n");
    }
    else
    {
        printf("TEST04***N   G***\n");
    }
 
 
    if(.1234567890123456 <= do1 && do1 < .1234567890123457)
    {
        printf("TEST05***O   K***\n");
    }
    else
    {
        printf("TEST05***N   G***\n");
    }
 
    if(do1 == do2)
    {
        printf("TEST06***O   K***\n");
    }
    else
    {
        printf("TEST06***N   G***\n");
    }
 
    if(do3 == .123456789012345678901234567890f)
    {
        printf("TEST07***O   K***\n");
    }
    else
    {
        printf("TEST07***N   G***\n");
    }
 
    if(do3 == do4)
    {
        printf("TEST08***O   K***\n");
    }
    else
    {
        printf("TEST08***N   G***\n");
    }
 
    if(ld1 == .123456789012345678901234567890l)
    {
        printf("TEST09***O   K***\n");
    }
    else
    {
        printf("TEST09***N   G***\n");
    }
 
    if(ld1 == ld2)
    {
        printf("TEST10***O   K***\n");
    }
    else
    {
        printf("TEST10***N   G***\n");
    }
 
    if(ld3 == .123456789012345678901234567890f)
    {
        printf("TEST11***O   K***\n");
    }
    else
    {
        printf("TEST11***N   G***\n");
    }
 
    if(ld3 == ld4)
    {
        printf("TEST12***O   K***\n");
    }
    else
    {
        printf("TEST12***N   G***\n");
    }
    printf("\n");
exit (0);
}
