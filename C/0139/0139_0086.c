#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

struct tag1 {
              char       stca;
              short int  stsia;
              int        stia;
            };

union  tag2 {
              char       unca;
              short int  unsia;
              int        stia;
            };
int main()
{
    struct tag1 st1;
    struct tag1 stfunc1();
    union  tag2 un1;
    union  tag2 unfunc2();
    struct tag1 st3;
    union  tag2 un4;

    printf("\n");

    if(stfunc1().stia == 2147483647)
        printf("***\n");
    else
        printf("***\n");

    st3 = stfunc1();
    if((&st3)->stia == 2147483647)
        printf("***\n");
    else
        printf("***\n");

    if(unfunc2().unca == 127)
        printf("***\n");
    else
        printf("***\n");

    un4 = unfunc2();
    if((&un4)->unca == 127)
        printf("***\n");
    else
        printf("***\n");

    printf("\n");

exit (0);
}

struct tag1 stfunc1()
{
    struct tag1 st3;
    st3.stca  = 0;
    st3.stsia = 0;
    st3.stia  = 2147483647;

    return (st3);
}

union  tag2 unfunc2()
{
    union tag2 un3;
    un3.unca =127;

    return (un3);
}
