#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func10();
int func9();
int func8();
int func7();
int func6();
int func5();
int func4();
int func3();
int func2();
int func1();
  
 
 
 
 
 
 
 
 


#ifdef nollint
#define l_l_int  long int
#else
#define l_l_int  long long int
#endif
int main()
{
    printf("\n");
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
    printf("\n");
exit (0);
}


int func1()
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
        printf("***\n");
    else
        printf("***\n");

    if((c ^ ia) == 3)
        printf("***\n");
    else
        printf("***\n");

    if((c ^ sia) == 2)
        printf("***\n");
    else
        printf("***\n");

    if((c ^ lia) == 5)
        printf("***\n");
    else
        printf("***\n");

    if((c ^ llia) == 4)
        printf("***\n");
    else
        printf("***\n");

    if((c ^ sca) == 7)
        printf("***\n");
    else
        printf("***\n");

    if((c ^ usia) == 6)
        printf("***\n");
    else
        printf("***\n");

    if((c ^ 8) == 9)
        printf("***\n");
    else
        printf("***\n");

#if defined (__GNUC__)
    printf("***\n");
#else
    if((c ^ st1.stca) == 0)
        printf("***\n");
    else
        printf("***\n");
#endif

    if((c ^ st1.stsia == 0) == 1)
        printf("***\n");
    else
        printf("***\n");
}


int func2()
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
        printf("***\n");
    else
        printf("***\n");

    if((i ^ ia) == 3)
        printf("***\n");
    else
        printf("***\n");

    if((i ^ sia) == 2)
        printf("***\n");
    else
        printf("***\n");

    if((i ^ lia) == 5)
        printf("***\n");
    else
        printf("***\n");

    if((i ^ llia) == 4)
        printf("***\n");
    else
        printf("***\n");

    if((i ^ sca) == 7)
        printf("***\n");
    else
        printf("***\n");

    if((i ^ usia) == 6)
        printf("***\n");
    else
        printf("***\n");

    if((i ^ 8) == 9)
        printf("***\n");
    else
        printf("***\n");

#if defined (__GNUC__)
    printf("***\n");
#else
    if((i ^ st1.stca) == 0)
        printf("***\n");
    else
        printf("***\n");
#endif

    if((i ^ 1 == 0) == 1)
        printf("***\n");
    else
        printf("***\n");
}


int func3()
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
        printf("***\n");
    else
        printf("***\n");

    if((si ^ ia) == 3)
        printf("***\n");
    else
        printf("***\n");

    if((si ^ sia) == 2)
        printf("***\n");
    else
        printf("***\n");

    if((si ^ lia) == 5)
        printf("***\n");
    else
        printf("***\n");

    if((si ^ llia) == 4)
        printf("***\n");
    else
        printf("***\n");

    if((si ^ sca) == 7)
        printf("***\n");
    else
        printf("***\n");

    if((si ^ usia) == 6)
        printf("***\n");
    else
        printf("***\n");

    if((si ^ 8) == 9)
        printf("***\n");
    else
        printf("***\n");

#if defined (__GNUC__)
    printf("***\n");
#else
    if((si ^ st1.stca) == 0)
        printf("***\n");
    else
        printf("***\n");
#endif

    if((si ^ 1 == 1) == 0)
        printf("***\n");
    else
        printf("***\n");
}


int func4()
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
        printf("***\n");
    else
        printf("***\n");

    if((li ^ ia) == 3)
        printf("***\n");
    else
        printf("***\n");

    if((li ^ sia) == 2)
        printf("***\n");
    else
        printf("***\n");

    if((li ^ lia) == 5)
        printf("***\n");
    else
        printf("***\n");

    if((li ^ llia) == 4)
        printf("***\n");
    else
        printf("***\n");

    if((li ^ sca) == 7)
        printf("***\n");
    else
        printf("***\n");

    if((li ^ usia) == 6)
        printf("***\n");
    else
        printf("***\n");

    if((li ^ 8) == 9)
        printf("***\n");
    else
        printf("***\n");

#if defined (__GNUC__)
    printf("***\n");
#else
    if((li ^ st1.stca) == 0)
        printf("***\n");
    else
        printf("***\n");
#endif

    if((li ^ 1 != 1) == 1)
        printf("***\n");
    else
        printf("***\n");
}


int func5()
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
        printf("***\n");
    else
        printf("***\n");

    if((lli ^ ia) == 3)
        printf("***\n");
    else
        printf("***\n");

    if((lli ^ sia) == 2)
        printf("***\n");
    else
        printf("***\n");

    if((lli ^ lia) == 5)
        printf("***\n");
    else
        printf("***\n");

    if((lli ^ llia) == 4)
        printf("***\n");
    else
        printf("***\n");

    if((lli ^ sca) == 7)
        printf("***\n");
    else
        printf("***\n");

    if((lli ^ usia) == 6)
        printf("***\n");
    else
        printf("***\n");

    if((lli ^ 8) == 9)
        printf("***\n");
    else
        printf("***\n");

#if defined (__GNUC__)
    printf("***\n");
#else
    if((lli ^ st1.stca) == 0)
        printf("***\n");
    else
        printf("***\n");
