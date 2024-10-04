#include <stdio.h>
int func10 (void);
int func9 (void);
int func8 (void);
int func7 (void);
int func6 (void);
int func5 (void);
int func4 (void);
int func3 (void);
int func2 (void);
int func1 (void);

#ifdef nollint
#define l_l_int  long int
#else
#define l_l_int  long long int
#endif
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
    func9();
    func10();
    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}


int 
func1 (void)
{
    char                   c     = 1;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    l_l_int                llia  = 5;
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

    if((c ^ ca) == 0)
        printf("***-01-01*** O     K ***\n");
    else
        printf("***-01-01**** N   G ****\n");

    if((c ^ ia) == 3)
        printf("***-01-02*** O     K ***\n");
    else
        printf("***-01-02**** N   G ****\n");

    if((c ^ sia) == 2)
        printf("***-01-03*** O     K ***\n");
    else
        printf("***-01-03**** N   G ****\n");

    if((c ^ lia) == 5)
        printf("***-01-04*** O     K ***\n");
    else
        printf("***-01-04**** N   G ****\n");

    if((c ^ llia) == 4)
        printf("***-01-05*** O     K ***\n");
    else
        printf("***-01-05**** N   G ****\n");

    if((c ^ sca) == 7)
        printf("***-01-06*** O     K ***\n");
    else
        printf("***-01-06**** N   G ****\n");

    if((c ^ usia) == 6)
        printf("***-01-07*** O     K ***\n");
    else
        printf("***-01-07**** N   G ****\n");

    if((c ^ 8) == 9)
        printf("***-01-08*** O     K ***\n");
    else
        printf("***-01-08**** N   G ****\n");

    printf("***-01-09*** O     K ***\n");

    if((c ^ st1.stsia == 0) == 1)
        printf("***-01-10*** O     K ***\n");
    else
        printf("***-01-10**** N   G ****\n");
}


int 
func2 (void)
{
    int                    i     = 1;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    l_l_int                llia  = 5;
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

    if((i ^ ca) == 0)
        printf("***-02-01*** O     K ***\n");
    else
        printf("***-02-01**** N   G ****\n");

    if((i ^ ia) == 3)
        printf("***-02-02*** O     K ***\n");
    else
        printf("***-02-02**** N   G ****\n");

    if((i ^ sia) == 2)
        printf("***-02-03*** O     K ***\n");
    else
        printf("***-02-03**** N   G ****\n");

    if((i ^ lia) == 5)
        printf("***-02-04*** O     K ***\n");
    else
        printf("***-02-04**** N   G ****\n");

    if((i ^ llia) == 4)
        printf("***-02-05*** O     K ***\n");
    else
        printf("***-02-05**** N   G ****\n");

    if((i ^ sca) == 7)
        printf("***-02-06*** O     K ***\n");
    else
        printf("***-02-06**** N   G ****\n");

    if((i ^ usia) == 6)
        printf("***-02-07*** O     K ***\n");
    else
        printf("***-02-07**** N   G ****\n");

    if((i ^ 8) == 9)
        printf("***-02-08*** O     K ***\n");
    else
        printf("***-02-08**** N   G ****\n");

    printf("***-02-09*** O     K ***\n");

    if((i ^ 1 == 0) == 1)
        printf("***-02-10*** O     K ***\n");
    else
        printf("***-02-10**** N   G ****\n");
}


