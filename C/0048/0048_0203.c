#include <stdio.h>
int func14 (void);
int func13 (void);
int func12 (void);
int func11 (void);
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
    func11();
    func12();
    func13();
    func14();
    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}


int 
func1 (void)
{
    char                   c     = 1;

    char                   ca    = 0;
    int                    ia    = 4294967295;
    short int              sia   = 2;
    long int               lia   = 3;
    l_l_int                llia  = ia+2;
    float                  flta  = .00000000000000000000000000000000001;
    double                 dbla  = 0;
    long double            ldbla = .25;
    signed char            sca   = 0;
    unsigned short int     usia  = 7;

    int                    *pi;
    int                    rpi   = 8;

    struct tag1 {
                char       stca :1;
                short int  stsia:2;
                int        stia :3;
                } st1;

    st1.stca  = 0;
    st1.stsia = 1;
    st1.stia  = 2;

    pi   = &rpi;

    if((c && ca) == 0)
        printf("***-01-01*** O     K ***\n");
    else
        printf("***-01-01**** N   G ****\n");

    if((c && ia) == 1)
        printf("***-01-02*** O     K ***\n");
    else
        printf("***-01-02**** N   G ****\n");

    if((c && sia) == 1)
        printf("***-01-03*** O     K ***\n");
    else
        printf("***-01-03**** N   G ****\n");

    if((c && lia) == 1)
        printf("***-01-04*** O     K ***\n");
    else
        printf("***-01-04**** N   G ****\n");

    if((c && llia) == 1)
        printf("***-01-05*** O     K ***\n");
    else
        printf("***-01-05**** N   G ****\n");

    if((c && flta) == 1)
        printf("***-01-06*** O     K ***\n");
    else
        printf("***-01-06**** N   G ****\n");

    if((c && dbla) == 0)
        printf("***-01-07*** O     K ***\n");
    else
        printf("***-01-07**** N   G ****\n");

    if((c && ldbla) == 1)
        printf("***-01-08*** O     K ***\n");
    else
        printf("***-01-08**** N   G ****\n");

    if((c && sca) == 0)
        printf("***-01-09*** O     K ***\n");
    else
        printf("***-01-09**** N   G ****\n");

    if((c && usia) == 1)
        printf("***-01-10*** O     K ***\n");
    else
        printf("***-01-10**** N   G ****\n");

    if((c && *pi) == 1)
        printf("***-01-11*** O     K ***\n");
    else
        printf("***-01-11**** N   G ****\n");

    if((c && 8) == 1)
        printf("***-01-12*** O     K ***\n");
    else
        printf("***-01-12**** N   G ****\n");

    if((c && st1.stca) == 0)
        printf("***-01-13*** O     K ***\n");
    else
        printf("***-01-13**** N   G ****\n");

    if((c && c | sia) == 1)
        printf("***-01-14*** O     K ***\n");
    else
        printf("***-01-14**** N   G ****\n");
}


int 
func2 (void)
{
    int                    i     = 0;

    char                   ca    = 0;
    int                    ia    = 4294967295;
    short int              sia   = 2;
    long int               lia   = 3;
    l_l_int                llia  = ia+2;
    float                  flta  = .00000000000000000000000000000000001;
    double                 dbla  = 0;
    long double            ldbla = .25;
    signed char            sca   = 0;
    unsigned short int     usia  = 7;

    int                    *pi;
    int                    rpi   = 8;

    struct tag1 {
                char       stca :1;
                short int  stsia:2;
                int        stia :3;
                } st1;

    st1.stca  = 0;
    st1.stsia = 1;
    st1.stia  = 2;

    pi   = &rpi;

    if((i && ca) == 0)
        printf("***-02-01*** O     K ***\n");
    else
        printf("***-02-01**** N   G ****\n");

    if((i && ia) == 0)
        printf("***-02-02*** O     K ***\n");
    else
        printf("***-02-02**** N   G ****\n");

    if((i && sia) == 0)
        printf("***-02-03*** O     K ***\n");
    else
        printf("***-02-03**** N   G ****\n");

    if((i && lia) == 0)
        printf("***-02-04*** O     K ***\n");
    else
        printf("***-02-04**** N   G ****\n");

    if((i && llia) == 0)
        printf("***-02-05*** O     K ***\n");
    else
        printf("***-02-05**** N   G ****\n");

    if((i && flta) == 0)
        printf("***-02-06*** O     K ***\n");
    else
        printf("***-02-06**** N   G ****\n");

    if((i && dbla) == 0)
        printf("***-02-07*** O     K ***\n");
    else
        printf("***-02-07**** N   G ****\n");

    if((i && ldbla) == 0)
        printf("***-02-08*** O     K ***\n");
    else
        printf("***-02-08**** N   G ****\n");

    if((i && sca) == 0)
        printf("***-02-09*** O     K ***\n");
    else
        printf("***-02-09**** N   G ****\n");

    if((i && usia) == 0)
        printf("***-02-10*** O     K ***\n");
    else
        printf("***-02-10**** N   G ****\n");

    if((i && *pi) == 0)
        printf("***-02-11*** O     K ***\n");
    else
        printf("***-02-11**** N   G ****\n");

    if((i && 8) == 0)
        printf("***-02-12*** O     K ***\n");
    else
        printf("***-02-12**** N   G ****\n");

    if((i && st1.stca) == 0)
        printf("***-02-13*** O     K ***\n");
    else
        printf("***-02-13**** N   G ****\n");

    if((i && i | sia) == 0)
        printf("***-02-14*** O     K ***\n");
    else
        printf("***-02-14**** N   G ****\n");
}


