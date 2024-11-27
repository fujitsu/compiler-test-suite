#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

int main()
{
    signed  char            schara[] = { 127,-128};
    signed  int              sinta[] = { 2147483647,-2147483648};
    signed  short int       ssinta[] = { 32767,-32768 };
    signed  long  int       slinta[] = { 2147483647,-2147483648 };
#ifndef nollint
    signed  long  long int sllinta[] =
                      { 9223372036854775807LL,-9223372036854775808LL };
#endif


    printf("\n");

 
    if(schara[0] == 127)
    {
        printf("TEST01***O   K***\n");
    }
    else
    {
        printf("TEST01***N   G***\n");
    }
 
    if(schara[1] == -128)
    {
        printf("TEST02***O   K***\n");
    }
    else
    {
        printf("TEST02***N   G***\n");
    }
 
    if(sinta[0] == 2147483647)
    {
        printf("TEST03***O   K***\n");
    }
    else
    {
        printf("TEST03***N   G***\n");
    }
 
    if(sinta[1] == -2147483648)
    {
        printf("TEST04***O   K***\n");
    }
    else
    {
        printf("TEST04***N   G***\n");
    }
 
    if(ssinta[0] == 32767)
    {
        printf("TEST05***O   K***\n");
    }
    else
    {
        printf("TEST05***N   G***\n");
    }
 
    if(ssinta[1] == -32768)
    {
        printf("TEST06***O   K***\n");
    }
    else
    {
        printf("TEST06***N   G***\n");
    }
 
    if(slinta[0] == 2147483647)
    {
        printf("TEST07***O   K***\n");
    }
    else
    {
        printf("TEST07***N   G***\n");
    }
 
    if(slinta[1] == -2147483648)
    {
        printf("TEST08***O   K***\n");
    }
    else
    {
        printf("TEST08***N   G***\n");
    }
#ifndef nollint
 
    if(sllinta[0] == 9223372036854775807LL)
    {
        printf("TEST09***O   K***\n");
    }
    else
    {
        printf("TEST09***N   G***\n");
    }
 
    if(sllinta[1] == -9223372036854775808LL)
    {
        printf("TEST10***O   K***\n");
    }
    else
    {
        printf("TEST10***N   G***\n");
    }
#endif
    printf ("\n");
exit (0);
}
