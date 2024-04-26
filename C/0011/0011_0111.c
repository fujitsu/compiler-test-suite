#include  <stdio.h>

struct tag1 {
    long int          tag1_i;
};

struct tag2 {
    long int          tag2_i;
};

int sub(struct tag1    pst1,    struct tag2    pst2)
{
    return pst1.tag1_i+pst2.tag2_i;
}
int main()
{
    struct tag1     st1;
    struct tag2     st2;
    int             cal, ans = 30;

    printf(" ---- start ----\n");

    st1.tag1_i = 10;
    st2.tag2_i = 20;
    cal = sub (st1, st2);

    if (cal == ans)
        printf("     *** ok ***\n");
    else {
        printf("     ??? ng ???\n");
        printf("      cal = %d\n", cal);
        printf("      ans = %d\n", ans);
    }

    printf(" ----  end  ----\n");
}