int 
func3 (void)
{
    short int              si    = 1;

    char                   ca    = 0;
    int                    ia    = 4294967295;
    short int              sia   = 2;
    long int               lia   = 3;
    l_l_int                llia  = ia+2;
    float                  flta  = .00000000000000000000000000000000001;
    double                 dbla  = 0;
    long double            ldbla = .25;
    signed char            sca   = 0;
    unsigned short int     usia  = 7;

    int                    *pi;
    int                    rpi   = 8;

    struct tag1 {
                char       stca :1;
                short int  stsia:2;
                int        stia :3;
                } st1;

    st1.stca  = 0;
    st1.stsia = 1;
    st1.stia  = 2;

    pi   = &rpi;

    if((si && ca) == 0)
        printf("***-03-01*** O     K ***\n");
    else
        printf("***-03-01**** N   G ****\n");

    if((si && ia) == 1)
        printf("***-03-02*** O     K ***\n");
    else
        printf("***-03-02**** N   G ****\n");

    if((si && sia) == 1)
        printf("***-03-03*** O     K ***\n");
    else
        printf("***-03-03**** N   G ****\n");

    if((si && lia) == 1)
        printf("***-03-04*** O     K ***\n");
    else
        printf("***-03-04**** N   G ****\n");

    if((si && llia) == 1)
        printf("***-03-05*** O     K ***\n");
    else
        printf("***-03-05**** N   G ****\n");

    if((si && flta) == 1)
        printf("***-03-06*** O     K ***\n");
    else
        printf("***-03-06**** N   G ****\n");

    if((si && dbla) == 0)
        printf("***-03-07*** O     K ***\n");
    else
        printf("***-03-07**** N   G ****\n");

    if((si && ldbla) == 1)
        printf("***-03-08*** O     K ***\n");
    else
        printf("***-03-08**** N   G ****\n");

    if((si && sca) == 0)
        printf("***-03-09*** O     K ***\n");
    else
        printf("***-03-09**** N   G ****\n");

    if((si && usia) == 1)
        printf("***-03-10*** O     K ***\n");
    else
        printf("***-03-10**** N   G ****\n");

    if((si && *pi) == 1)
        printf("***-03-11*** O     K ***\n");
    else
        printf("***-03-11**** N   G ****\n");

    if((si && 8) == 1)
        printf("***-03-12*** O     K ***\n");
    else
        printf("***-03-12**** N   G ****\n");

    if((si && st1.stca) == 0)
        printf("***-03-13*** O     K ***\n");
    else
        printf("***-03-13**** N   G ****\n");

    if((si && si | sia) == 1)
        printf("***-03-14*** O     K ***\n");
    else
        printf("***-03-14**** N   G ****\n");
}


int 
func4 (void)
{
    long int               li    = 1;

    char                   ca    = 0;
    int                    ia    = 4294967295;
    short int              sia   = 2;
    long int               lia   = 3;
    l_l_int                llia  = ia+2;
    float                  flta  = .00000000000000000000000000000000001;
    double                 dbla  = 0;
    long double            ldbla = .25;
    signed char            sca   = 0;
    unsigned short int     usia  = 7;

    int                    *pi;
    int                    rpi   = 8;

    struct tag1 {
                char       stca :1;
                short int  stsia:2;
                int        stia :3;
                } st1;

    st1.stca  = 0;
    st1.stsia = 1;
    st1.stia  = 2;

    pi   = &rpi;

    if((li && ca) == 0)
        printf("***-04-01*** O     K ***\n");
    else
        printf("***-04-01**** N   G ****\n");

    if((li && ia) == 1)
        printf("***-04-02*** O     K ***\n");
    else
        printf("***-04-02**** N   G ****\n");

    if((li && sia) == 1)
        printf("***-04-03*** O     K ***\n");
    else
        printf("***-04-03**** N   G ****\n");

    if((li && lia) == 1)
        printf("***-04-04*** O     K ***\n");
    else
        printf("***-04-04**** N   G ****\n");

    if((li && llia) == 1)
        printf("***-04-05*** O     K ***\n");
    else
        printf("***-04-05**** N   G ****\n");

    if((li && flta) == 1)
        printf("***-04-06*** O     K ***\n");
    else
        printf("***-04-06**** N   G ****\n");

    if((li && dbla) == 0)
        printf("***-04-07*** O     K ***\n");
    else
        printf("***-04-07**** N   G ****\n");

    if((li && ldbla) == 1)
        printf("***-04-08*** O     K ***\n");
    else
        printf("***-04-08**** N   G ****\n");

    if((li && sca) == 0)
        printf("***-04-09*** O     K ***\n");
    else
        printf("***-04-09**** N   G ****\n");

    if((li && usia) == 1)
        printf("***-04-10*** O     K ***\n");
    else
        printf("***-04-10**** N   G ****\n");

    if((li && *pi) == 1)
        printf("***-04-11*** O     K ***\n");
    else
        printf("***-04-11**** N   G ****\n");

    if((li && 8) == 1)
        printf("***-04-12*** O     K ***\n");
    else
        printf("***-04-12**** N   G ****\n");

    if((li && st1.stca) == 0)
        printf("***-04-13*** O     K ***\n");
    else
        printf("***-04-13**** N   G ****\n");

    if((li && ca ^ sia) == 1)
        printf("***-04-14*** O     K ***\n");
    else
        printf("***-04-14**** N   G ****\n");
}


