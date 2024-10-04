#include<stdio.h>

       unsigned int  func1();
       signed int  func2();
       static int  func3();
       extern int  func4();
       char        func5(char);
       short  func6();
       int    func7(int);
       long   func8(long,int);
       void   func9(short,int,long);
       struct tag *func10(volatile int );
       union  tag1 *func11(const int );
       int *func12(register int ,int);

    struct tag { int    i;
                  char   c;
                  short  s;
               };

    union tag1 { int    i;
                  char   c;
                  short  s;
               };
int main()
{
printf("*** \n");

     {
       unsigned int  uia;
       uia = func1();
       if(uia == 1)
           printf("*** \n");
       else
           printf("*** \n");
     }
     {
       signed int  sia;
       sia = func2();
       if(sia == 2)
           printf("*** \n");
       else
           printf("*** \n");
     }
     {
              int   ia;
        ia = func3();
       if( ia == 3)
           printf("*** \n");
       else
           printf("*** \n");
     }
     {
              int   ib;
        ib = func4();
       if( ib == 4)
           printf("*** \n");
       else
           printf("*** \n");
     }
     {
       char   ca;
       char   cb=1;
        ca = func5(cb);
       if( ca == 5)
           printf("*** \n");
       else
           printf("*** \n");
     }
     {
       short  sic;
       short  sid =2;
       sic = func6(sid);
       if(sic == 6)
           printf("*** \n");
       else
           printf("*** \n");
     }
     {
       int    ia;
       int    ib  =3;
       ia  = func7(ib);
       if(ia  == 7)
           printf("*** \n");
       else
           printf("*** \n");
     }
     {
       long   la;
       long   lb  = 4;
       int    ie  = 5;
       la  = func8(lb,ie);
       if(la  == 8)
           printf("*** \n");
       else
           printf("*** \n");
     }
     {
       short  sia = 1;
       int    ia  = 2;
       long   lia = 3;
       func9(sia,ia,lia);
     }
     {
       struct tag *st1;
       volatile int via=1;
       st1 = func10(via);
       if(st1->i == 1)
           printf("*** \n");
       else
           printf("*** \n");
     }
     {
       union  tag1 *un1;
       const    int cia=1;
       un1 = func11(cia);
       if(un1->i == 1)
           printf("*** \n");
       else
           printf("*** \n");
     }
     {
       register      int regi = 1;
       int          ii   = 2;
       int          *pi;
       pi = func12(regi,ii);
       if(*pi == 12)
           printf("*** \n");
       else
           printf("*** \n");
     }
}

unsigned int func1()
{
    return(1);
}

signed int func2()
{
    return(2);
}

static int func3()
{
    return(3);
}

int func4()
{
    return(4);
}

char  func5(char c)
{
    if(c == 1)
        return(5);
    else
        return(0);
}

short int func6(s)
short int s;
{
    if(s==2)
        return(6);
    else
        return(0);
}

int func7(int ia)
{
    if(ia == 3)
        return(7);
    else
        return(0);
}

long int func8(la,ia)
long la;
int  ia;
{
    if(la == 4 && ia == 5)
        return(8);
    else
        return(0);
}

void func9(short int a,int b,long int c)
{
    if(a == 1 && b == 2 && c == 3)
        printf("*** \n");
    else
        printf("*** \n");
}

struct tag *func10(volatile int vi10)
{
    if(vi10 == 1)
    {
        static struct tag st10,*p=&st10;
        p->i = 1;
        return(p);
    }
    else
        return(0);
}

union tag1 *func11(const    int ci11)
{
    if(ci11 == 1)
    {
        static union tag1 un11,*p=&un11;
        p->i = 1;
        return(p);
    }
    else
        return(0);
}

int *func12(register  int re,int  iii)
{
    static int i = 12;
    if(re == 1 && iii == 2)
        return(&i);
    else
        return(0);
}
