
#include <stdio.h>
int m3edcl07();
int scops02();
int m3edcl06();
int m3edcl05();
int scops01();
int m3edcl02();
int mptest30();
int mptest27();
int m3edcl01();

void mptest28();
int main()
{
   m3edcl01();  
   mptest27();  
   mptest30();  
   m3edcl02();  
   scops01();   
   m3edcl05();  
   mptest28();  
   m3edcl06();  
   scops02();   
   m3edcl07();  

}



    struct fe1tag { int i;
                  char   c;
                  short  s;
               };

    union fe1tag1 { int i;
                  char   c;
                  short  s;
               };

    static int  fe1fnc3();


int m3edcl01()
{

printf("*** M3EDCL01 **  ** STARTED ***\n");


     {
       unsigned int  fe1fnc1();
       unsigned int  uia;
       uia = fe1fnc1();
       if(uia == 1)
           printf("*** M3EDCL01-01 *** O   K ***\n");
       else
           printf("*** M3EDCL01-01 **** ERR ****\n");
     }

     {
       signed int  fe1fnc2();
       signed int  sia;
       sia = fe1fnc2();
       if(sia == 2)
           printf("*** M3EDCL01-02 *** O   K ***\n");
       else
           printf("*** M3EDCL01-02 **** ERR ****\n");
     }

     {
       int   ia;
       ia = fe1fnc3();
       if( ia == 3)
           printf("*** M3EDCL01-03 *** O   K ***\n");
       else
           printf("*** M3EDCL01-03 **** ERR ****\n");
     }

     {
       int   ib;
       extern int  fe1fnc4();
       ib = fe1fnc4();
       if( ib == 4)
           printf("*** M3EDCL01-04 *** O   K ***\n");
       else
           printf("*** M3EDCL01-04 **** ERR ****\n");
     }

     {
       char   ca;
       char   cb=1;
       char        fe1fnc5(char);
       ca = fe1fnc5(cb);
       if( ca == 5)
           printf("*** M3EDCL01-05 *** O   K ***\n");
       else
           printf("*** M3EDCL01-05 **** ERR ****\n");
     }
     {
       short  sic;
       short  sid =2;
       short  fe1fnc6();
       sic = fe1fnc6(sid);
       if(sic == 6)
           printf("*** M3EDCL01-06 *** O   K ***\n");
       else
           printf("*** M3EDCL01-06 **** ERR ****\n");
     }
     {
       int    ia;
       int    ib  =3;
       int    fe1fnc7(int);
       ia  = fe1fnc7(ib);
       if(ia  == 7)
           printf("*** M3EDCL01-07 *** O   K ***\n");
       else
           printf("*** M3EDCL01-07 **** ERR ****\n");
     }
     {
       long   la;
       long   lb  = 4;
       int    ie  = 5;
       long   fe1fnc8(long,int);
       la  = fe1fnc8(lb,ie);
       if(la  == 8)
           printf("*** M3EDCL01-08 *** O   K ***\n");
       else
           printf("*** M3EDCL01-08 **** ERR ****\n");
     }
     {
       short  sia = 1;
       int    ia  = 2;
       long   lia = 3;
       void   fe1fnc9(short,int,long);
       fe1fnc9(sia,ia,lia);
     }
     {
       struct fe1tag *st1;
       struct fe1tag *fe1fnc10(volatile int );
       volatile int via=1;
       st1 = fe1fnc10(via);
       if(st1->i == 1)
           printf("*** M3EDCL01-10 *** O   K ***\n");
       else
           printf("*** M3EDCL01-10 **** ERR ****\n");
     }
     {
       union  fe1tag1 *un1;
       union  fe1tag1 *fe1fnc11(const int );
       const    int cia=1;
       un1 = fe1fnc11(cia);
       if(un1->i == 1)
           printf("*** M3EDCL01-11 *** O   K ***\n");
       else
           printf("*** M3EDCL01-11 **** ERR ****\n");
     }
      {
       int *fe1fnc12(register int ,int);
       register      int regi = 1;
       int          ii   = 2;
       int          *pi;
       pi = fe1fnc12(regi,ii);
       if(*pi == 12)
           printf("*** M3EDCL01-12 *** O   K ***\n");
       else
           printf("*** M3EDCL01-12 **** ERR ****\n");
     }
}