int 
func5 (void)
{
    l_l_int                lli   = 1;

    char                   ca    = 0;
    int                    ia    = 4294967295;
    short int              sia   = 2;
    long int               lia   = 3;
    l_l_int                llia  = ia+2;
    float                  flta  = .00000000000000000000000000000000001;
    double                 dbla  = 0;
    long double            ldbla = .25;
    signed char            sca   = 0;
    unsigned short int     usia  = 7;

    int                    *pi;
    int                    rpi   = 8;

    struct tag1 {
                char       stca :1;
                short int  stsia:2;
                int        stia :3;
                } st1;

    st1.stca  = 0;
    st1.stsia = 1;
    st1.stia  = 2;

    pi   = &rpi;

    if((lli && ca) == 0)
        printf("***-05-01*** O     K ***\n");
    else
        printf("***-05-01**** N   G ****\n");

    if((lli && ia) == 1)
        printf("***-05-02*** O     K ***\n");
    else
        printf("***-05-02**** N   G ****\n");

    if((lli && sia) == 1)
        printf("***-05-03*** O     K ***\n");
    else
        printf("***-05-03**** N   G ****\n");

    if((lli && lia) == 1)
        printf("***-05-04*** O     K ***\n");
    else
        printf("***-05-04**** N   G ****\n");

    if((lli && llia) == 1)
        printf("***-05-05*** O     K ***\n");
    else
        printf("***-05-05**** N   G ****\n");

    if((lli && flta) == 1)
        printf("***-05-06*** O     K ***\n");
    else
        printf("***-05-06**** N   G ****\n");

    if((lli && dbla) == 0)
        printf("***-05-07*** O     K ***\n");
    else
        printf("***-05-07**** N   G ****\n");

    if((lli && ldbla) == 1)
        printf("***-05-08*** O     K ***\n");
    else
        printf("***-05-08**** N   G ****\n");

    if((lli && sca) == 0)
        printf("***-05-09*** O     K ***\n");
    else
        printf("***-05-09**** N   G ****\n");

    if((lli && usia) == 1)
        printf("***-05-10*** O     K ***\n");
    else
        printf("***-05-10**** N   G ****\n");

    if((lli && *pi) == 1)
        printf("***-05-11*** O     K ***\n");
    else
        printf("***-05-11**** N   G ****\n");

    if((lli && 8) == 1)
        printf("***-05-12*** O     K ***\n");
    else
        printf("***-05-12**** N   G ****\n");

    if((lli && st1.stca) == 0)
        printf("***-05-13*** O     K ***\n");
    else
        printf("***-05-13**** N   G ****\n");

    if((lli && sia<<3) == 1)
        printf("***-05-14*** O     K ***\n");
    else
        printf("***-05-14**** N   G ****\n");
}


