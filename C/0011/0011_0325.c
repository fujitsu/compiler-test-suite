#include  <stdio.h>

struct tag1 {
    int     li1;
    int     lia[5];
    int     li2;
};
int main()
{
    struct tag1  st1 = { 10, {1, 2, 3, 4, 5}, 20};
    int          i, sum=0;

    for(i=100; i<105; i++)
        sum += st1.lia[i-100];

    printf(" sum = %d\n", sum);
    if( sum == 15 ) puts(" OK ");
    else            puts(" NG ");
}