int 
func3 (void)
{
    short int              si    = 1;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    l_l_int                llia  = 5;
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

    if((si ^ ca) == 0)
        printf("***-03-01*** O     K ***\n");
    else
        printf("***-03-01**** N   G ****\n");

    if((si ^ ia) == 3)
        printf("***-03-02*** O     K ***\n");
    else
        printf("***-03-02**** N   G ****\n");

    if((si ^ sia) == 2)
        printf("***-03-03*** O     K ***\n");
    else
        printf("***-03-03**** N   G ****\n");

    if((si ^ lia) == 5)
        printf("***-03-04*** O     K ***\n");
    else
        printf("***-03-04**** N   G ****\n");

    if((si ^ llia) == 4)
        printf("***-03-05*** O     K ***\n");
    else
        printf("***-03-05**** N   G ****\n");

    if((si ^ sca) == 7)
        printf("***-03-06*** O     K ***\n");
    else
        printf("***-03-06**** N   G ****\n");

    if((si ^ usia) == 6)
        printf("***-03-07*** O     K ***\n");
    else
        printf("***-03-07**** N   G ****\n");

    if((si ^ 8) == 9)
        printf("***-03-08*** O     K ***\n");
    else
        printf("***-03-08**** N   G ****\n");

    printf("***-03-09*** O     K ***\n");

    if((si ^ 1 == 1) == 0)
        printf("***-03-10*** O     K ***\n");
    else
        printf("***-03-10**** N   G ****\n");
}


int 
func4 (void)
{
    long int               li    = 1;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    l_l_int                llia  = 5;
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

    if((li ^ ca) == 0)
        printf("***-04-01*** O     K ***\n");
    else
        printf("***-04-01**** N   G ****\n");

    if((li ^ ia) == 3)
        printf("***-04-02*** O     K ***\n");
    else
        printf("***-04-02**** N   G ****\n");

    if((li ^ sia) == 2)
        printf("***-04-03*** O     K ***\n");
    else
        printf("***-04-03**** N   G ****\n");

    if((li ^ lia) == 5)
        printf("***-04-04*** O     K ***\n");
    else
        printf("***-04-04**** N   G ****\n");

    if((li ^ llia) == 4)
        printf("***-04-05*** O     K ***\n");
    else
        printf("***-04-05**** N   G ****\n");

    if((li ^ sca) == 7)
        printf("***-04-06*** O     K ***\n");
    else
        printf("***-04-06**** N   G ****\n");

    if((li ^ usia) == 6)
        printf("***-04-07*** O     K ***\n");
    else
        printf("***-04-07**** N   G ****\n");

    if((li ^ 8) == 9)
        printf("***-04-08*** O     K ***\n");
    else
        printf("***-04-08**** N   G ****\n");

    printf("***-04-09*** O     K ***\n");

    if((li ^ 1 != 1) == 1)
        printf("***-04-10*** O     K ***\n");
    else
        printf("***-04-10**** N   G ****\n");
}


int 
func5 (void)
{
    l_l_int                lli   = 1;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    l_l_int                llia  = 5;
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

    if((lli ^ ca) == 0)
        printf("***-05-01*** O     K ***\n");
    else
        printf("***-05-01**** N   G ****\n");

    if((lli ^ ia) == 3)
        printf("***-05-02*** O     K ***\n");
    else
        printf("***-05-02**** N   G ****\n");

    if((lli ^ sia) == 2)
        printf("***-05-03*** O     K ***\n");
    else
        printf("***-05-03**** N   G ****\n");

    if((lli ^ lia) == 5)
        printf("***-05-04*** O     K ***\n");
    else
        printf("***-05-04**** N   G ****\n");

    if((lli ^ llia) == 4)
        printf("***-05-05*** O     K ***\n");
    else
        printf("***-05-05**** N   G ****\n");

    if((lli ^ sca) == 7)
        printf("***-05-06*** O     K ***\n");
    else
        printf("***-05-06**** N   G ****\n");

    if((lli ^ usia) == 6)
        printf("***-05-07*** O     K ***\n");
    else
        printf("***-05-07**** N   G ****\n");

    if((lli ^ 8) == 9)
        printf("***-05-08*** O     K ***\n");
    else
        printf("***-05-08**** N   G ****\n");

    printf("***-05-09*** O     K ***\n");

    if((lli ^ 1 != 0) == 0)
        printf("***-05-10*** O     K ***\n");
    else
        printf("***-05-10**** N   G ****\n");
}


