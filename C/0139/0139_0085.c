#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

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

    printf("\n");

    (*p[0])();
    (*p[1])();
    (*p[2])();
    (*p[3])();
    (*p[4])();

    printf("\n");
exit (0);
}

int  func1()
{
     printf("***\n");
}

short int  func2()
{
     printf("***\n");
}

signed long long int  func3()
{
     printf("***\n");
}

unsigned char  func4()
{
     printf("***\n");
}

int      ia;

double   func5()
{
     if(ia > 10)
         printf("***\n");
     else {
        ia ++;
        func5();
     }
}
