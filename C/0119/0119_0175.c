#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
#include <stdio.h>

#define TRUE 1
#define FALSE 0

#define FUNC_N 9

typedef int BOOL;

int x_func0(), x_func1(), x_func2(),
    x_func3(), x_func4(), x_func5(),
    x_func6(), x_func7(), x_func8() ;
int main()
{
    int i, j, k, l, m, n;
    BOOL flag;
    static int (*ftbl[])() = {x_func0, x_func1, x_func2,
                              x_func3, x_func4, x_func5,
                              x_func6, x_func7, x_func8};

    flag = TRUE;
    for (i = 0; i < FUNC_N; ++i){
        j = i;
        k = i;
        l = i;
        m = i;
        n = i;
        if((*ftbl[i])() != i){
            printf("SCQIH07-%d NG.\n", i);
            flag = FALSE;
        }
    }
    if (flag == TRUE)
        printf("SCQIH07 PASS.\n");
    else
        printf("SCQIH07 NG.\n");
exit (0);
}

int x_func0()
{
    return (0);
}

int x_func1()
{
    return (1);
}

int x_func2()
{
    return (2);
}

int x_func3()
{
    return (3);
}

int x_func4()
{
    return (4);
}

int x_func5()
{
    return (5);
}

int x_func6()
{
    return (6);
}

int x_func7()
{
    return (7);
}

int x_func8()
{
    return (8);
}
