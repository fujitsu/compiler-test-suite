#include <stdio.h>
int main()
{
    unsigned  char             uchara;
    unsigned  int              uinta;
    unsigned  short int        usinta;
    unsigned  long  int        ulinta;
    unsigned  long  long int   ullinta;



    printf ("***TEST FOR TOKEN***STARTED\n");
    uchara = 0;
    if(uchara == 0)
    {
        printf ("TEST01 *** O  K ***\n");
    }
    else
    {
        printf ("TEST01 *** N  G ***\n");
    }
    uchara = 255;
    if(uchara == 255)
    {
        printf ("TEST02 *** O  K ***\n");
    }
    else
    {
        printf ("TEST02 *** N  G ***\n");
    }
    uinta = 0;
    if(uinta == 0)
    {
        printf ("TEST03 *** O  K ***\n");
    }
    else
    {
        printf ("TEST03 *** N  G ***\n");
    }
    uinta = 4294967295;
    if(uinta == 4294967295)
    {
        printf ("TEST04 *** O  K ***\n");
    }
    else
    {
        printf ("TEST04 *** N  G ***\n");
    }
    usinta = 0;
    if(usinta == 0)
    {
        printf ("TEST05 *** O  K ***\n");
    }
    else
    {
        printf ("TEST05 *** N  G ***\n");
    }
    usinta = 65535;
    if(usinta == 65535)
    {
        printf ("TEST06 *** O  K ***\n");
    }
    else
    {
        printf ("TEST06 *** N  G ***\n");
    }
    ulinta = 0;
    if(ulinta == 0)
    {
        printf ("TEST07 *** O  K ***\n");
    }
    else
    {
        printf ("TEST07 *** N  G ***\n");
    }
    ulinta = 4294967295;
    if(ulinta == 4294967295)
    {
        printf ("TEST08 *** O  K ***\n");
    }
    else
    {
        printf ("TEST08 *** N  G ***\n");
    }
    ullinta = 0;
    if(ullinta == 0)
    {
        printf ("TEST09 *** O  K ***\n");
    }
    else
    {
        printf ("TEST09 *** N  G ***\n");
    }
    ullinta = 4294967295;
    if(ullinta == 4294967295)
    {
        printf ("TEST10 *** O  K ***\n");
    }
    else
    {
        printf ("TEST10 *** N  G ***\n");
    }
    printf ("***TEST FOR TOKEN***END\n");
}
