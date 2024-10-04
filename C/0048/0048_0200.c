#include <stdio.h>
int func10();
int func8();
int func7();
int func6();
int func5();
int func4();
int func3();
int func2();
int func1();
int main()
{
    printf("*** TEST FOR EXPRESSION *** STARTED\n");
    func1();
    func2();
    func3();
    func4();
    func5();
    func6();
    func7();
    func8();
    func10();
    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}


int func1()
{
    char                   c     = 1;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    long long int          llia  = 5;
    signed char            sca   = 6;
    unsigned short int     usia  = 7;

    struct tag1 {
                char       stca :1;
                short int  stsia:2;
                int        stia :3;
                } st1;

    st1.stca  = 1;
    st1.stsia = 2;
    st1.stia  = 3;

    if((c & ca) == 1)
        printf("***-01-01*** O     K ***\n");
    else
        printf("***-01-01**** N   G ****\n");

    if((c & ia) == 0)
        printf("***-01-02*** O     K ***\n");
    else
        printf("***-01-02**** N   G ****\n");

    if((c & sia) == 1)
        printf("***-01-03*** O     K ***\n");
    else
        printf("***-01-03**** N   G ****\n");

    if((c & lia) == 0)
        printf("***-01-04*** O     K ***\n");
    else
        printf("***-01-04**** N   G ****\n");

    if((c & llia) == 1)
        printf("***-01-05*** O     K ***\n");
    else
        printf("***-01-05**** N   G ****\n");

    if((c & sca) == 0)
        printf("***-01-06*** O     K ***\n");
    else
        printf("***-01-06**** N   G ****\n");

    if((c & usia) == 1)
        printf("***-01-07*** O     K ***\n");
    else
        printf("***-01-07**** N   G ****\n");

    if((c & 8) == 0)
        printf("***-01-08*** O     K ***\n");
    else
        printf("***-01-08**** N   G ****\n");

    if((c & st1.stca) == 1)
        printf("***-01-09*** O     K ***\n");
    else
        printf("***-01-09**** N   G ****\n");

    if((c & st1.stsia == 0) == 0)
        printf("***-01-10*** O     K ***\n");
    else
        printf("***-01-10**** N   G ****\n");
}


int func2()
{
    int                    i     = 1;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    long long int          llia  = 5;
    signed char            sca   = 6;
    unsigned short int     usia  = 7;

    struct tag1 {
                char       stca :1;
                short int  stsia:2;
                int        stia :3;
                } st1;

    st1.stca  = 1;
    st1.stsia = 2;
    st1.stia  = 3;

    if((i & ca) == 1)
        printf("***-02-01*** O     K ***\n");
    else
        printf("***-02-01**** N   G ****\n");

    if((i & ia) == 0)
        printf("***-02-02*** O     K ***\n");
    else
        printf("***-02-02**** N   G ****\n");

    if((i & sia) == 1)
        printf("***-02-03*** O     K ***\n");
    else
        printf("***-02-03**** N   G ****\n");

    if((i & lia) == 0)
        printf("***-02-04*** O     K ***\n");
    else
        printf("***-02-04**** N   G ****\n");

    if((i & llia) == 1)
        printf("***-02-05*** O     K ***\n");
    else
        printf("***-02-05**** N   G ****\n");

    if((i & sca) == 0)
        printf("***-02-06*** O     K ***\n");
    else
        printf("***-02-06**** N   G ****\n");

    if((i & usia) == 1)
        printf("***-02-07*** O     K ***\n");
    else
        printf("***-02-07**** N   G ****\n");

    if((i & 8) == 0)
        printf("***-02-08*** O     K ***\n");
    else
        printf("***-02-08**** N   G ****\n");

    if((i & st1.stca) == 1)
        printf("***-02-09*** O     K ***\n");
    else
        printf("***-02-09**** N   G ****\n");

    if((i & 1 == 0) == 0)
        printf("***-02-10*** O     K ***\n");
    else
        printf("***-02-10**** N   G ****\n");
}


