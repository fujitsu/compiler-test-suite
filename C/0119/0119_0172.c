#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
#include <stdio.h>

typedef int BOOL;

#define TRUE 1
#define FALSE 0

#define ON   1
#define OFF  0

#define WLONG_INT FALSE

#if WLONG_INT
#   define  SIZE8 3
#   define  SIZE4 7
#   define  SIZE2 15
#   define  SIZE1 31
#else
#   define  SIZE4 15
#   define  SIZE2 15
#   define  SIZE1 31
#endif

struct  TAG{
#if WLONG_INT
    long long int           i8;
    long long int           ia8[SIZE8];
    unsigned long long int  u8;
    unsigned long long int  ua8[SIZE8];
#endif
    long int                i4;
    long int                ia4[SIZE4];
    unsigned long int       u4;
    unsigned long int       ua4[SIZE4];
    short int               i2;
    short int               ia2[SIZE2];
    unsigned short int      u2;
    unsigned short int      ua2[SIZE2];
    signed char             c1;
    signed char             ca1[SIZE1];
    unsigned char           u1;
    unsigned char           ua1[SIZE1];
};

struct  TAG setst();
BOOL     chkst();
void        prst256();
int main()
{
    struct TAG st256;

    st256 = setst(ON);
    if (chkst(&st256, ON) == FALSE){
        printf("SCQIH04  NG. (#1)\n");
        exit(0);
    }
    st256 = setst(OFF);
    if (chkst(&st256, OFF) == FALSE){
        printf("SCQIH04  NG. (#2)\n");
        exit(0);
    }
    printf("SCQIH04  PASS.\n");
exit (0);
}


struct  TAG setst(p_sw)
BOOL p_sw;
{
    struct  TAG ret_st;
    int i;

    switch(p_sw){
    case ON:
#if WLONG_INT
        ret_st.i8 = -1                ;
        ret_st.u8 = 0xffffffffffffffff;
        for (i = 0; i < SIZE8; i++){
            ret_st.ia8[i] = -1              ;
            ret_st.ua8[i] = 0xffffffffffffffff;
        }
#endif
        ret_st.i4 = -1        ;
        ret_st.u4 = 0xffffffff;
        for (i = 0; i < SIZE4; i++){
            ret_st.ia4[i] = -1      ;
            ret_st.ua4[i] = 0xffffffff;
        }
        ret_st.i2 = -1    ;
        ret_st.u2 = 0xffff;
        for (i = 0; i < SIZE2; i++){
            ret_st.ia2[i] = -1  ;
            ret_st.ua2[i] = 0xffff;
        }
        ret_st.c1 = 0xff;
        ret_st.u1 = 0xff;
        for (i = 0; i < SIZE1 - 1; i++){
            ret_st.ca1[i] = -1  ;
            ret_st.ua1[i] = 0xff;
        }
        break;
    case OFF:
#if WLONG_INT
        ret_st.i8 = 0                 ;
        ret_st.u8 = 0x0000000000000000;
        for (i = 0; i < SIZE8; i++){
            ret_st.ia8[i] = 0               ;
            ret_st.ua8[i] = 0x0000000000000000;
        }
#endif
        ret_st.i4 = 0         ;
        ret_st.u4 = 0x00000000;
        for (i = 0; i < SIZE4; i++){
            ret_st.ia4[i] = 0       ;
            ret_st.ua4[i] = 0x00000000;
        }
        ret_st.i2 = 0     ;
        ret_st.u2 = 0x0000;
        for (i = 0; i < SIZE2; i++){
            ret_st.ia2[i] = 0   ;
            ret_st.ua2[i] = 0x0000;
        }
        ret_st.c1 = 0x00;
        ret_st.u1 = 0x00;
        for (i = 0; i < SIZE1 - 1; i++){
            ret_st.ca1[i] = 0x00;
            ret_st.ua1[i] = 0x00;
        }
        break;
    default:
        printf("SCQIH04 \"setst\"'s argument error.\n");
        exit(0);
    }
    return (ret_st);
}


