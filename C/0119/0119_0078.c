#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

struct tag1 {
    int t1_a[10];
    int t1_b;
} st[10];
int main()
{
    int i;

    printf(" --- scpa035 start ---\n");
    for(i=5000; i<5010; i++)
        st[5009-i].t1_a[5009-i] = i;

    if (st[0].t1_a[0] == 5009)
        printf("   **** ok ****\n");
    else {
        printf("   ???? ng ????\n");
        printf("   st(0) = %d\n", st[0].t1_a[0]);
    }
    printf(" --- scpa035  end  ---\n");
exit (0);
}