unsigned int fe1fnc1()
{
    return(1);
}

signed int fe1fnc2()
{
    return(2);
}

static int fe1fnc3()
{
    return(3);
}

int fe1fnc4()
{
    return(4);
}

char  fe1fnc5(char c)
{
    if(c == 1)
        return(5);
    else
        return(0);
}

short int fe1fnc6(s)
short int s;
{
    if(s==2)
        return(6);
    else
        return(0);
}

int fe1fnc7(int ia)
{
    if(ia == 3)
        return(7);
    else
        return(0);
}

long int fe1fnc8(la,ia)
long la;
int  ia;
{
    if(la == 4 && ia == 5)
        return(8);
    else
        return(0);
}

void fe1fnc9(short int a,int b,long int c)
{
    if(a == 1 && b == 2 && c == 3)
        printf("*** M3EDCL01-09 *** O   K ***\n");
    else
        printf("*** M3EDCL01-09 **** ERR ****\n");
}

struct fe1tag *fe1fnc10(volatile int vi10)
{
    if(vi10 == 1)
    {
        static struct fe1tag st10;
        st10.i = 1;
        return(&st10);
    }
    else
        return(0);
}

union fe1tag1 *fe1fnc11(const int ci11)
{
    if(ci11 == 1)
    {
        static union fe1tag1 un11;
        un11.i = 1;
        return(&un11);
    }
    else
        return 0 ;
}

int *fe1fnc12(register  int re,int iii)
{
    static int i = 12;
    if(re == 1 && iii == 2)
        return(&i);
    else
        return(0);
}


       unsigned int  fe2fnc1();
       signed int  fe2fnc2();
       static int  fe2fnc3();
       extern int  fe2fnc4();
       char        fe2fnc5(char);
       short  fe2fnc6();
       int    fe2fnc7(int);
       long   fe2fnc8(long,int);
       void   fe2fnc9(short,int,long);
       struct fe2tag *fe2fnc10(volatile int );
       union  fe2tag1 *fe2fnc11(const int );
       int *fe2fnc12(register int ,int);

    struct fe2tag { int i;
                  char   c;
                  short  s;
               };

    union fe2tag1 { int i;
                  char   c;
                  short  s;
               };


int m3edcl02()
{
printf("*** M3EDCL02 **  ** STARTED ***\n");

     {
       unsigned int  uia;
       uia = fe2fnc1();
       if(uia == 1)
           printf("*** M3EDCL02-01 *** O   K ***\n");
       else
           printf("*** M3EDCL02-01 **** ERR ****\n");
     }
     {
       signed int  sia;
       sia = fe2fnc2();
       if(sia == 2)
           printf("*** M3EDCL02-02 *** O   K ***\n");
       else
           printf("*** M3EDCL02-02 **** ERR ****\n");
     }
     {
              int   ia;
        ia = fe2fnc3();
       if( ia == 3)
           printf("*** M3EDCL02-03 *** O   K ***\n");
       else
           printf("*** M3EDCL02-03 **** ERR ****\n");
     }
     {
              int   ib;
        ib = fe2fnc4();
       if( ib == 4)
           printf("*** M3EDCL02-04 *** O   K ***\n");
       else
           printf("*** M3EDCL02-04 **** ERR ****\n");
     }
     {
       char   ca;
       char   cb=1;
        ca = fe2fnc5(cb);
       if( ca == 5)
           printf("*** M3EDCL02-05 *** O   K ***\n");
       else
           printf("*** M3EDCL02-05 **** ERR ****\n");
     }
     {
       short  sic;
       short  sid =2;
       sic = fe2fnc6(sid);
       if(sic == 6)
           printf("*** M3EDCL02-06 *** O   K ***\n");
       else
           printf("*** M3EDCL02-06 **** ERR ****\n");
     }
     {
       int    ia;
       int    ib  =3;
       ia  = fe2fnc7(ib);
       if(ia  == 7)
           printf("*** M3EDCL02-07 *** O   K ***\n");
       else
           printf("*** M3EDCL02-07 **** ERR ****\n");
     }
     {
       long   la;
       long   lb  = 4;
       int    ie  = 5;
       la  = fe2fnc8(lb,ie);
       if(la  == 8)
           printf("*** M3EDCL02-08 *** O   K ***\n");
       else
           printf("*** M3EDCL02-08 **** ERR ****\n");
     }
     {
       short  sia = 1;
       int    ia  = 2;
       long   lia = 3;
       fe2fnc9(sia,ia,lia);
     }
     {
       struct fe2tag *st1;
       volatile int via=1;
       st1 = fe2fnc10(via);
       if(st1->i == 1)
           printf("*** M3EDCL02-10 *** O   K ***\n");
       else
           printf("*** M3EDCL02-10 **** ERR ****\n");
     }
     {
       union  fe2tag1 *un1;
       const    int cia=1;
       un1 = fe2fnc11(cia);
       if(un1->i == 1)
           printf("*** M3EDCL02-11 *** O   K ***\n");
       else
           printf("*** M3EDCL02-11 **** ERR ****\n");
     }
     {
       register      int regi = 1;
       int          ii   = 2;
       int          *pi;
       pi = fe2fnc12(regi,ii);
       if(*pi == 12)
           printf("*** M3EDCL02-12 *** O   K ***\n");
       else
           printf("*** M3EDCL02-12 **** ERR ****\n");
     }
}

