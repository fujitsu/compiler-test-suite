#include  <stdio.h>

struct tag1 {
         long int           t1_ch1;
         short int          t1_si1;
         long int           t1_li1;
         long int           t1_li2;
         long long int      t1_ll1;
         float              t1_fl1;
         double             t1_dl1;
         long double        t1_ld1;
};
struct tag2 {
         long int           t2_li1;
         long long int      t2_lla1[600];
};
int main()
{
    long int       sub1(), sub2();

    printf(" ---- START ---- \n");

    if ( sub1()==5 && sub2()==4 )
        printf("    **** OK **** \n");
    else
        printf("    ???? NG ???? \n");

    printf(" ----  END  ---- \n");
}
long int sub1()
{
    struct tag1         st1;
    st1.t1_ch1 = 5;
    return st1.t1_ch1;
}
long int sub2()
{
    struct tag2         st2;
    void                sub3(struct tag2 st2);
    st2.t2_lla1[5]   = 1;
    st2.t2_lla1[509] = 2;
    st2.t2_lla1[510] = 3;
    st2.t2_lla1[511] = 4;
    st2.t2_lla1[512] = 5;
    sub3(st2);
    return st2.t2_lla1[511];
}
void sub3(struct tag2 st2)
{
    return;
}