#endif

    if((lli ^ 1 != 0) == 0)
        printf("***\n");
    else
        printf("***\n");
}


int func6()
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
        printf("***\n");
    else
        printf("***\n");

    if((sli ^ ia) == 3)
        printf("***\n");
    else
        printf("***\n");

    if((sli ^ sia) == 2)
        printf("***\n");
    else
        printf("***\n");

    if((sli ^ lia) == 5)
        printf("***\n");
    else
        printf("***\n");

    if((sli ^ llia) == 4)
        printf("***\n");
    else
        printf("***\n");

    if((sli ^ sca) == 7)
        printf("***\n");
    else
        printf("***\n");

    if((sli ^ usia) == 6)
        printf("***\n");
    else
        printf("***\n");

    if((sli ^ 8) == 9)
        printf("***\n");
    else
        printf("***\n");

#if defined (__GNUC__)
    printf("***\n");
#else
    if((sli ^ st1.stca) == 0)
        printf("***\n");
    else
        printf("***\n");
#endif

    if((sli ^ sizeof(int)) == 5)
        printf("***\n");
    else
        printf("***\n");
}


int func7()
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
        printf("***\n");
    else
        printf("***\n");

    if((uli ^ ia) == 3)
        printf("***\n");
    else
        printf("***\n");

    if((uli ^ sia) == 2)
        printf("***\n");
    else
        printf("***\n");

    if((uli ^ lia) == 5)
        printf("***\n");
    else
        printf("***\n");

    if((uli ^ llia) == 4)
        printf("***\n");
    else
        printf("***\n");

    if((uli ^ sca) == 7)
        printf("***\n");
    else
        printf("***\n");

    if((uli ^ usia) == 6)
        printf("***\n");
    else
        printf("***\n");

    if((uli ^ 8) == 9)
        printf("***\n");
    else
        printf("***\n");

#if defined (__GNUC__)
    printf("***\n");
#else
    if((uli ^ st1.stca) == 0)
        printf("***\n");
    else
        printf("***\n");
#endif

    if((uli ^ 1<<2) == 5)
        printf("***\n");
    else
        printf("***\n");
}


int func8()
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
        printf("***\n");
    else
        printf("***\n");

    if((2 ^ ia) == 0)
        printf("***\n");
    else
        printf("***\n");

    if((1 ^ sia) == 2)
        printf("***\n");
    else
        printf("***\n");

    if((12 ^ lia) == 8)
        printf("***\n");
    else
        printf("***\n");

    if((2147483647 ^ llia) == 2147483642)
        printf("***\n");
    else
        printf("***\n");

    if((5 ^ sca) == 3)
        printf("***\n");
    else
        printf("***\n");

    if((6 ^ usia) == 1)
        printf("***\n");
    else
        printf("***\n");

    if((7 ^ 8) == 15)
        printf("***\n");
    else
        printf("***\n");

#if defined (__GNUC__)
    printf("***\n");
#else
    if((1 ^ st1.stca) == 0)
        printf("***\n");
    else
        printf("***\n");
#endif

    if((4 ^ 1<<2) == 0)
        printf("***\n");
    else
        printf("***\n");
}


int func9()
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
        printf("***\n");
    else
        printf("***\n");

    if((st1.stca ^ ia) == -3)
        printf("***\n");
    else
        printf("***\n");

    if((st1.stca ^ sia) == -4)
        printf("***\n");
    else
        printf("***\n");

    if((st1.stca ^ lia) == -5)
        printf("***\n");
    else
        printf("***\n");

    if((st1.stca ^ llia) == -6)
        printf("***\n");
    else
        printf("***\n");

    if((st1.stca ^ sca) == -7)
        printf("***\n");
    else
        printf("***\n");

    if((st1.stca ^ usia) == -8)
        printf("***\n");
    else
        printf("***\n");

    if((st1.stca ^ 8) == -9)
        printf("***\n");
    else
        printf("***\n");

    if((st1.stia ^ st1.stca) == -4)
        printf("***\n");
    else
        printf("***\n");

    if((st1.stia ^ 1<<2) == 7)
        printf("***\n");
    else
        printf("***\n");
}


int func10()
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
        printf("***\n");
    else
        printf("***\n");

    if((sizeof(short int) ^ ia) == 0)
        printf("***\n");
    else
        printf("***\n");

    if(((short int)ia ^ sia) == 1)
        printf("***\n");
    else
        printf("***\n");

    if((ia*sia ^ lia) == 2)
        printf("***\n");
    else
        printf("***\n");

    if((sizeof(short int) * sizeof(int) ^ llia) == 13)
        printf("***\n");
    else
        printf("***\n");

    if((ca<<1 ^ sca) == 4)
        printf("***\n");
    else
        printf("***\n");

    if((sia%ia ^ usia) == 6)
        printf("***\n");
    else
        printf("***\n");

    if((1+7 ^ 8) == 0)
        printf("***\n");
    else
        printf("***\n");

    if((!1 == 1 ^ st1.stca) == -1)
        printf("***\n");
    else
        printf("***\n");

    if((16>>2 ^ 1<<2) == 0)
        printf("***\n");
    else
        printf("***\n");
}