int func3()
{
    short int              si    = 1;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    long long int          llia  = 5;
    signed char            sca   = 6;
    unsigned short int     usia  = 7;

    struct tag1 {
                char       stca :1;
                short int  stsia:2;
                int        stia :3;
                } st1;

    st1.stca  = 1;
    st1.stsia = 2;
    st1.stia  = 3;

    if((si & ca) == 1)
        printf("***-03-01*** O     K ***\n");
    else
        printf("***-03-01**** N   G ****\n");

    if((si & ia) == 0)
        printf("***-03-02*** O     K ***\n");
    else
        printf("***-03-02**** N   G ****\n");

    if((si & sia) == 1)
        printf("***-03-03*** O     K ***\n");
    else
        printf("***-03-03**** N   G ****\n");

    if((si & lia) == 0)
        printf("***-03-04*** O     K ***\n");
    else
        printf("***-03-04**** N   G ****\n");

    if((si & llia) == 1)
        printf("***-03-05*** O     K ***\n");
    else
        printf("***-03-05**** N   G ****\n");

    if((si & sca) == 0)
        printf("***-03-06*** O     K ***\n");
    else
        printf("***-03-06**** N   G ****\n");

    if((si & usia) == 1)
        printf("***-03-07*** O     K ***\n");
    else
        printf("***-03-07**** N   G ****\n");

    if((si & 8) == 0)
        printf("***-03-08*** O     K ***\n");
    else
        printf("***-03-08**** N   G ****\n");

    if((si & st1.stca) == 1)
        printf("***-03-09*** O     K ***\n");
    else
        printf("***-03-09**** N   G ****\n");

    if((si & 1 == 1) == 1)
        printf("***-03-10*** O     K ***\n");
    else
        printf("***-03-10**** N   G ****\n");
}


int func4()
{
    long int               li    = 1;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    long long int          llia  = 5;
    signed char            sca   = 6;
    unsigned short int     usia  = 7;

    struct tag1 {
                char       stca :1;
                short int  stsia:2;
                int        stia :3;
                } st1;

    st1.stca  = 1;
    st1.stsia = 2;
    st1.stia  = 3;

    if((li & ca) == 1)
        printf("***-04-01*** O     K ***\n");
    else
        printf("***-04-01**** N   G ****\n");

    if((li & ia) == 0)
        printf("***-04-02*** O     K ***\n");
    else
        printf("***-04-02**** N   G ****\n");

    if((li & sia) == 1)
        printf("***-04-03*** O     K ***\n");
    else
        printf("***-04-03**** N   G ****\n");

    if((li & lia) == 0)
        printf("***-04-04*** O     K ***\n");
    else
        printf("***-04-04**** N   G ****\n");

    if((li & llia) == 1)
        printf("***-04-05*** O     K ***\n");
    else
        printf("***-04-05**** N   G ****\n");

    if((li & sca) == 0)
        printf("***-04-06*** O     K ***\n");
    else
        printf("***-04-06**** N   G ****\n");

    if((li & usia) == 1)
        printf("***-04-07*** O     K ***\n");
    else
        printf("***-04-07**** N   G ****\n");

    if((li & 8) == 0)
        printf("***-04-08*** O     K ***\n");
    else
        printf("***-04-08**** N   G ****\n");

    if((li & st1.stca) == 1)
        printf("***-04-09*** O     K ***\n");
    else
        printf("***-04-09**** N   G ****\n");

    if((li & 1 != 1) == 0)
        printf("***-04-10*** O     K ***\n");
    else
        printf("***-04-10**** N   G ****\n");
}


int func5()
{
    long long int          lli   = 1;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    long long int          llia  = 5;
    signed char            sca   = 6;
    unsigned short int     usia  = 7;

    struct tag1 {
                char       stca :1;
                short int  stsia:2;
                int        stia :3;
                } st1;

    st1.stca  = 1;
    st1.stsia = 2;
    st1.stia  = 3;

    if((lli & ca) == 1)
        printf("***-05-01*** O     K ***\n");
    else
        printf("***-05-01**** N   G ****\n");

    if((lli & ia) == 0)
        printf("***-05-02*** O     K ***\n");
    else
        printf("***-05-02**** N   G ****\n");

    if((lli & sia) == 1)
        printf("***-05-03*** O     K ***\n");
    else
        printf("***-05-03**** N   G ****\n");

    if((lli & lia) == 0)
        printf("***-05-04*** O     K ***\n");
    else
        printf("***-05-04**** N   G ****\n");

    if((lli & llia) == 1)
        printf("***-05-05*** O     K ***\n");
    else
        printf("***-05-05**** N   G ****\n");

    if((lli & sca) == 0)
        printf("***-05-06*** O     K ***\n");
    else
        printf("***-05-06**** N   G ****\n");

    if((lli & usia) == 1)
        printf("***-05-07*** O     K ***\n");
    else
        printf("***-05-07**** N   G ****\n");

    if((lli & 8) == 0)
        printf("***-05-08*** O     K ***\n");
    else
        printf("***-05-08**** N   G ****\n");

    if((lli & st1.stca) == 1)
        printf("***-05-09*** O     K ***\n");
    else
        printf("***-05-09**** N   G ****\n");

    if((lli & 1 != 0) == 1)
        printf("***-05-10*** O     K ***\n");
    else
        printf("***-05-10**** N   G ****\n");
}