int 
func6 (void)
{
    float                  flt   = 0.0000005;

    char                   ca    = 0;
    int                    ia    = 4294967295;
    short int              sia   = 2;
    long int               lia   = 3;
    l_l_int                llia  = ia+2;
    float                  flta  = .00000000000000000000000000000000001;
    double                 dbla  = 0;
    long double            ldbla = .25;
    signed char            sca   = 0;
    unsigned short int     usia  = 7;

    int                    *pi;
    int                    rpi   = 8;

    struct tag1 {
                char       stca :1;
                short int  stsia:2;
                int        stia :3;
                } st1;

    st1.stca  = 0;
    st1.stsia = 1;
    st1.stia  = 2;

    pi   = &rpi;

    if((flt && ca) == 0)
        printf("***-06-01*** O     K ***\n");
    else
        printf("***-06-01**** N   G ****\n");

    if((flt && ia) == 1)
        printf("***-06-02*** O     K ***\n");
    else
        printf("***-06-02**** N   G ****\n");

    if((flt && sia) == 1)
        printf("***-06-03*** O     K ***\n");
    else
        printf("***-06-03**** N   G ****\n");

    if((flt && lia) == 1)
        printf("***-06-04*** O     K ***\n");
    else
        printf("***-06-04**** N   G ****\n");

    if((flt && llia) == 1)
        printf("***-06-05*** O     K ***\n");
    else
        printf("***-06-05**** N   G ****\n");

    if((flt && flta) == 1)
        printf("***-06-06*** O     K ***\n");
    else
        printf("***-06-06**** N   G ****\n");

    if((flt && dbla) == 0)
        printf("***-06-07*** O     K ***\n");
    else
        printf("***-06-07**** N   G ****\n");

    if((flt && ldbla) == 1)
        printf("***-06-08*** O     K ***\n");
    else
        printf("***-06-08**** N   G ****\n");

    if((flt && sca) == 0)
        printf("***-06-09*** O     K ***\n");
    else
        printf("***-06-09**** N   G ****\n");

    if((flt && usia) == 1)
        printf("***-06-10*** O     K ***\n");
    else
        printf("***-06-10**** N   G ****\n");

    if((flt && *pi) == 1)
        printf("***-06-11*** O     K ***\n");
    else
        printf("***-06-11**** N   G ****\n");

    if((flt && 8) == 1)
        printf("***-06-12*** O     K ***\n");
    else
        printf("***-06-12**** N   G ****\n");

    if((flt && st1.stca) == 0)
        printf("***-06-13*** O     K ***\n");
    else
        printf("***-06-13**** N   G ****\n");

    if((flt && sia>>1) == 1)
        printf("***-06-14*** O     K ***\n");
    else
        printf("***-06-14**** N   G ****\n");
}


int 
func7 (void)
{
    double                 dbl   = 0;

    char                   ca    = 0;
    int                    ia    = 4294967295;
    short int              sia   = 2;
    long int               lia   = 3;
    l_l_int                llia  = ia+2;
    float                  flta  = .00000000000000000000000000000000001;
    double                 dbla  = 0;
    long double            ldbla = .25;
    signed char            sca   = 0;
    unsigned short int     usia  = 7;

    int                    *pi;
    int                    rpi   = 8;

    struct tag1 {
                char       stca :1;
                short int  stsia:2;
                int        stia :3;
                } st1;

    st1.stca  = 0;
    st1.stsia = 1;
    st1.stia  = 2;

    pi   = &rpi;

    if((dbl && ca) == 0)
        printf("***-07-01*** O     K ***\n");
    else
        printf("***-07-01**** N   G ****\n");

    if((dbl && ia) == 0)
        printf("***-07-02*** O     K ***\n");
    else
        printf("***-07-02**** N   G ****\n");

    if((dbl && sia) == 0)
        printf("***-07-03*** O     K ***\n");
    else
        printf("***-07-03**** N   G ****\n");

    if((dbl && lia) == 0)
        printf("***-07-04*** O     K ***\n");
    else
        printf("***-07-04**** N   G ****\n");

    if((dbl && llia) == 0)
        printf("***-07-05*** O     K ***\n");
    else
        printf("***-07-05**** N   G ****\n");

    if((dbl && flta) == 0)
        printf("***-07-06*** O     K ***\n");
    else
        printf("***-07-06**** N   G ****\n");

    if((dbl && dbla) == 0)
        printf("***-07-07*** O     K ***\n");
    else
        printf("***-07-07**** N   G ****\n");

    if((dbl && ldbla) == 0)
        printf("***-07-08*** O     K ***\n");
    else
        printf("***-07-08**** N   G ****\n");

    if((dbl && sca) == 0)
        printf("***-07-09*** O     K ***\n");
    else
        printf("***-07-09**** N   G ****\n");

    if((dbl && usia) == 0)
        printf("***-07-10*** O     K ***\n");
    else
        printf("***-07-10**** N   G ****\n");

    if((dbl && *pi) == 0)
        printf("***-07-11*** O     K ***\n");
    else
        printf("***-07-11**** N   G ****\n");

    if((dbl && 8) == 0)
        printf("***-07-12*** O     K ***\n");
    else
        printf("***-07-12**** N   G ****\n");

    if((dbl && st1.stca) == 0)
        printf("***-07-13*** O     K ***\n");
    else
        printf("***-07-13**** N   G ****\n");

    if((dbl && sia * 100) == 0)
        printf("***-07-14*** O     K ***\n");
    else
        printf("***-07-14**** N   G ****\n");
}


