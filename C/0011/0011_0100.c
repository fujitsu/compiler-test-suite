#include  <stdio.h>

#define NULL 0

#ifdef KAIOWN
int printf (char *, ...);
#endif
#define      num      4

struct tag1 {
    char             t1_ch1;
    short int        t1_si1;
};
struct tag2 {
    struct tag1      t2_st11;
    char             t2_cha1[10];
    long long int    t2_ll1;
};
union utag1 {
    struct tag1      ut1_st11;
    char             ut1_ch1;
    short int        ut1_si1;
    long int         ut1_li1;
    long long int    ut1_ll1;
};
struct tag3 {
    union utag1      t3_u11;
    struct tag1      t3_st11;
    char             t3_ch1;
};

long int       cal[num], ans[num] = {  3, 33, 25,  9 };
int main()
{
    struct tag1            t1_st1 = { 1, 2 };
    struct tag2            t2_st1 = { { 2, 3 }, "987", 4 };
    struct tag3            t3_st1 = { { 3, 4 }, { 5, 6 }, 7 };
    union utag1            ut1_u1 = { 4, 5 };
    int                    i, tmp;

    printf("---- start ---- \n");

    cal[0] = t1_st1.t1_ch1 + t1_st1.t1_si1;

    for (tmp=0, i=0; t2_st1.t2_cha1[i]!=NULL; i++)
         tmp += t2_st1.t2_cha1[i]-'0';
    cal[1] = t2_st1.t2_st11.t1_ch1 + t2_st1.t2_st11.t1_si1 +
               t2_st1.t2_ll1 + tmp;

    cal[2] = t3_st1.t3_u11.ut1_st11.t1_ch1 +
               t3_st1.t3_u11.ut1_st11.t1_si1 +
               t3_st1.t3_st11.t1_ch1 + t3_st1.t3_st11.t1_si1 +
               t3_st1.t3_ch1;

    cal[3] = ut1_u1.ut1_st11.t1_ch1 +
               ut1_u1.ut1_st11.t1_si1;

    for (i=0; i<num; i++) {
        if (cal[i] == ans[i])
            printf ("  %d: ***  ok  *** \n", i+1);
        else {
            printf ("  %d: ???  ng  ??? \n", i+1);
            printf ("       ans = %ld\n", ans[i]);
            printf ("       cal = %ld\n", cal[i]);
        }
    }

    printf("----  end  ---- \n");
}