int func6()
{
    signed long int        sli   = 1;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    long long int          llia  = 5;
    signed char            sca   = 6;
    unsigned short int     usia  = 7;

    struct tag1 {
                char       stca :1;
                short int  stsia:2;
                int        stia :3;
                } st1;

    st1.stca  = 1;
    st1.stsia = 2;
    st1.stia  = 3;

    if((sli & ca) == 1)
        printf("***-06-01*** O     K ***\n");
    else
        printf("***-06-01**** N   G ****\n");

    if((sli & ia) == 0)
        printf("***-06-02*** O     K ***\n");
    else
        printf("***-06-02**** N   G ****\n");

    if((sli & sia) == 1)
        printf("***-06-03*** O     K ***\n");
    else
        printf("***-06-03**** N   G ****\n");

    if((sli & lia) == 0)
        printf("***-06-04*** O     K ***\n");
    else
        printf("***-06-04**** N   G ****\n");

    if((sli & llia) == 1)
        printf("***-06-05*** O     K ***\n");
    else
        printf("***-06-05**** N   G ****\n");

    if((sli & sca) == 0)
        printf("***-06-06*** O     K ***\n");
    else
        printf("***-06-06**** N   G ****\n");

    if((sli & usia) == 1)
        printf("***-06-07*** O     K ***\n");
    else
        printf("***-06-07**** N   G ****\n");

    if((sli & 8) == 0)
        printf("***-06-08*** O     K ***\n");
    else
        printf("***-06-08**** N   G ****\n");

    if((sli & st1.stca) == 1)
        printf("***-06-09*** O     K ***\n");
    else
        printf("***-06-09**** N   G ****\n");

    if((sli & sizeof(int)) == 0)
        printf("***-06-10*** O     K ***\n");
    else
        printf("***-06-10**** N   G ****\n");
}


int func7()
{
    unsigned long int        uli   = 1;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    long long int          llia  = 5;
    signed char            sca   = 6;
    unsigned short int     usia  = 7;

    struct tag1 {
                char       stca :1;
                short int  stsia:2;
                int        stia :3;
                } st1;

    st1.stca  = 1;
    st1.stsia = 2;
    st1.stia  = 3;

    if((uli & ca) == 1)
        printf("***-07-01*** O     K ***\n");
    else
        printf("***-07-01**** N   G ****\n");

    if((uli & ia) == 0)
        printf("***-07-02*** O     K ***\n");
    else
        printf("***-07-02**** N   G ****\n");

    if((uli & sia) == 1)
        printf("***-07-03*** O     K ***\n");
    else
        printf("***-07-03**** N   G ****\n");

    if((uli & lia) == 0)
        printf("***-07-04*** O     K ***\n");
    else
        printf("***-07-04**** N   G ****\n");

    if((uli & llia) == 1)
        printf("***-07-05*** O     K ***\n");
    else
        printf("***-07-05**** N   G ****\n");

    if((uli & sca) == 0)
        printf("***-07-06*** O     K ***\n");
    else
        printf("***-07-06**** N   G ****\n");

    if((uli & usia) == 1)
        printf("***-07-07*** O     K ***\n");
    else
        printf("***-07-07**** N   G ****\n");

    if((uli & 8) == 0)
        printf("***-07-08*** O     K ***\n");
    else
        printf("***-07-08**** N   G ****\n");

    if((uli & st1.stca) == 1)
        printf("***-07-09*** O     K ***\n");
    else
        printf("***-07-09**** N   G ****\n");

    if((uli & 1<<2) == 0)
        printf("***-07-10*** O     K ***\n");
    else
        printf("***-07-10**** N   G ****\n");
}


int func8()
{
    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    long long int          llia  = 5;
    signed char            sca   = 6;
    unsigned short int     usia  = 7;

    struct tag1 {
                char       stca :1;
                short int  stsia:2;
                int        stia :3;
                } st1;

    st1.stca  = 1;
    st1.stsia = 2;
    st1.stia  = 3;

    if((1 & ca) == 1)
        printf("***-08-01*** O     K ***\n");
    else
        printf("***-08-01**** N   G ****\n");

    if((2 & ia) == 2)
        printf("***-08-02*** O     K ***\n");
    else
        printf("***-08-02**** N   G ****\n");

    if((1 & sia) == 1)
        printf("***-08-03*** O     K ***\n");
    else
        printf("***-08-03**** N   G ****\n");

    if((12 & lia) == 4)
        printf("***-08-04*** O     K ***\n");
    else
        printf("***-08-04**** N   G ****\n");

    if((2147483647 & llia) == 5)
        printf("***-08-05*** O     K ***\n");
    else
        printf("***-08-05**** N   G ****\n");

    if((5 & sca) == 4)
        printf("***-08-06*** O     K ***\n");
    else
        printf("***-08-06**** N   G ****\n");

    if((6 & usia) == 6)
        printf("***-08-07*** O     K ***\n");
    else
        printf("***-08-07**** N   G ****\n");

    if((7 & 8) == 0)
        printf("***-08-08*** O     K ***\n");
    else
        printf("***-08-08**** N   G ****\n");

    if((1 & st1.stca) == 1)
        printf("***-08-09*** O     K ***\n");
    else
        printf("***-08-09**** N   G ****\n");

    if((4 & 1<<2) == 4)
        printf("***-08-10*** O     K ***\n");
    else
        printf("***-08-10**** N   G ****\n");
}


