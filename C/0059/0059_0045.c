

#include <stdio.h>
#pragma pack(push,1)

struct s1{
    char a1;
    short *a2[4];
    char a3;
} t1;

struct s2{
    int   a1;
    char a2;
    int   a3;
} t2;

struct s3{
    double a1;
    char a2;
    double *a3;
} t3;

struct s4{
    char  a1;
    char  a2[7];
    long double a3;
} t4;

typedef struct s5{
    short a1;
    int   a2;
    long double a3;
} T5;
T5 t5[100];

struct s6{
    short a1;
    long double a2;
    struct s5 a3;
} t6;

struct s7{
    short a1;
    long double a2;
    struct s6 a3[3];
    struct s5 a4;
} t7;

union s8 {
    short a1;
    struct s7 a2;
    long double a3;
} t8;

struct t9 {
    short a1;
    struct s9 *a2;
    long double a3;
} t9;

#pragma pack(pop)

int ans[]={34,9,17,24,2200,40,160,160,26};
int cnt=0;
#define check3(b) if (ans[cnt++]==sizeof(b))printf("ok %d\n",cnt); \
else printf("ng %d\n",cnt)

int main() {
    printf("test 1----------\n");
    check3(t1);
    check3(t2);
    check3(t3);
    check3(t4);
    check3(t5);
    check3(t6);
    check3(t7);
    check3(t8);
    check3(t9);
    return 0;
}