int 
func8 (void)
{
    long double            ldbl  = 0.0000000000000000005;

    char                   ca    = 0;
    int                    ia    = 4294967295;
    short int              sia   = 2;
    long int               lia   = 3;
    l_l_int                llia  = ia+2;
    float                  flta  = .00000000000000000000000000000000001;
    double                 dbla  = 0;
    long double            ldbla = .25;
    signed char            sca   = 0;
    unsigned short int     usia  = 7;

    int                    *pi;
    int                    rpi   = 8;

    struct tag1 {
                char       stca :1;
                short int  stsia:2;
                int        stia :3;
                } st1;

    st1.stca  = 0;
    st1.stsia = 1;
    st1.stia  = 2;

    pi   = &rpi;

    if((ldbl && ca) == 0)
        printf("***-08-01*** O     K ***\n");
    else
        printf("***-08-01**** N   G ****\n");

    if((ldbl && ia) == 1)
        printf("***-08-02*** O     K ***\n");
    else
        printf("***-08-02**** N   G ****\n");

    if((ldbl && sia) == 1)
        printf("***-08-03*** O     K ***\n");
    else
        printf("***-08-03**** N   G ****\n");

    if((ldbl && lia) == 1)
        printf("***-08-04*** O     K ***\n");
    else
        printf("***-08-04**** N   G ****\n");

    if((ldbl && llia) == 1)
        printf("***-08-05*** O     K ***\n");
    else
        printf("***-08-05**** N   G ****\n");

    if((ldbl && flta) == 1)
        printf("***-08-06*** O     K ***\n");
    else
        printf("***-08-06**** N   G ****\n");

    if((ldbl && dbla) == 0)
        printf("***-08-07*** O     K ***\n");
    else
        printf("***-08-07**** N   G ****\n");

    if((ldbl && ldbla) == 1)
        printf("***-08-08*** O     K ***\n");
    else
        printf("***-08-08**** N   G ****\n");

    if((ldbl && sca) == 0)
        printf("***-08-09*** O     K ***\n");
    else
        printf("***-08-09**** N   G ****\n");

    if((ldbl && usia) == 1)
        printf("***-08-10*** O     K ***\n");
    else
        printf("***-08-10**** N   G ****\n");

    if((ldbl && *pi) == 1)
        printf("***-08-11*** O     K ***\n");
    else
        printf("***-08-11**** N   G ****\n");

    if((ldbl && 8) == 1)
        printf("***-08-12*** O     K ***\n");
    else
        printf("***-08-12**** N   G ****\n");

    if((ldbl && st1.stca) == 0)
        printf("***-08-13*** O     K ***\n");
    else
        printf("***-08-13**** N   G ****\n");

    if((ldbl && sia+10) == 1)
        printf("***-08-14*** O     K ***\n");
    else
        printf("***-08-14**** N   G ****\n");
}


int 
func9 (void)
{
    signed short int       ssi   = -1;

    char                   ca    = 0;
    int                    ia    = 4294967295;
    short int              sia   = 2;
    long int               lia   = 3;
    l_l_int                llia  = ia+2;
    float                  flta  = .00000000000000000000000000000000001;
    double                 dbla  = 0;
    long double            ldbla = .25;
    signed char            sca   = 0;
    unsigned short int     usia  = 7;

    int                    *pi;
    int                    rpi   = 8;

    struct tag1 {
                char       stca :1;
                short int  stsia:2;
                int        stia :3;
                } st1;

    st1.stca  = 0;
    st1.stsia = 1;
    st1.stia  = 2;

    pi   = &rpi;

    if((ssi && ca) == 0)
        printf("***-09-01*** O     K ***\n");
    else
        printf("***-09-01**** N   G ****\n");

    if((ssi && ia) == 1)
        printf("***-09-02*** O     K ***\n");
    else
        printf("***-09-02**** N   G ****\n");

    if((ssi && sia) == 1)
        printf("***-09-03*** O     K ***\n");
    else
        printf("***-09-03**** N   G ****\n");

    if((ssi && lia) == 1)
        printf("***-09-04*** O     K ***\n");
    else
        printf("***-09-04**** N   G ****\n");

    if((ssi && llia) == 1)
        printf("***-09-05*** O     K ***\n");
    else
        printf("***-09-05**** N   G ****\n");

    if((ssi && flta) == 1)
        printf("***-09-06*** O     K ***\n");
    else
        printf("***-09-06**** N   G ****\n");

    if((ssi && dbla) == 0)
        printf("***-09-07*** O     K ***\n");
    else
        printf("***-09-07**** N   G ****\n");

    if((ssi && ldbla) == 1)
        printf("***-09-08*** O     K ***\n");
    else
        printf("***-09-08**** N   G ****\n");

    if((ssi && sca) == 0)
        printf("***-09-09*** O     K ***\n");
    else
        printf("***-09-09**** N   G ****\n");

    if((ssi && usia) == 1)
        printf("***-09-10*** O     K ***\n");
    else
        printf("***-09-10**** N   G ****\n");

    if((ssi && *pi) == 1)
        printf("***-09-11*** O     K ***\n");
    else
        printf("***-09-11**** N   G ****\n");

    if((ssi && 8) == 1)
        printf("***-09-12*** O     K ***\n");
    else
        printf("***-09-12**** N   G ****\n");

    if((ssi && st1.stca) == 0)
        printf("***-09-13*** O     K ***\n");
    else
        printf("***-09-13**** N   G ****\n");

    if((ssi && sia-1) == 1)
        printf("***-09-14*** O     K ***\n");
    else
        printf("***-09-14**** N   G ****\n");
}


