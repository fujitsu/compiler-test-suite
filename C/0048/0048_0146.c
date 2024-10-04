#include <stdio.h>
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

    printf("*** TEST FOR EXPRESSION *** STARTED\n");

    if(stfunc1().stia == 2147483647)
        printf("***-01*** O     K ***\n");
    else
        printf("***-01*** N     G ***\n");

    st3 = stfunc1();
    if((&st3)->stia == 2147483647)
        printf("***-02*** O     K ***\n");
    else
        printf("***-02*** N     G ***\n");

    if(unfunc2().unca == 127)
        printf("***-03*** O     K ***\n");
    else
        printf("***-03*** N     G ***\n");

    un4 = unfunc2();
    if((&un4)->unca == 127)
        printf("***-04*** O     K ***\n");
    else
        printf("***-04*** N     G ***\n");

    printf("*** TEST FOR EXPRESSION *** ENDED\n");

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