int 
func6 (void)
{
    signed long int        sli   = 1;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    l_l_int                llia  = 5;
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

    if((sli ^ ca) == 0)
        printf("***-06-01*** O     K ***\n");
    else
        printf("***-06-01**** N   G ****\n");

    if((sli ^ ia) == 3)
        printf("***-06-02*** O     K ***\n");
    else
        printf("***-06-02**** N   G ****\n");

    if((sli ^ sia) == 2)
        printf("***-06-03*** O     K ***\n");
    else
        printf("***-06-03**** N   G ****\n");

    if((sli ^ lia) == 5)
        printf("***-06-04*** O     K ***\n");
    else
        printf("***-06-04**** N   G ****\n");

    if((sli ^ llia) == 4)
        printf("***-06-05*** O     K ***\n");
    else
        printf("***-06-05**** N   G ****\n");

    if((sli ^ sca) == 7)
        printf("***-06-06*** O     K ***\n");
    else
        printf("***-06-06**** N   G ****\n");

    if((sli ^ usia) == 6)
        printf("***-06-07*** O     K ***\n");
    else
        printf("***-06-07**** N   G ****\n");

    if((sli ^ 8) == 9)
        printf("***-06-08*** O     K ***\n");
    else
        printf("***-06-08**** N   G ****\n");

    printf("***-06-09*** O     K ***\n");

    if((sli ^ sizeof(int)) == 5)
        printf("***-06-10*** O     K ***\n");
    else
        printf("***-06-10**** N   G ****\n");
}


int 
func7 (void)
{
    unsigned long int        uli   = 1;

    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    l_l_int                llia  = 5;
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

    if((uli ^ ca) == 0)
        printf("***-07-01*** O     K ***\n");
    else
        printf("***-07-01**** N   G ****\n");

    if((uli ^ ia) == 3)
        printf("***-07-02*** O     K ***\n");
    else
        printf("***-07-02**** N   G ****\n");

    if((uli ^ sia) == 2)
        printf("***-07-03*** O     K ***\n");
    else
        printf("***-07-03**** N   G ****\n");

    if((uli ^ lia) == 5)
        printf("***-07-04*** O     K ***\n");
    else
        printf("***-07-04**** N   G ****\n");

    if((uli ^ llia) == 4)
        printf("***-07-05*** O     K ***\n");
    else
        printf("***-07-05**** N   G ****\n");

    if((uli ^ sca) == 7)
        printf("***-07-06*** O     K ***\n");
    else
        printf("***-07-06**** N   G ****\n");

    if((uli ^ usia) == 6)
        printf("***-07-07*** O     K ***\n");
    else
        printf("***-07-07**** N   G ****\n");

    if((uli ^ 8) == 9)
        printf("***-07-08*** O     K ***\n");
    else
        printf("***-07-08**** N   G ****\n");

    printf("***-07-09*** O     K ***\n");

    if((uli ^ 1<<2) == 5)
        printf("***-07-10*** O     K ***\n");
    else
        printf("***-07-10**** N   G ****\n");
}


int 
func8 (void)
{
    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    l_l_int                llia  = 5;
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

    if((1 ^ ca) == 0)
        printf("***-08-01*** O     K ***\n");
    else
        printf("***-08-01**** N   G ****\n");

    if((2 ^ ia) == 0)
        printf("***-08-02*** O     K ***\n");
    else
        printf("***-08-02**** N   G ****\n");

    if((1 ^ sia) == 2)
        printf("***-08-03*** O     K ***\n");
    else
        printf("***-08-03**** N   G ****\n");

    if((12 ^ lia) == 8)
        printf("***-08-04*** O     K ***\n");
    else
        printf("***-08-04**** N   G ****\n");

    if((2147483647 ^ llia) == 2147483642)
        printf("***-08-05*** O     K ***\n");
    else
        printf("***-08-05**** N   G ****\n");

    if((5 ^ sca) == 3)
        printf("***-08-06*** O     K ***\n");
    else
        printf("***-08-06**** N   G ****\n");

    if((6 ^ usia) == 1)
        printf("***-08-07*** O     K ***\n");
    else
        printf("***-08-07**** N   G ****\n");

    if((7 ^ 8) == 15)
        printf("***-08-08*** O     K ***\n");
    else
        printf("***-08-08**** N   G ****\n");

    printf("***-08-09*** O     K ***\n");

    if((4 ^ 1<<2) == 0)
        printf("***-08-10*** O     K ***\n");
    else
        printf("***-08-10**** N   G ****\n");
}


