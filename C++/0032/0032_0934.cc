




#include <stdio.h>

int x = 0;

void f(int &r, int i)
{
    if( r == i ) x++; 
}

void f(const int &cr, int i)
{
    if( cr == i ) x++;
}

void f(volatile int &vr, int i)
{
    if( vr == i ) x++;
}
int main()
{
    int i;                 int &ri = i;
    const int ci = 3;      const int &rci = ci;
    volatile int vi;       volatile int &rvi = vi;

    i = 5;
    vi = 2;

    f(ri,5);
    if( x == 1 )
    {
        f(rci,3);
        if( x == 2 )
        {       
            f(rvi,2);
            if( x == 3 )
                printf("ok\n");
            else
                printf("ng3 %d\n",x);
        }
        else
            printf("ng2 %d\n",x);
    }    
    else
        printf("ng1 %d\n",x);
}
