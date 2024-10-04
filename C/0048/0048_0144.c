#include <stdio.h>
int main()
{
    int                       func1();
    short int                 func2();
    signed long long  int     func3();
    unsigned char             func4();
    double                    func5();

    int     (*p[5])();

    p[0] = (int (*)())func1;
    p[1] = (int (*)())func2;
    p[2] = (int (*)())func3;
    p[3] = (int (*)())func4;
    p[4] = (int (*)())func5;

    printf("*** TEST FOR EXPRESSION *** STARTED\n");

    (*p[0])();
    (*p[1])();
    (*p[2])();
    (*p[3])();
    (*p[4])();

    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}

int  func1()
{
     printf("***-01-1*** O     K ***\n");
}

short int  func2()
{
     printf("***-02-1*** O     K ***\n");
}

signed long long int  func3()
{
     printf("***-03-1*** O     K ***\n");
}

unsigned char  func4()
{
     printf("***-04-1*** O     K ***\n");
}

int      ia;

double   func5()
{
     if(ia > 10)
         printf("***-05-1*** O     K ***\n");
     else {
        ia ++;
        func5();
     }
}