int 
func10 (void)
{
    unsigned long int      uli   = 1;

    char                   ca    = 0;
    int                    ia    = 4294967295;
    short int              sia   = 2;
    long int               lia   = 3;
    l_l_int                llia  = ia+2;
    float                  flta  = .00000000000000000000000000000000001;
    double                 dbla  = 0;
    long double            ldbla = .25;
    signed char            sca   = 0;
    unsigned short int     usia  = 7;

    int                    *pi;
    int                    rpi   = 8;

    struct tag1 {
                char       stca :1;
                short int  stsia:2;
                int        stia :3;
                } st1;

    st1.stca  = 0;
    st1.stsia = 1;
    st1.stia  = 2;

    pi   = &rpi;

    if((uli && ca) == 0)
        printf("***-10-01*** O     K ***\n");
    else
        printf("***-10-01**** N   G ****\n");

    if((uli && ia) == 1)
        printf("***-10-02*** O     K ***\n");
    else
        printf("***-10-02**** N   G ****\n");

    if((uli && sia) == 1)
        printf("***-10-03*** O     K ***\n");
    else
        printf("***-10-03**** N   G ****\n");

    if((uli && lia) == 1)
        printf("***-10-04*** O     K ***\n");
    else
        printf("***-10-04**** N   G ****\n");

    if((uli && llia) == 1)
        printf("***-10-05*** O     K ***\n");
    else
        printf("***-10-05**** N   G ****\n");

    if((uli && flta) == 1)
        printf("***-10-06*** O     K ***\n");
    else
        printf("***-10-06**** N   G ****\n");

    if((uli && dbla) == 0)
        printf("***-10-07*** O     K ***\n");
    else
        printf("***-10-07**** N   G ****\n");

    if((uli && ldbla) == 1)
        printf("***-10-08*** O     K ***\n");
    else
        printf("***-10-08**** N   G ****\n");

    if((uli && sca) == 0)
        printf("***-10-09*** O     K ***\n");
    else
        printf("***-10-09**** N   G ****\n");

    if((uli && usia) == 1)
        printf("***-10-10*** O     K ***\n");
    else
        printf("***-10-10**** N   G ****\n");

    if((uli && *pi) == 1)
        printf("***-10-11*** O     K ***\n");
    else
        printf("***-10-11**** N   G ****\n");

    if((uli && 8) == 1)
        printf("***-10-12*** O     K ***\n");
    else
        printf("***-10-12**** N   G ****\n");

    if((uli && st1.stca) == 0)
        printf("***-10-13*** O     K ***\n");
    else
        printf("***-10-13**** N   G ****\n");

    if((uli && sia-1<<2>>1) == 1)
        printf("***-10-14*** O     K ***\n");
    else
        printf("***-10-14**** N   G ****\n");
}


int 
func11 (void)
{
    unsigned long int      *puli;
    unsigned long int      ruli  = 1;

    char                   ca    = 0;
    int                    ia    = 4294967295;
    short int              sia   = 2;
    long int               lia   = 3;
    l_l_int                llia  = ia+2;
    float                  flta  = .00000000000000000000000000000000001;
    double                 dbla  = 0;
    long double            ldbla = .25;
    signed char            sca   = 0;
    unsigned short int     usia  = 7;

    int                    *pi;
    int                    rpi   = 8;

    struct tag1 {
                char       stca :1;
                short int  stsia:2;
                int        stia :3;
                } st1;

    st1.stca  = 0;
    st1.stsia = 1;
    st1.stia  = 2;

    puli = &ruli;
    pi   = &rpi;

    if((*puli && ca) == 0)
        printf("***-11-01*** O     K ***\n");
    else
        printf("***-11-01**** N   G ****\n");

    if((*puli && ia) == 1)
        printf("***-11-02*** O     K ***\n");
    else
        printf("***-11-02**** N   G ****\n");

    if((*puli && sia) == 1)
        printf("***-11-03*** O     K ***\n");
    else
        printf("***-11-03**** N   G ****\n");

    if((*puli && lia) == 1)
        printf("***-11-04*** O     K ***\n");
    else
        printf("***-11-04**** N   G ****\n");

    if((*puli && llia) == 1)
        printf("***-11-05*** O     K ***\n");
    else
        printf("***-11-05**** N   G ****\n");

    if((*puli && flta) == 1)
        printf("***-11-06*** O     K ***\n");
    else
        printf("***-11-06**** N   G ****\n");

    if((*puli && dbla) == 0)
        printf("***-11-07*** O     K ***\n");
    else
        printf("***-11-07**** N   G ****\n");

    if((*puli && ldbla) == 1)
        printf("***-11-08*** O     K ***\n");
    else
        printf("***-11-08**** N   G ****\n");

    if((*puli && sca) == 0)
        printf("***-11-09*** O     K ***\n");
    else
        printf("***-11-09**** N   G ****\n");

    if((*puli && usia) == 1)
        printf("***-11-10*** O     K ***\n");
    else
        printf("***-11-10**** N   G ****\n");

    if((*puli && *pi) == 1)
        printf("***-11-11*** O     K ***\n");
    else
        printf("***-11-11**** N   G ****\n");

    if((*puli && 8) == 1)
        printf("***-11-12*** O     K ***\n");
    else
        printf("***-11-12**** N   G ****\n");

    if((*puli && st1.stca) == 0)
        printf("***-11-13*** O     K ***\n");
    else
        printf("***-11-13**** N   G ****\n");

    if((*puli && sia|ia) == 1)
        printf("***-11-14*** O     K ***\n");
    else
        printf("***-11-14**** N   G ****\n");
}