unsigned int fe2fnc1()
{
    return(1);
}

signed int fe2fnc2()
{
    return(2);
}

static int fe2fnc3()
{
    return(3);
}

int fe2fnc4()
{
    return(4);
}

char  fe2fnc5(char c)
{
    if(c == 1)
        return(5);
    else
        return(0);
}

short int fe2fnc6(s)
short int s;
{
    if(s==2)
        return(6);
    else
        return(0);
}

int fe2fnc7(int ia)
{
    if(ia == 3)
        return(7);
    else
        return(0);
}

long int fe2fnc8(la,ia)
long la;
int  ia;
{
    if(la == 4 && ia == 5)
        return(8);
    else
        return(0);
}

void fe2fnc9(short int a,int b,long int c)
{
    if(a == 1 && b == 2 && c == 3)
        printf("*** M3EDCL02-09 *** O   K ***\n");
    else
        printf("*** M3EDCL02-09 **** ERR ****\n");
}

struct fe2tag *fe2fnc10(volatile int vi10)
{
    if(vi10 == 1)
    {
        static struct fe2tag st10;
        st10.i = 1;
        return(&st10);
    }
    else
        return(0);
}

union fe2tag1 *fe2fnc11(const int ci11)
{
    if(ci11 == 1)
    {
        static union fe2tag1 un11;
        un11.i = 1;
        return(&un11);
    }
    else
        return(0);
}

int *fe2fnc12(register  int re,int iii)
{
    static int i = 12;
    if(re == 1 && iii == 2)
        return(&i);
    else
        return(0);
}


 int m3edcl05()
{
  printf("***** M3EDCL05 **  ** START *****\n");
  {
    double a = 10.;
    unsigned int b;
    unsigned int fe3f01(double);
    b = fe3f01(a);

    if (b == 10u)
        printf("***** M3EDCL05 - 01 ***** OK *****\n");
      else
        printf("***** M3EDCL05 - 01 ***** NG *****\n");
  }
  {
    float a = 1.0f;
    signed int b;
    signed int fe3f02(float);
    b = fe3f02(a);

    if (b == 1)
        printf("***** M3EDCL05 - 02 ***** OK *****\n");
      else
        printf("***** M3EDCL05 - 02 ***** NG *****\n");
  }
  {
    long double a = 1.0l;
    int b;
    int fe3f03(long double);
    b = fe3f03(a);

    if (b == 1)
        printf("***** M3EDCL05 - 03 ***** OK *****\n");
      else
        printf("***** M3EDCL05 - 03 ***** NG *****\n");
  }
  printf("***** M3EDCL05 ***  ***   END   *****\n");
}

