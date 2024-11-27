#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

int main()
{
    unsigned char            uchara[] = { 255,0 };
    unsigned int              uinta[] = { 4294967295,0 };
    unsigned short int       usinta[] = { 65535,0 };
    unsigned long  int       ulinta[] = { 4294967295,0 };
    unsigned long  long int ullinta[] = { 18446744073709551615LL,0 };



    printf("\n");

 
    if(uchara[0] == 255)
    {
        printf("TEST01***O   K***\n");
    }
    else
    {
        printf("TEST01***N   G***\n");
    }
 
    if(uchara[1] == 0)
    {
        printf("TEST02***O   K***\n");
    }
    else
    {
        printf("TEST02***N   G***\n");
    }
 
    if(uinta[0] == 4294967295)
    {
        printf("TEST03***O   K***\n");
    }
    else
    {
        printf("TEST03***N   G***\n");
    }
 
    if(uinta[1] == 0)
    {
        printf("TEST04***O   K***\n");
    }
    else
    {
        printf("TEST04***N   G***\n");
    }
 
    if(usinta[0] == 65535)
    {
        printf("TEST05***O   K***\n");
    }
    else
    {
        printf("TEST05***N   G***\n");
    }
 
    if(usinta[1] == 0)
    {
        printf("TEST06***O   K***\n");
    }
    else
    {
        printf("TEST06***N   G***\n");
    }
 
    if(ulinta[0] == 4294967295)
    {
        printf("TEST07***O   K***\n");
    }
    else
    {
        printf("TEST07***N   G***\n");
    }
 
    if(ulinta[1] == 0)
    {
        printf("TEST08***O   K***\n");
    }
    else
    {
        printf("TEST08***N   G***\n");
    }
 
    if(ullinta[0] == 18446744073709551615LL)
    {
        printf("TEST09***O   K***\n");
    }
    else
    {
        printf("TEST09***N   G***\n");
    }
 
    if(ullinta[1] == 0)
    {
        printf("TEST10***O   K***\n");
    }
    else
    {
        printf("TEST10***N   G***\n");
    }
    printf ("\n");
exit (0);
}
