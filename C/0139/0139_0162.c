#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

int main()
{
    signed  char             schara;
    signed  int              sinta;
    signed  short int        ssinta;
    signed  long  int        slinta;
    signed  long  long int   sllinta;

    printf ("\n");
 
    schara = -128;
    if(schara == -128)
    {
        printf ("TEST01 *** O  K ***\n");
    }
    else
    {
        printf ("TEST01 *** N  G ***\n");
    }
 
    schara = 127;
    if(schara == 127)
    {
        printf ("TEST02 *** O  K ***\n");
    }
    else
    {
        printf ("TEST02 *** N  G ***\n");
    }
 
    sinta = -2147483648;
    if(sinta == -2147483648)
    {
        printf ("TEST03 *** O  K ***\n");
    }
    else
    {
        printf ("TEST03 *** N  G ***\n");
    }
 
    sinta = 2147483647;
    if(sinta == 2147483647)
    {
        printf ("TEST04 *** O  K ***\n");
    }
    else
    {
        printf ("TEST04 *** N  G ***\n");
    }
 
    ssinta = -32768;
    if(ssinta == -32768)
    {
        printf ("TEST05 *** O  K ***\n");
    }
    else
    {
        printf ("TEST05 *** N  G ***\n");
    }
 
    ssinta = 32767;
    if(ssinta == 32767)
    {
        printf ("TEST06 *** O  K ***\n");
    }
    else
    {
        printf ("TEST06 *** N  G ***\n");
    }
 
    slinta = -2147483648;
    if(slinta == -2147483648)
    {
        printf ("TEST07 *** O  K ***\n");
    }
    else
    {
        printf ("TEST07 *** N  G ***\n");
    }
 
    slinta = 2147483647;
    if(slinta == 2147483647)
    {
        printf ("TEST08 *** O  K ***\n");
    }
    else
    {
        printf ("TEST08 *** N  G ***\n");
    }
 

#ifndef   nollint

    sllinta = -9223372036854775808LL;
    if(sllinta == -9223372036854775808LL)
    {
        printf ("TEST09 *** O  K ***\n");
    }
    else
    {
        printf ("TEST09 *** N  G ***\n");
    }

#endif

 
    sllinta = 9223372036854775807LL;
    if(sllinta == 9223372036854775807LL)
    {
        printf ("TEST10 *** O  K ***\n");
    }
    else
    {
        printf ("TEST10 *** N  G ***\n");
    }
    printf ("\n");
exit (0);
}
