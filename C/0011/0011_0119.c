#include  <stdio.h>

struct tag1 {
    float             t1_r4;
    double            t1_r8a[512];
};

struct tag1 sub1(
        float        pr4,
        double       pr8)
{
    struct tag1       st1;
    st1.t1_r4 = pr4;
    st1.t1_r8a[511] = pr8;
    return st1;
}
int main()
{
    struct tag1    st1;
    int            ans=30;

    printf(" --- start ---\n");

    st1 = sub1(10.0, 20.0);

    if (st1.t1_r4+st1.t1_r8a[511] == ans)
        printf("      *** ok ***\n");
    else
        printf("      ??? ng ???\n");

    printf(" ---  end  ---\n");
}
