#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

int main()
{
    int                   a,b,c,d,e;

    printf("\n");

    if(a=1,b=0)
        printf("***\n");
    else
        printf("***\n");

    if(a=1,b=1,c=0)
        printf("***\n");
    else
        printf("***\n");

    if(a=0,b=0,c=0,d=1)
        printf("***\n");
    else
        printf("***\n");

    if(a=0,b=0,c=0,d=0,e=1)
        printf("***\n");
    else
        printf("***\n");

    for(a=0,b=3;a<5,b<5;a++,++b)
    {
        ++b;
    }
    if(b == 5)
        printf("***\n");
    else
        printf("***\n");

    a = 1;
    while(a<1,a<2,a<3,a<4)
    {
        ++a;
    }
    if(a == 4)
        printf("***\n");
    else
        printf("***\n");

    a = 1, b = 2, c = 3, d = 4;
    switch(a,b,c,d)
    {
    case 1: printf("***\n");
            break;
    case 2: printf("***\n");
            break;
    case 3: printf("***\n");
            break;
    case 4: printf("***\n");
            break;
    default:printf("***\n");
            break;
    }

    c = ( a=10,b=100);
    if(c == 100)
        printf("***\n");
    else
        printf("***\n");

    1?(a=1,b=2,c=a+b):printf("***\n");
    if(c == 3)
        printf("***\n");
    else
        printf("***\n");

    1?(a=1,b=2*1):printf("***\n");
    if(b == 2)
        printf("***\n");
    else
        printf("***\n");

    printf("\n");
exit (0);
}