BOOL chkst(chk_st_p, p_sw)
struct  TAG *chk_st_p;
BOOL     p_sw;
{
    BOOL ret_chk;
    int     i;

    ret_chk = TRUE;

    switch (p_sw){
    case ON:
        if(
#if WLONG_INT
            (chk_st_p->i8 != -1                ) ||
            (chk_st_p->u8 != 0xffffffffffffffff) ||
#endif
            (chk_st_p->i4 != -1        ) ||
            (chk_st_p->u4 != 0xffffffff) ||
            (chk_st_p->i2 != -1    ) ||
            (chk_st_p->u2 != 0xffff) ||
            (chk_st_p->c1 != -1  ) ||
            (chk_st_p->u1 != 0xff)                  ){
            ret_chk = FALSE;
            printf("chkst(on) err - 1 \n");
        }
#if WLONG_INT
        for (i = 0; i < SIZE8; i++)
            if ((chk_st_p->ia8[i] != -1              ) ||
                (chk_st_p->ua8[i] != 0xffffffffffffffff) ){
                ret_chk = FALSE;
                printf("chkst(on) err - 2 (array i8 or u8)\n");
            }
#endif
        for (i = 0; i < SIZE4; i++)
            if ((chk_st_p->ia4[i] != -1      ) ||
                (chk_st_p->ua4[i] != 0xffffffff) ){
                ret_chk = FALSE;
                printf("chkst(on) err - 3 (array i4 or u4)\n");
            }
        for (i = 0; i < SIZE2; i++)
            if ((chk_st_p->ia2[i] != -1 ) ||
                (chk_st_p->ua2[i] != 0xffff) ){
                ret_chk = FALSE;
                printf("chkst(on) err - 4 (array i2 or u2)\n");
            }
        for (i = 0; i < SIZE1 - 1; i++)
            if ((chk_st_p->ca1[i] != -1  ) ||
                (chk_st_p->ua1[i] != 0xff) ){
                ret_chk = FALSE;
                printf("chkst(on) err - 5 (array i1 or u1)\n");
            }
        break;
    case OFF:
        if(
#if WLONG_INT
            (chk_st_p->i8 != 0                 ) ||
            (chk_st_p->u8 != 0x0000000000000000) ||
#endif
            (chk_st_p->i4 != 0         ) ||
            (chk_st_p->u4 != 0x00000000) ||
            (chk_st_p->i2 != 0     ) ||
            (chk_st_p->u2 != 0x0000) ||
            (chk_st_p->c1 != 0x00) ||
            (chk_st_p->u1 != 0x00)                  ){
            ret_chk = FALSE;
            printf("chkst(off) err - 1 \n");
        }
#if WLONG_INT
        for (i = 0; i < SIZE8; i++)
            if ((chk_st_p->ia8[i] != 0               ) ||
                (chk_st_p->ua8[i] != 0x0000000000000000) ){
                ret_chk = FALSE;
                printf("chkst(off) err - 2 (array i8 or u8)\n");
            }
#endif
        for (i = 0; i < SIZE4; i++)
            if ((chk_st_p->ia4[i] != 0       ) ||
                (chk_st_p->ua4[i] != 0x00000000) ){
                ret_chk = FALSE;
                printf("chkst(off) err - 3 (array i4 or u4)\n");
            }
        for (i = 0; i < SIZE2; i++)
            if ((chk_st_p->ia2[i] != 0   ) ||
                (chk_st_p->ua2[i] != 0x0000) ){
                ret_chk = FALSE;
                printf("chkst(off) err - 4 (array i2 or u2)\n");
            }
        for (i = 0; i < SIZE1 - 1; i++)
            if ((chk_st_p->ca1[i] != 0x00) ||
                (chk_st_p->ua1[i] != 0x00) ){
                ret_chk = FALSE;
                printf("chkst(off) err - 5 (array i1 or u1)\n");
            }
        break;
    default:
        printf("SCQIH04 \"chkst\"'s argument error.\n");
        exit(0);
    }
    return (ret_chk);
}


void prst256(pr_st_p)
struct  TAG *pr_st_p;
{
    int i;

#if WLONG_INT
    printf("st256.i8 = %16x  ", pr_st_p->i8);
    printf("st256.u8 = %16x\n", pr_st_p->u8);
    for (i = 0; i < SIZE8; i++){
        printf("st256.ia8 = %16x  ", pr_st_p->ia8[i]);
        printf("st256.ua8 = %16x\n", pr_st_p->ua8[i]);
    }
#endif
    printf("st256.i4 = %8x  ", pr_st_p->i4);
    printf("st256.u4 = %8x\n", pr_st_p->u4);
    for (i = 0; i < SIZE4; i++){
        printf("st256.ia4 = %8x  ", pr_st_p->ia4[i]);
        printf("st256.ua4 = %8x\n", pr_st_p->ua4[i]);
    }
    printf("st256.i2 = %4x  ", pr_st_p->i2);
    printf("st256.u2 = %4x\n", pr_st_p->u2);
    for (i = 0; i < SIZE2; i++){
        printf("st256.ia2 = %4x  ", pr_st_p->ia2[i]);
        printf("st256.ua2 = %4x\n", pr_st_p->ua2[i]);
    }
    printf("st256.c1 = %2x  ", pr_st_p->c1);
    printf("st256.u1 = %2x\n", pr_st_p->u1);
    for (i = 0; i < SIZE1 - 1; i++){
        printf("st256.ca1 = %2x  ", pr_st_p->ca1[i]);
        printf("st256.ua1 = %2x\n", pr_st_p->ua1[i]);
    }
}
