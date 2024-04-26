#include  <stdio.h>

int sub(float pr4,  short int pi2,  char pi1)
{
    return pr4+pi2+pi1;
}
int main()
{
    float           r4 = 10.0;
    short int       i2 = 20;
    char            i1 = 30;
    int             cal, ans = 60;

    printf(" ---- start ----\n");


    cal = sub (r4, i2, i1);

    if (cal == ans)
        printf("     *** ok ***\n");
    else {
        printf("     ??? ng ???\n");
        printf("      cal = %d\n", cal);
        printf("      ans = %d\n", ans);
    }

    printf(" ----  end  ----\n");
}