unsigned int fe3f01(double a)   { return((unsigned int)a); }

signed int   fe3f02(float a)    { return((signed int)a);   }

int          fe3f03(long double a) { return((int)a);       }





unsigned int fe4f01(double);
signed int   fe4f02(float);
int          fe4f03(long double);

 int m3edcl06()
{
  printf("***** M3EDCL06 *** TEST *** START *****\n");
  {
    double a = 10.;
    unsigned int b;
    b = fe4f01(a);

    if (b == 10u)
        printf("***** M3EDCL06 - 01 ***** OK *****\n");
      else
        printf("***** M3EDCL06 - 01 ***** NG *****\n");
  }
  {
    float a = 1.0f;
    signed int b;
    b = fe4f02(a);

    if (b == 1)
        printf("***** M3EDCL06 - 02 ***** OK *****\n");
      else
        printf("***** M3EDCL06 - 02 ***** NG *****\n");
  }
  {
    long double a = 1.0l;
    int b;
    b = fe4f03(a);

    if (b == 1)
        printf("***** M3EDCL06 - 03 ***** OK *****\n");
      else
        printf("***** M3EDCL06 - 03 ***** NG *****\n");
  }
  printf("***** M3EDCL06 *** TEST ***  END  *****\n");
}

unsigned int fe4f01(double a)   { return((unsigned int)a); }

signed int   fe4f02(float a)    { return((signed int)a);   }

int          fe4f03(long double a) { return((int)a);       }



int fe5f02(int);

 int m3edcl07()
{
  printf("***** M3EDCL07 **  ** START *****\n");
  {
    int a = 10;
    int b;
    int fe5f01(int);
    b = fe5f01(a);

    if (b == 1)
        printf("***** M3EDCL07 - 01 ***** OK *****\n");
      else
        printf("***** M3EDCL07 - 01 ***** NG *****\n");
  }
  {
    int a = 10;
    int b;
    b = fe5f02(a);

    if (b == 1)
        printf("***** M3EDCL07 - 02 ***** OK *****\n");
      else
        printf("***** M3EDCL07 - 02 ***** NG *****\n");
  }
  printf("***** M3EDCL07 **  **  END  *****\n");
}

int fe5f01(int a) { return(a / 10); }

int fe5f02(int a) { return(a - 9);  }





    int    mp1err=0;
    void   mp1errck();
 int mptest27()
    {
           int *mp1fnc1(int),*c,mp1fnc2(int *),*mp1fnc3();
           printf("******** MPTEST27 START **************\n");
           c=mp1fnc1(mp1fnc2(mp1fnc3()));
           if(*c!=6)
             mp1err++;
           mp1errck();
           printf("******** MPTEST27 END ****************\n");
    }
    int    *mp1fnc1(int d)
    {
           int *a;
           static int b=5;
           b=b+d;
           a=&b;
           if(*a!=6)
             mp1err++;
           else
            {
              printf("******** MPTEST27 MP1FNC1 RUN **********\n");
            }
           return(a);
    }
    int    mp1fnc2(int *e)
    {
           if(*e==10)
            {
             printf("******** MPTEST27 MP1FNC2 RUN **********\n");
             return(1);
            }
           else
            {
             mp1err++;
             return(0);
            }
    }
    int    *mp1fnc3()
    {
           static int f=10;
           printf("******** MPTEST27 MP1FNC3 RUN **********\n");
           return(&f);
    }
  int mptest30()
 {
 int    mp1err=0;
        void          mp1fnc(int *),mp1errck();
        static int    b;
        int          *a;
        printf("******** MPTEST27 START **************\n");
        b=5;
        a=&b;
        mp1fnc(a);
        mp1errck();
        printf("******** MPTEST27 END ****************\n");
 }
 void   mp1fnc(c)
        int          *c;
 {
        int           d;
        d=5;
        d=d+*c;
        if(d!=10)
          mp1err++;
 }
 void   mp1errck()
    {
           if(mp1err==0)
            {
             printf("***    OK                       ***\n");
            }
           else
            {
             printf("***    NG                       ***\n");
            }
 }




   struct  mp2t1                {
     int   a[10][10]        ;
     int   *b,*c,d              ;
     char  e,*f                 ;
     int   a1[4]              ;
     }    mp2p                 ;
   int  mp2g,mp2h,*mp2i,mp2fnc2();
   int  mp2b1=0,mp2b2=50,mp2b3=0,mp2b4=0,mp2z=0;
   void mp2fnc1();