int func9()
{
    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    long long int          llia  = 5;
    signed char            sca   = 6;
    unsigned short int     usia  = 7;

    struct tag1 {
                char       stca :1;
                short int  stsia:2;
                int        stia :3;
                } st1;

    st1.stca  = 1;
    st1.stsia = 2;
    st1.stia  = 3;

    if((st1.stca & ca) == 1)
        printf("***-09-01*** O     K ***\n");
    else
        printf("***-09-01**** N   G ****\n");

    if((st1.stca & ia) == 0)
        printf("***-09-02*** O     K ***\n");
    else
        printf("***-09-02**** N   G ****\n");

    if((st1.stca & sia) == 1)
        printf("***-09-03*** O     K ***\n");
    else
        printf("***-09-03**** N   G ****\n");

    if((st1.stca & lia) == 0)
        printf("***-09-04*** O     K ***\n");
    else
        printf("***-09-04**** N   G ****\n");

    if((st1.stca & llia) == 1)
        printf("***-09-05*** O     K ***\n");
    else
        printf("***-09-05**** N   G ****\n");

    if((st1.stca & sca) == 0)
        printf("***-09-06*** O     K ***\n");
    else
        printf("***-09-06**** N   G ****\n");

    if((st1.stca & usia) == 1)
        printf("***-09-07*** O     K ***\n");
    else
        printf("***-09-07**** N   G ****\n");

    if((st1.stca & 8) == 0)
        printf("***-09-08*** O     K ***\n");
    else
        printf("***-09-08**** N   G ****\n");

    if((st1.stia & st1.stca) == 1)
        printf("***-09-09*** O     K ***\n");
    else
        printf("***-09-09**** N   G ****\n");

    if((st1.stia & 1<<2) == 0)
        printf("***-09-10*** O     K ***\n");
    else
        printf("***-09-10**** N   G ****\n");
}


int func10()
{
    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    long long int          llia  = 5;
    signed char            sca   = 6;
    unsigned short int     usia  = 7;

    struct tag1 {
                char       stca :1;
                short int  stsia:2;
                int        stia :3;
                } st1;

    st1.stca  = 1;
    st1.stsia = 2;
    st1.stia  = 3;

    if((st1.stca + 2 & ca) == 1)
        printf("***-10-01*** O     K ***\n");
    else
        printf("***-10-01**** N   G ****\n");

    if((sizeof(short int) & ia) == 2)
        printf("***-10-02*** O     K ***\n");
    else
        printf("***-10-02**** N   G ****\n");

    if(((short int)ia & sia) == 2)
        printf("***-10-03*** O     K ***\n");
    else
        printf("***-10-03**** N   G ****\n");

    if((ia*sia & lia) == 4)
        printf("***-10-04*** O     K ***\n");
    else
        printf("***-10-04**** N   G ****\n");

    if((sizeof(short int) * sizeof(int) & llia) == 0)
        printf("***-10-05*** O     K ***\n");
    else
        printf("***-10-05**** N   G ****\n");

    if((ca<<1 & sca) == 2)
        printf("***-10-06*** O     K ***\n");
    else
        printf("***-10-06**** N   G ****\n");

    if((sia%ia & usia) == 1)
        printf("***-10-07*** O     K ***\n");
    else
        printf("***-10-07**** N   G ****\n");

    if((1+7 & 8) == 8)
        printf("***-10-08*** O     K ***\n");
    else
        printf("***-10-08**** N   G ****\n");

    if((!1 == 1 & st1.stca) == 0)
        printf("***-10-09*** O     K ***\n");
    else
        printf("***-10-09**** N   G ****\n");

    if((16>>2 & 1<<2) == 4)
        printf("***-10-10*** O     K ***\n");
    else
        printf("***-10-10**** N   G ****\n");
}