int 
func12 (void)
{
    char                   ca    = 0;
    int                    ia    = 4294967295;
    short int              sia   = 2;
    long int               lia   = 3;
    l_l_int                llia  = ia+2;
    float                  flta  = .00000000000000000000000000000000001;
    double                 dbla  = 0;
    long double            ldbla = .25;
    signed char            sca   = 0;
    unsigned short int     usia  = 7;

    int                    *pi;
    int                    rpi   = 8;

    struct tag1 {
                char       stca :1;
                short int  stsia:2;
                int        stia :3;
                } st1;

    st1.stca  = 0;
    st1.stsia = 1;
    st1.stia  = 2;

    pi   = &rpi;

    if((st1.stsia && ca) == 0)
        printf("***-12-01*** O     K ***\n");
    else
        printf("***-12-01**** N   G ****\n");

    if((st1.stsia && ia) == 1)
        printf("***-12-02*** O     K ***\n");
    else
        printf("***-12-02**** N   G ****\n");

    if((st1.stsia && sia) == 1)
        printf("***-12-03*** O     K ***\n");
    else
        printf("***-12-03**** N   G ****\n");

    if((st1.stsia && lia) == 1)
        printf("***-12-04*** O     K ***\n");
    else
        printf("***-12-04**** N   G ****\n");

    if((st1.stsia && llia) == 1)
        printf("***-12-05*** O     K ***\n");
    else
        printf("***-12-05**** N   G ****\n");

    if((st1.stsia && flta) == 1)
        printf("***-12-06*** O     K ***\n");
    else
        printf("***-12-06**** N   G ****\n");

    if((st1.stsia && dbla) == 0)
        printf("***-12-07*** O     K ***\n");
    else
        printf("***-12-07**** N   G ****\n");

    if((st1.stsia && ldbla) == 1)
        printf("***-12-08*** O     K ***\n");
    else
        printf("***-12-08**** N   G ****\n");

    if((st1.stsia && sca) == 0)
        printf("***-12-09*** O     K ***\n");
    else
        printf("***-12-09**** N   G ****\n");

    if((st1.stsia && usia) == 1)
        printf("***-12-10*** O     K ***\n");
    else
        printf("***-12-10**** N   G ****\n");

    if((st1.stsia && *pi) == 1)
        printf("***-12-11*** O     K ***\n");
    else
        printf("***-12-11**** N   G ****\n");

    if((st1.stsia && 8) == 1)
        printf("***-12-12*** O     K ***\n");
    else
        printf("***-12-12**** N   G ****\n");

    if((st1.stsia && st1.stca) == 0)
        printf("***-12-13*** O     K ***\n");
    else
        printf("***-12-13**** N   G ****\n");

    if((st1.stsia && sia<<ia+2-1*1) == 1)
        printf("***-12-14*** O     K ***\n");
    else
        printf("***-12-14**** N   G ****\n");
}


