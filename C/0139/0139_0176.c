#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 
 

int main()
{
    float         fl1 = .128;
    double        do1 = .128;
    long  double  ld1 = .128;

    printf("\n");
    do1 -= fl1;
    ld1 -= fl1;
    if(do1 >= -1e-7 && do1 <= 1e-7)
    {
        if(ld1 >= -1e-7 && ld1 <= 1e-7)
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
    printf("\n");
exit (0);
}