void mptest28()
    {
    printf("<<<<<<<< START >>>>>>>>>>>>>>\n");
    mp2h=2 ;
    mp2g=5 ;
    for(mp2h=0;mp2h<4;mp2h++)
      mp2p.a1[mp2h]=mp2h ;
    mp2i=mp2p.a[0]+99 ;
    *mp2i=mp2g-5   ;
    for(mp2g=0;mp2g<10;mp2g=mp2g+2)
    *mp2i=*mp2i+mp2p.a1[3] ;
    *mp2i=*mp2i+mp2p.a1[2] ;
    mp2p.a [5] [5] = *mp2i ;
    mp2g=sizeof(mp2h+mp2p.e) + 1 ;
    mp2i=&mp2g ;
    mp2p.b=mp2i ;
    mp2fnc1() ;
    if(mp2p.a[2][1]==10)
    printf("<<<<<<<< MPTEST28 OK >>>>>>>>\n");
    else
    {
    printf("<<<<<<<< HAPPENED NG mp2p.a[2][1] >>\n");
    return;
    }
    if(mp2p.a[3][1]==10)
    printf("<<<<<<<< MPTEST28 OK >>>>>>>>\n");
    else
    {
    printf("<<<<<<<< HAPPENED NG mp2p.a[3][1] >>\n");
    return;
    }
    if(mp2p.a[4][1]==10)
    printf("<<<<<<<< MPTEST28 OK >>>>>>>>\n");
    else
    {
    printf("<<<<<<<< HAPPENED NG mp2p.a[4][1] >>\n");
    return;
    }
    if(mp2p.a[5][2]==11)
    printf("<<<<<<<< MPTEST28 OK >>>>>>>>\n");
    else
    {
    printf("<<<<<<<< HAPPENED NG mp2p.a[5][2] >>\n");
    return;
    }
    if(mp2p.a[5][5]==17)
    printf("<<<<<<<< MPTEST28 OK >>>>>>>>\n");
    else
    {
    printf("<<<<<<<< HAPPENED NG mp2p.a[5][5] >>\n");
    return ;
    }
    if(mp2z==2)
    printf("<<<<<<<< MPTEST28 OK >>>>>>>>\n");
    else
    {
    printf("<<<<<<<< HAPPENED NG mp2z >>>>>>\n");
    return ;
    }
    printf("<<<<<<<< MPTEST28 END >>>>>>>\n");
    }

  void mp2fnc1()
        {
        int         **k,l ;
          k=&(mp2p.b)                    ;
          l=mp2fnc2()                 ;
        }

  int  mp2fnc2()
    {
      static int c1=2,c2=5,c3=10,c4=1 ;
      mp2b1=mp2b1+2 ;
      mp2b2=mp2b2-10 ;
      do   {
         mp2p.a[c1] [c4]=c3 ;
         c1++  ;
           }
      while (c1<c2)  ;
      if(mp2b1>=5 && mp2b2<=20)
        {
           return (7);
        }
      else
        {
           c4++ ;
           c3++ ;
           mp2fnc2() ;
           mp2z=mp2z+1;
           printf("<<<<<<<< MP2FNC2 RECURSIVE >>>>\n");
           return (7);
        }
    }




struct be1t{
          int i1                                                ;
          int i2                                                ;
        }                                                      ;

struct be1t be1f1(
            int i1,
            int i2
           )                                                    ;

 int scops01()
{
    struct be1t s1                                              ;

    printf("********** SCOPS01 START **********\n")  ;

    s1 = be1f1(1,2)                                             ;

    if ( s1.i1 == 1 )
        printf("********** SCOPS01 - 01 OK **********\n")   ;
    else
        printf("********** SCOPS01 - 01 NG **********\n")   ;

    printf("********** SCOPS01  END  **********\n")    ;

}
struct be1t be1f1(
           int i1,
           int i2
           )
{
    struct be1t s1,*ps1                                         ;

    s1.i1 = i1                                                  ;
    s1.i2 = i2                                                  ;

    ps1 = &s1                                                   ;
    return *ps1                                                 ;
}