int 
func13 (void)
{
    char                   ca    = 0;
    int                    ia    = 4294967295;
    short int              sia   = 2;
    long int               lia   = 3;
    l_l_int                llia  = ia+2;
    float                  flta  = .00000000000000000000000000000000001;
    double                 dbla  = 0;
    long double            ldbla = .25;
    signed char            sca   = 0;
    unsigned short int     usia  = 7;

    int                    *pi;
    int                    rpi   = 8;

    struct tag1 {
                char       stca :1;
                short int  stsia:2;
                int        stia :3;
                } st1;

    st1.stca  = 0;
    st1.stsia = 1;
    st1.stia  = 2;

    pi   = &rpi;

    if((0 && ca) == 0)
        printf("***-13-01*** O     K ***\n");
    else
        printf("***-13-01**** N   G ****\n");

    if((.00000001 && ia) == 1)
        printf("***-13-02*** O     K ***\n");
    else
        printf("***-13-02**** N   G ****\n");

    if((4294967295 && sia) == 1)
        printf("***-13-03*** O     K ***\n");
    else
        printf("***-13-03**** N   G ****\n");

    if((2147483647 && lia) == 1)
        printf("***-13-04*** O     K ***\n");
    else
        printf("***-13-04**** N   G ****\n");

    if((1 && llia) == 1)
        printf("***-13-05*** O     K ***\n");
    else
        printf("***-13-05**** N   G ****\n");

    if((0 && flta) == 0)
        printf("***-13-06*** O     K ***\n");
    else
        printf("***-13-06**** N   G ****\n");

    if((0.0000001 && dbla) == 0)
        printf("***-13-07*** O     K ***\n");
    else
        printf("***-13-07**** N   G ****\n");

    if((10000000u && ldbla) == 1)
        printf("***-13-08*** O     K ***\n");
    else
        printf("***-13-08**** N   G ****\n");

    if((256l && sca) == 0)
        printf("***-13-09*** O     K ***\n");
    else
        printf("***-13-09**** N   G ****\n");

    if((512ul && usia) == 1)
        printf("***-13-10*** O     K ***\n");
    else
        printf("***-13-10**** N   G ****\n");

    if((1.0e+10 && *pi) == 1)
        printf("***-13-11*** O     K ***\n");
    else
        printf("***-13-11**** N   G ****\n");

    if((1.5f && 8) == 1)
        printf("***-13-12*** O     K ***\n");
    else
        printf("***-13-12**** N   G ****\n");

    if((125.25l && st1.stca) == 0)
        printf("***-13-13*** O     K ***\n");
    else
        printf("***-13-13**** N   G ****\n");

    if((4294967295 && sia<<ia+2-1*1) == 1)
        printf("***-13-14*** O     K ***\n");
    else
        printf("***-13-14**** N   G ****\n");
}


int 
func14 (void)
{
    char                   ca    = 0;
    int                    ia    = 4294967295;
    short int              sia   = 2;
    long int               lia   = 3;
    l_l_int                llia  = ia+2;
    float                  flta  = .00000000000000000000000000000000001;
    double                 dbla  = 0;
    long double            ldbla = .25;
    signed char            sca   = 0;
    unsigned short int     usia  = 7;

    int                    *pi;
    int                    rpi   = 8;

    struct tag1 {
                char       stca :1;
                short int  stsia:2;
                int        stia :3;
                } st1;

    st1.stca  = 0;
    st1.stsia = 1;
    st1.stia  = 2;

    pi   = &rpi;

    if((ia|sia && ca) == 0)
        printf("***-14-01*** O     K ***\n");
    else
        printf("***-14-01**** N   G ****\n");

    if((sia^2 && ia) == 0)
        printf("***-14-02*** O     K ***\n");
    else
        printf("***-14-02**** N   G ****\n");

    if((lia==3 && sia) == 1)
        printf("***-14-03*** O     K ***\n");
    else
        printf("***-14-03**** N   G ****\n");

    if((sia!=2 && lia) == 0)
        printf("***-14-04*** O     K ***\n");
    else
        printf("***-14-04**** N   G ****\n");

    if((lia<5 && llia) == 1)
        printf("***-14-05*** O     K ***\n");
    else
        printf("***-14-05**** N   G ****\n");

    if((sia<<lia && flta) == 1)
        printf("***-14-06*** O     K ***\n");
    else
        printf("***-14-06**** N   G ****\n");

    if((sia*lia && dbla) == 0)
        printf("***-14-07*** O     K ***\n");
    else
        printf("***-14-07**** N   G ****\n");

    if((lia/sia && ldbla) == 1)
        printf("***-14-08*** O     K ***\n");
    else
        printf("***-14-08**** N   G ****\n");

    if((lia%sia && sca) == 0)
        printf("***-14-09*** O     K ***\n");
    else
        printf("***-14-09**** N   G ****\n");

    if(((int)sia && usia) == 1)
        printf("***-14-10*** O     K ***\n");
    else
        printf("***-14-10**** N   G ****\n");

    if((sizeof(int)*sizeof(short int) && *pi) == 1)
        printf("***-14-11*** O     K ***\n");
    else
        printf("***-14-11**** N   G ****\n");

    if((!0 && 8) == 1)
        printf("***-14-12*** O     K ***\n");
    else
        printf("***-14-12**** N   G ****\n");

    if((+125.25l && st1.stca) == 0)
        printf("***-14-13*** O     K ***\n");
    else
        printf("***-14-13**** N   G ****\n");

    if((sizeof(int)+sia*lia<<3 && sia<<ia+2-1*1) == 1)
        printf("***-14-14*** O     K ***\n");
    else
        printf("***-14-14**** N   G ****\n");
}
