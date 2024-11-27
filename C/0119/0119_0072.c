#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

int sub(int pi4,  float pr4)
{
    return (int)pi4+pr4;
}
int main()
{
    int    i4=2;
    float  r4=3.0;
    int    cal, ans = 5;

    printf(" ---- SCPA026 START ----\n");

    cal = sub(i4, r4);

    if (cal == ans)
        printf("    **** OK ****\n");
    else {
        printf("    ???? NG ????\n");
        printf("      CAL = %d\n", cal);
        printf("      ANS = %d\n", ans);
    }

    printf(" ---- SCPA026  END  ----\n");
exit (0);
}
