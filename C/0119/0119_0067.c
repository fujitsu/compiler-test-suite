#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

long int      eli1;
long int      eli2;
int main()
{
    long int     li1;
    long int     li2;
    long int     sub();

    printf("---- SCPA015 START ---- \n");
    eli1 = 2;    eli2 = eli1*5;
    li1 = 2;     li2 = li1*5;

    if ( sub(li1, li2) )
        printf ("     ***  OK  *** \n");
    else {
        printf ("     ???  NG  ??? \n");
        printf ("       ANS = %d, %d\n", li1, li2);
        printf ("       CAL = %d, %d\n", eli1, eli2);
    }

    printf("---- SCPA015  END  ---- \n");
exit (0);
}
long int sub(pli1, pli2)
long int    pli1;
long int    pli2;
{
    return (pli1==eli1 && pli2==eli2);
}