struct be2t255 {
              char c[255]                                       ;
            }                                                    ;
struct be2t256 {
              char c[256]                                       ;
            }                                                    ;

struct be2t255 be2f255( int i,char c )                            ;
struct be2t256 be2f256( int i,char c )                            ;

 int scops02()
{
  struct be2t255 s255                                             ;
  struct be2t256 s256                                             ;

  printf("********** SCOPS02 TEST STARTED **********\n")      ;


  s255 = be2f255(1,'p')                                           ;
  if (s255.c[1] == 1)
    printf("********** SCOPS02 - 01 OK **********\n")         ;
  else
    printf("********** SCOPS02 - 01 NG **********\n")         ;

  s255 = be2f255(2,'m')                                           ;
  if (s255.c[2] == 2)
    printf("********** SCOPS02 - 02 OK **********\n")         ;
  else
    printf("********** SCOPS02 - 02 NG **********\n")         ;

  s255 = be2f255(3,'s')                                           ;
  if (s255.c[3] == 3)
    printf("********** SCOPS02 - 03 OK **********\n")         ;
  else
    printf("********** SCOPS02 - 03 NG **********\n")         ;

  s255 = be2f255(4,'a')                                           ;
  if (s255.c[4] == 4)
    printf("********** SCOPS02 - 04 OK **********\n")         ;
  else
    printf("********** SCOPS02 - 04 NG **********\n")         ;


  s256 = be2f256(5,'p')                                           ;
  if (s256.c[5] == 5)
    printf("********** SCOPS02 - 05 OK **********\n")         ;
  else
    printf("********** SCOPS02 - 05 NG **********\n")         ;

  s256 = be2f256(6,'m')                                           ;
  if (s256.c[6] == 6)
    printf("********** SCOPS02 - 06 OK **********\n")         ;
  else
    printf("********** SCOPS02 - 06 NG **********\n")         ;

  s256 = be2f256(7,'s')                                           ;
  if (s256.c[7] == 7)
    printf("********** SCOPS02 - 07 OK **********\n")         ;
  else
    printf("********** SCOPS02 - 07 NG **********\n")         ;

  s256 = be2f256(8,'a')                                           ;
  if (s256.c[8] == 8)
    printf("********** SCOPS02 - 08 OK **********\n")         ;
  else
    printf("********** SCOPS02 - 08 NG **********\n")         ;



  printf("********** SCOPS02 TEST ENDED **********\n")         ;

}
struct be2t255 be2f255(int i,char c)
{
  struct be2t255 s,*p,m[10]                                     ;
  struct be2t255_m{
                 struct be2t255 be2t255_m[10]                   ;
               } sm,*psm                                         ;
  int         j                                                   ;

  for (j = 0 ; j < 255 ; s.c[j] = m[7].c[j] =
                    sm.be2t255_m[7].c[j] = i,j++) ;
  p   = &s                                                        ;
  psm = &sm                                                       ;
  switch (c){
    case 'p':
      return *p                                                   ;
    case 'm':
      return m[7]                                               ;
    case 's':
      return psm->be2t255_m[7]                                  ;
    default:
      return s                                                    ;
  }
}

struct be2t256 be2f256(int i,char c)
{
  struct be2t256 s,*p,m[10]                                     ;
  struct be2t256_m{
                 struct be2t256 be2t256_m[10]                   ;
               } sm,*psm                                         ;
  int         j                                                   ;

  for (j = 0 ; j < 256 ; s.c[j] = m[7].c[j] =
                            sm.be2t256_m[7].c[j] = i,j++) ;
  p   = &s                                                        ;
  psm = &sm                                                       ;
  switch (c){
    case 'p':
      return *p                                                   ;
    case 'm':
      return m[7]                                               ;
    case 's':
      return psm->be2t256_m[7]                                  ;
    default:
      return s                                                    ;
  }
}

