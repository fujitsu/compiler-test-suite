#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

int main()
{
    char *nchara();
    int  *ninta();
    short int  *nsinta();
    long int *nlinta();
    long long int *nllinta();
    float *nflta();
    double *ndbla();
    long double *nldbla();
    signed char *schara();
    signed int *sinta();
    signed short int *ssinta();
    signed long int *slinta();
    signed long long int  *sllinta();
    unsigned char *uchara();
    unsigned int *uinta();
    unsigned short int *usinta();
    unsigned long int *ulinta();
    unsigned long long int  *ullinta();

    printf("\n");

 
    if (nchara()==(char *)1)
    {
        printf("TEST01***O   K***\n");
    }
    else
    {
        printf("TEST01***N   G***\n");
    }
 
    if (ninta()==(int  *)2)
    {
        printf("TEST02***O   K***\n");
    }
    else
    {
        printf("TEST02***N   G***\n");
    }
 
    if (nsinta()==(short int *)3)
    {
        printf("TEST03***O   K***\n");
    }
    else
    {
        printf("TEST03***N   G***\n");
    }
 
    if (nlinta()==(long int *)4)
    {
        printf("TEST04***O   K***\n");
    }
    else
    {
        printf("TEST04***N   G***\n");
    }
 
    if (nllinta()==(long long int *)5)
    {
        printf("TEST05***O   K***\n");
    }
    else
    {
        printf("TEST05***N   G***\n");
    }
 
    if (nflta()==(float *)6)
    {
        printf("TEST06***O   K***\n");
    }
    else
    {
        printf("TEST06***N   G***\n");
    }
 
    if (ndbla()==(double *)7)
    {
        printf("TEST07***O   K***\n");
    }
    else
    {
        printf("TEST07***N   G***\n");
    }
 
    if (nldbla()==(long double  *)8)
    {
        printf("TEST08***O   K***\n");
    }
    else
    {
        printf("TEST08***N   G***\n");
    }
  
    if (schara()==(signed  char *)9)
    {
        printf("TEST09***O   K***\n");
    }
    else
    {
        printf("TEST09***N   G***\n");
    }
 
    if (sinta()==(signed int *)10)
    {
        printf("TEST10***O   K***\n");
    }
    else
    {
        printf("TEST10***N   G***\n");
    }
 
    if (ssinta()==(signed short int *)11)
    {
        printf("TEST11***O   K***\n");
    }
    else
    {
        printf("TEST11***N   G***\n");
    }
 
    if (slinta()==(signed long int  *)12)
    {
        printf("TEST12***O   K***\n");
    }
    else
    {
        printf("TEST12***N   G***\n");
    }
 
    if (sllinta()==(signed long long int  *)13)
    {
        printf("TEST13***O   K***\n");
    }
    else
    {
        printf("TEST13***N   G***\n");
    }
  
    if (uchara()==(unsigned char *)14)
    {
        printf("TEST14***O   K***\n");
    }
    else
    {
        printf("TEST14***N   G***\n");
    }
 
    if (uinta()==(unsigned int  *)15)
    {
        printf("TEST15***O   K***\n");
    }
    else
    {
        printf("TEST15***N   G***\n");
    }
 
    if (usinta()==(unsigned short int  *)16)
    {
        printf("TEST16***O   K***\n");
    }
    else
    {
        printf("TEST16***N   G***\n");
    }
 
    if (ulinta()==(unsigned long int  *)17)
    {
        printf("TEST17***O   K***\n");
    }
    else
    {
        printf("TEST17***N   G***\n");
    }
 
    if (ullinta()==(unsigned long long int  *)18)
    {
        printf("TEST18***O   K***\n");
    }
    else
    {
        printf("TEST18***N   G***\n");
    }
    printf("\n");
exit (0);
}


char *nchara()
{
    return(char *)1;
}

int  *ninta()
{
    return(int  *)2;
}

short int *nsinta()
{
    return(short int  *)3;
}

long int *nlinta()
{
    return(long int  *)4;
}

long long int *nllinta()
{
    return(long long int  *)5;
}

float *nflta()
{
    return(float  *)6;
}

double *ndbla()
{
    return(double  *)7;
}

long double *nldbla()
{
    return(long double  *)8;
}


signed char *schara()
{
    return(signed char *)9;
}

signed int  *sinta()
{
    return(signed int  *)10;
}

signed short int *ssinta()
{
    return(signed short int  *)11;
}

signed long int *slinta()
{
    return(signed long int  *)12;
}

signed long long int *sllinta()
{
    return(signed long long int  *)13;
}


unsigned char *uchara()
{
    return(unsigned char  *)14;
}

unsigned int  *uinta()
{
    return(unsigned int  *)15;
}

unsigned short int *usinta()
{
    return(unsigned short int  *)16;
}

unsigned long int *ulinta()
{
    return(unsigned long int  *)17;
}

unsigned long long int *ullinta()
{
    return(unsigned long long int  *)18;
}
