
#include <stdio.h>
#pragma pack(push,8)

struct s1{
    char a1;
    short a2;
} t1;

struct s2{
    char a1;
    int   a2;
} t2;

struct s3{
    char a1;
    double a2;
} t3;

struct s4{
    char  a1;
    long double a2;
} t4;

struct s5{
    short a1;
    int   a2;
} t5;

struct s6{
    short a1;
    double a2;
} t6;

struct s7{
    short a1;
    long double a2;
} t7;

struct s8{
    int  a1;
    double a2;
} t8;

struct s9{
    int  a1;
    long double a2;
} t9;

struct s10{
    double a1;
    long double a2;
} t10;

struct s11{
    short a1;
    char a2;
} t11;

struct s12{
    int   a1;
    char a2;
} t12;

struct s13{
    double a1;
    char a2;
} t13;

struct s14{
    long double a1;
    char  a2;
} t14;

struct s15{
    int   a1;
    short a2;
} t15;

struct s16{
    double a1;
    short a2;
} t16;

struct s17{
    long double a1;
    short a2;
} t17;

struct s18{
    double a1;
    int  a2;
} t18;

struct s19{
    long double a1;
    int  a2;
} t19;

struct s20{
    long double a1;
    double a2;
} t20;

struct s21{
    char a1;
    char a2;
} t21;

struct s22{
    short a1;
    short a2;
} t22;

struct s23{
    int  a1;
    int  a2;
} t23;

struct s24{
    double a1;
    double a2;
} t24;

struct s25{
    long double a1;
    long double a2;
} t25;

#pragma pack(pop)

int ans[]={4,8,16,24,8,16,24,16,24,24,4,8,16,24,8,16,24,16,24,24,2,4,8,16,32};
int cnt=0;
#define check2(b) if (ans[cnt++]==sizeof(b))printf("ok %d\n",cnt); \
else printf("ng %d\n",cnt)
int main() {
    printf("test 1----------\n");
    check2(t1);
    check2(t2);
    check2(t3);
    check2(t4);
    check2(t5);
    check2(t6);
    check2(t7);
    check2(t8);
    check2(t9);
    check2(t10);
    printf("test 2----------\n");
    check2(t11);
    check2(t12);
    check2(t13);
    check2(t14);
    check2(t15);
    check2(t16);
    check2(t17);
    check2(t18);
    check2(t19);
    check2(t20);
    printf("test 3----------\n");
    check2(t21);
    check2(t22);
    check2(t23);
    check2(t24);
    check2(t25);
    return 0;
}
