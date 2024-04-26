#include  <stdio.h>
int fun(int e, int f, int g);
int main()
{
    int a=1;
    int b=2;
    int c=3;
    int d;

    d = fun(a,b,c);

    if (d==6)
       printf ("***** ok ******\n");
    else
       printf ("***** ng ******\n");
}

int fun(int e,int f,int g)
{
    return(e+f+g);
}
