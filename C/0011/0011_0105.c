#include  <stdio.h>

struct tag1 {
    long int  li[100];
};
int main() {
    struct tag1   st1, st2;
    void sub(struct tag1 *pst1, struct tag1 *pst2);
    printf(" ---- start ----\n");
    st1.li[0] = 12345;
    sub( &st1, &st2 );
    if (st1.li[0]==st2.li[0])
        printf("     **** ok ****\n");
    else
        printf("     ???? ng ????\n");
    printf(" ----  end  ----\n");
}

void sub (struct tag1 *pst1, struct tag1 *pst2)
{
    *pst2 = *pst1;
}
