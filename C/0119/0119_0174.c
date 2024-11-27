#include <math.h>
#include  <stdio.h>
#include <stdlib.h>

#define A_SIZE 256
#define TRUE  1
#define FALSE 0

typedef int BOOL;

struct  R_CODE{
    unsigned char   er_1:1;
    unsigned char   er_2:1;
    unsigned char   er_3:1;
    unsigned char   er_x:5;
};

void cp1(int *);
void cp2(int *);
BOOL check1(struct R_CODE *, int *);
BOOL check2(struct R_CODE *, int *);

int *exv1;  
int *exv2;  
int *pcnv;  
int main()
{
    int             elt_count = A_SIZE;
    int             elt_size  = sizeof(int);
    int             array[256];
    int             i;
    struct R_CODE r_code;

    r_code.er_1 = r_code.er_2 = r_code.er_3 = FALSE;

    if ((exv1 = (int *)calloc( elt_count, elt_size)) == NULL){
        printf("exv1 : calloc error.\n");
        exit(0);
    }
    if ((exv2 = (int *)calloc( elt_count, elt_size)) == NULL){
        printf("exv2 : calloc error.\n");
        exit(0);
    }
    if ((pcnv = (int *)calloc( elt_count, elt_size)) == NULL){
        printf("pcnv : calloc error.\n");
        exit(0);
    }

    for ( i = 0; i < A_SIZE; ++i)
        array[i] = i;
    cp1(array);

    switch( check1(&r_code, array) ){
    case TRUE:
        break;
    case FALSE:
        if (r_code.er_1 == TRUE)
            printf("exv1 : check1 error.\n");
        if (r_code.er_2 == TRUE)
            printf("exv2 : check1 error.\n");
        if (r_code.er_3 == TRUE)
            printf("pcnv : check1 error.\n");
        exit(0);
        break;
    }
    cp2(array);

    switch( check2(&r_code, array) ){
    case TRUE:
        break;
    case FALSE:
        if (r_code.er_1 == TRUE)
            printf("exv1 : check2 error.\n");
        if (r_code.er_2 == TRUE)
            printf("exv2 : check2 error.\n");
        if (r_code.er_3 == TRUE)
            printf("pcnv : check2 error.\n");
        exit(0);
        break;
    }
    printf("SCQIH06 PASS.\n");
exit (0);
}


void cp1(int *apt)
{
    extern int  *exv1, *exv2, *pcnv;
    int i;

    for ( i = 0; i < A_SIZE; ++i)
        *(exv1+i) = *(exv2+i) = *(pcnv+i) = *(apt+i);
}

void cp2(int *apt)
{
    extern int  *exv1, *exv2, *pcnv;
    int i;

    for ( i = 0; i < A_SIZE; ++i){
        *(apt+i) = *(exv1+i);
        *(apt+i) = *(exv2+i);
        *(apt+i) = *(pcnv+i);
    }
}

BOOL check1(struct R_CODE *rcdpt, int *apt)
{
    extern int  *exv1, *exv2, *pcnv;
    int         i;
    BOOL     e_flag = TRUE;

    rcdpt->er_1 = rcdpt->er_2 = rcdpt->er_3 = FALSE;

    for (i = 0; i < A_SIZE; ++i){
        if ( (*apt+i) != *(exv1+i) ){
            e_flag = FALSE;
            rcdpt->er_1 = TRUE;
        }
        if ( (*apt+i) != *(exv2+i) ){
            e_flag = FALSE;
            rcdpt->er_2 = TRUE;
        }
        if ( (*apt+i) != *(pcnv+i) ){
            e_flag = FALSE;
            rcdpt->er_3 = TRUE;
        }
    }
    return (e_flag);
}

BOOL check2(struct R_CODE *rcdpt, int *apt)
{
    extern int  *exv1, *exv2, *pcnv;
    int         i;
    BOOL     e_flag = TRUE;

    rcdpt->er_1 = rcdpt->er_2 = rcdpt->er_3 = FALSE;

    for (i = 0; i < A_SIZE; ++i){
        if ( (*apt+i) != *(exv1+i) ){
            e_flag = FALSE;
            rcdpt->er_1 = TRUE;
        }
        if ( (*apt+i) != *(exv2+i) ){
            e_flag = FALSE;
            rcdpt->er_2 = TRUE;
        }
        if ( (*apt+i) != *(pcnv+i) ){
            e_flag = FALSE;
            rcdpt->er_3 = TRUE;
        }
    }
    return (e_flag);
}
