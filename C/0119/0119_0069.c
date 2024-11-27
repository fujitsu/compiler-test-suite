#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

void sub();

struct tag1 {
    long int  li[100];
};
int main() {
    struct tag1   st1, st2;

    printf(" ---- scpa022 start ----\n");
    st1.li[0] = 12345;
    sub( &st1, &st2 );
    if (st1.li[0]==st2.li[0])
        printf("     **** ok ****\n");
    else
        printf("     ???? ng ????\n");
    printf(" ---- scpa022  end  ----\n");
exit (0);
}

void sub ( pst1, pst2 )
struct tag1   *pst1, *pst2;
{
    *pst2 = *pst1;
}
