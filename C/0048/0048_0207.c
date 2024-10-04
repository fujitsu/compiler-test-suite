#include <stdio.h>
int main()
{
    int                   a,b,c,d,e;

    printf("*** TEST FOR EXPRESSION *** STARTED\n");

    if(a=1,b=0)
        printf("***-01**** N   G ****\n");
    else
        printf("***-01*** O     K ***\n");

    if(a=1,b=1,c=0)
        printf("***-02**** N   G ****\n");
    else
        printf("***-02*** O     K ***\n");

    if(a=0,b=0,c=0,d=1)
        printf("***-03*** O     K ***\n");
    else
        printf("***-03**** N   G ****\n");

    if(a=0,b=0,c=0,d=0,e=1)
        printf("***-04*** O     K ***\n");
    else
        printf("***-04**** N   G ****\n");

    for(a=0,b=3;a<5,b<5;a++,++b)
    {
        ++b;
    }
    if(b == 5)
        printf("***-05*** O     K ***\n");
    else
        printf("***-05**** N   G ****\n");

    a = 1;
    while(a<1,a<2,a<3,a<4)
    {
        ++a;
    }
    if(a == 4)
        printf("***-06*** O     K ***\n");
    else
        printf("***-06**** N   G ****\n");

    a = 1, b = 2, c = 3, d = 4;
    switch(a,b,c,d)
    {
    case 1: printf("***-07**** N   G ****\n");
            break;
    case 2: printf("***-07**** N   G ****\n");
            break;
    case 3: printf("***-07**** N   G ****\n");
            break;
    case 4: printf("***-07*** O     K ***\n");
            break;
    default:printf("***-07**** N   G ****\n");
            break;
    }

    c = ( a=10,b=100);
    if(c == 100)
        printf("***-08*** O     K ***\n");
    else
        printf("***-08**** N   G ****\n");

    1?(a=1,b=2,c=a+b):printf("***-09**** N   G ****\n");
    if(c == 3)
        printf("***-09*** O     K ***\n");
    else
        printf("***-09**** N   G ****\n");

    1?(a=1,b=2*1):printf("***-10**** N   G ****\n");
    if(b == 2)
        printf("***-10*** O     K ***\n");
    else
        printf("***-10**** N   G ****\n");

    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}
