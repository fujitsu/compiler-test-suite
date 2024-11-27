#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

struct tag1 {
    signed short int  t1_i2;
};

struct tag2 {
    double            t2_r8;
};

int sub1(signed   char           pi1,
         signed   long long int  pi8,
         unsigned short int      pu2,
         unsigned long long int  pu8)
{
    return pi1+pu2+pi8+pu8;
}

int sub2(signed   long int       pi4,
         float                   pr4,
         unsigned long int       pu4,
         double                  pr8)
{
    return pi4+pr4+pu4+pr8;
}

int sub3(struct tag1             pst1,
         struct tag2             pst2,
         signed short int        pi2)
{
    return pst1.t1_i2+pst2.t2_r8+pi2;
}
int main()
{
    struct tag1    st1;
    struct tag2    st2;
    int            cal1, cal2, cal3;
    int            ans1=19, ans2=20, ans3=12;

    printf(" --- scpau01 start ---\n");

    st1.t1_i2 = 2;
    st2.t2_r8 = 8;

    cal1 = sub1(1, 8, 2, 8);
    cal2 = sub2(4, 4, 4, 8);
    cal3 = sub3(st1, st2, 2);

    if (cal1 == ans1)
        printf("   1: *** ok ***\n");
    else
        printf("   1: ??? ng ???\n");
    if (cal2 == ans2)
        printf("   2: *** ok ***\n");
    else
        printf("   2: ??? ng ???\n");
    if (cal3 == ans3)
        printf("   3: *** ok ***\n");
    else
        printf("   3: ??? ng ???\n");

    printf(" --- scpau01  end  ---\n");
exit (0);
}
