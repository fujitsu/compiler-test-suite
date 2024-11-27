#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
{
    long int    li = 2, sub();
    double      dl, ans=2.0;

    printf(" ---- scpa019 start ---- \n");

    dl = sub( li );
    if (dl == ans)
        printf("    **** ok **** \n");
    else {
        printf("    ???? ng ???? \n");
        printf("      ans = %e \n", ans);
        printf("      cal = %e \n", dl);
    }
    printf(" ---- scpa019  end  ---- \n");
exit (0);
}
long int sub( li )
long int li;
{
    return  li;
}
