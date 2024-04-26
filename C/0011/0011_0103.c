#include  <stdio.h>

int main()
{
    long int    li = 2, sub(long int li);
    double      dl, ans=2.0;

    printf(" ---- start ---- \n");

    dl = sub( li );
    if (dl == ans)
        printf("    **** ok **** \n");
    else {
        printf("    ???? ng ???? \n");
        printf("      ans = %e \n", ans);
        printf("      cal = %e \n", dl);
    }
    printf(" ----  end  ---- \n");
}
long int sub( long int li )
{
    return  li;
}