int 
func9 (void)
{
    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    l_l_int                llia  = 5;
    signed char            sca   = 6;
    unsigned short int     usia  = 7;

    struct tag1 {
                signed char stca :1;
                short int   stsia:2;
                int         stia :3;
                } st1;

    st1.stca  = 1;
    st1.stsia = 2;
    st1.stia  = 3;

    if((st1.stca ^ ca) == -2)
        printf("***-09-01*** O     K ***\n");
    else
        printf("***-09-01**** N   G ****\n");

    if((st1.stca ^ ia) == -3)
        printf("***-09-02*** O     K ***\n");
    else
        printf("***-09-02**** N   G ****\n");

    if((st1.stca ^ sia) == -4)
        printf("***-09-03*** O     K ***\n");
    else
        printf("***-09-03**** N   G ****\n");

    if((st1.stca ^ lia) == -5)
        printf("***-09-04*** O     K ***\n");
    else
        printf("***-09-04**** N   G ****\n");

    if((st1.stca ^ llia) == -6)
        printf("***-09-05*** O     K ***\n");
    else
        printf("***-09-05**** N   G ****\n");

    if((st1.stca ^ sca) == -7)
        printf("***-09-06*** O     K ***\n");
    else
        printf("***-09-06**** N   G ****\n");

    if((st1.stca ^ usia) == -8)
        printf("***-09-07*** O     K ***\n");
    else
        printf("***-09-07**** N   G ****\n");

    if((st1.stca ^ 8) == -9)
        printf("***-09-08*** O     K ***\n");
    else
        printf("***-09-08**** N   G ****\n");

    printf("***-09-09*** O     K ***\n");

    if((st1.stia ^ 1<<2) == 7)
        printf("***-09-10*** O     K ***\n");
    else
        printf("***-09-10**** N   G ****\n");
}


int 
func10 (void)
{
    char                   ca    = 1;
    int                    ia    = 2;
    short int              sia   = 3;
    long int               lia   = 4;
    l_l_int                llia  = 5;
    signed char            sca   = 6;
    unsigned short int     usia  = 7;

    struct tag1 {
                signed char stca :1;
                short int   stsia:2;
                int         stia :3;
                } st1;

    st1.stca  = 1;
    st1.stsia = 2;
    st1.stia  = 3;

    if((st1.stca + 2 ^ ca) == 0)
        printf("***-10-01*** O     K ***\n");
    else
        printf("***-10-01**** N   G ****\n");

    if((sizeof(short int) ^ ia) == 0)
        printf("***-10-02*** O     K ***\n");
    else
        printf("***-10-02**** N   G ****\n");

    if(((short int)ia ^ sia) == 1)
        printf("***-10-03*** O     K ***\n");
    else
        printf("***-10-03**** N   G ****\n");

    if((ia*sia ^ lia) == 2)
        printf("***-10-04*** O     K ***\n");
    else
        printf("***-10-04**** N   G ****\n");

    if((sizeof(short int) * sizeof(int) ^ llia) == 13)
        printf("***-10-05*** O     K ***\n");
    else
        printf("***-10-05**** N   G ****\n");

    if((ca<<1 ^ sca) == 4)
        printf("***-10-06*** O     K ***\n");
    else
        printf("***-10-06**** N   G ****\n");

    if((sia%ia ^ usia) == 6)
        printf("***-10-07*** O     K ***\n");
    else
        printf("***-10-07**** N   G ****\n");

    if((1+7 ^ 8) == 0)
        printf("***-10-08*** O     K ***\n");
    else
        printf("***-10-08**** N   G ****\n");

    if((!1 == 1 ^ st1.stca) == -1)
        printf("***-10-09*** O     K ***\n");
    else
        printf("***-10-09**** N   G ****\n");

    if((16>>2 ^ 1<<2) == 0)
        printf("***-10-10*** O     K ***\n");
    else
        printf("***-10-10**** N   G ****\n");
}
