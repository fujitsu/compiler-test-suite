#include <stdio.h>
int func (int a, int b, int c);


int main()
{

    int a;             

    int /*             */ b/**/=/**/1;

    /*                 */int c=1;

    int d;

    int /*

           */e;

    char f/* */[/* */100];

    int  g='/**/';

    char  *q="abc/*defgh";

    int  a1 = 1;
    int  b1 = 2;
    int  c1 = 3;

lab/* */:

    

    printf("***TEST FOR TOKEN***STARTED\n");

    a/* =b */=c;

    a/* */ ++;

    if (a/* */ == 1) /* */ { printf("***O   K***\n")/* */ ;}

    ++/* */b;/*  */ if(b==2) /* */ printf("***O   K***\n");

    func(a1,/*   */b1/*,*/,c1/**/);

    printf(/**/"***TEST FOR TOKEN***END\n"/**/)/**/;
}


int 
func (int a, int b, int c)
{
    if(a == 1)
    {
        printf("TEST01***O   K***\n");
    }
    else
    {
        printf("TEST01***N   G***\n");
    }
    if(b == 2)
    {
        printf("TEST02***O   K***\n");
    }
    else
    {
        printf("TEST02***N   G***\n");
    }
    if(c == 3)
    {
        printf("TEST03***O   K***\n");
    }
    else
    {
        printf("TEST03***N   G***\n");
    }
}
