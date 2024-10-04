#include<stdio.h>
#include<setjmp.h>
#include<string.h>
int sub1 (int i_dum, int *m1i1, int *m1j1);
int mpsub (void);
int scohdi2 (void);
int scoscr2 (void);
int m3edcl07 (void);
int m3mpsi05 (void);
int scops02 (void);
int m3mpyt02 (void);
int m3egct10 (void);
int m3mpjp01 (void);
int m3ermv06 (void);
int scohdi3 (void);
int m3edc168 (void);
int mptest27 (void);
int m3esad71 (void);
int 
main (void)
{

   printf("***  **** START ***\n");

   mptest27();  
   m3edc168();  
   scohdi3();   
   m3ermv06();  
   m3mpjp01();  
   m3esad71();  
   m3egct10();  
   m3mpyt02();  
   scops02();   
   m3mpsi05();  
   m3edcl07();  
   scoscr2();   
   scohdi2();   

   printf("***  ****  END  ***\n");

}



int fe5f02(int);

int 
m3edcl07 (void)
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
  return 0;
}

int fe5f01(int a) { return(a / 10); }

int fe5f02(int a) { return(a - 9);  }





    int    mp1err=0;
    void   mp1errck();
int 
mptest27 (void)
    {
           int *mp1fnc1(int),*c,mp1fnc2(int *),*mp1fnc3();
           printf("******** MPTEST27 START **************\n");
           c=mp1fnc1(mp1fnc2(mp1fnc3()));
           if(*c!=6)
             mp1err++;
           mp1errck();
           printf("******** MPTEST27 END ****************\n");
	   return 0;
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
    int *
mp1fnc3 (void)
    {
           static int f=10;
           printf("******** MPTEST27 MP1FNC3 RUN **********\n");
           return(&f);
    }
 int 
mptest30 (void)
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
	return 0;
 }
 void 
mp1fnc (int *c)
 {
        int           d;
        d=5;
        d=d+*c;
        if(d!=10)
          mp1err++;
 }
 void 
mp1errck (void)
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





struct be2t255 {
              char c[255]                                       ;
            }                                                    ;
struct be2t256 {
              char c[256]                                       ;
            }                                                    ;

struct be2t255 be2f255( int i,char c )                            ;
struct be2t256 be2f256( int i,char c )                            ;

int 
scops02 (void)
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
  return 0;
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
                               sm.be2t256_m[7].c[j] = i,j++);
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




 volatile struct f2stag1 {
       short  s;
       long   l;
 } f1exst1;
 const union f1utag1 {
       int    i;
       long   l;
 } f1exun1,f1exun12;

int 
m3edc168 (void)
{
   printf("*** M3EDC168 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto volatile struct f2stag1 st1,*st1p;
     auto const struct f2stag2 {
           char  c;
           int   i;
     } st2 = {0x7f,0x7fffffff};
     register volatile enum entag2 {
           f1enx=-1, f1eny,f1enz=100
     } f1en1 = f1enz;
     static const union f1utag2 {
           signed  s;
           unsigned u;
     } f1un2[2] = { { -1 }, { 0 } };

     extern volatile struct f2stag1 f1exst1;
     extern const union f1utag1 f1exun1,f1exun12;

     typedef volatile enum tagf1en1 {
           f1ena, f1enb, f1enc
     } typeen;
     typeen  f1en2;

     st1.s = -1;  st1.l = 0x7fffffff;
     if (st1.s!=-1 || st1.l!=2147483647)
         printf(" *** M3EDC168 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC168 TEST-01 OK ***\n");

     if (st2.c!=127 || st2.i!=2147483647)
         printf(" *** M3EDC168 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC168 TEST-02 OK ***\n");

     if (f1en1!=100 || f1enx!=-1 || f1eny!=0 || f1enz!=100)
         printf(" *** M3EDC168 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC168 TEST-03 OK ***\n");

#if INT64
	 if (f1un2[0].s!=-1 || f1un2[0].u!=18446744073709551615 ||
			  f1un2[1].s!=0 || f1un2[1].u!=0)
#else
     if (f1un2[0].s!=-1 || f1un2[0].u!=4294967295 ||
         f1un2[1].s!=0 || f1un2[1].u!=0)
#endif
         printf(" *** M3EDC168 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC168 TEST-04 OK ***\n");

     if (f1exst1.s || f1exst1.l)
         printf(" *** M3EDC168 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC168 TEST-05 OK ***\n");

     if (f1exun1.i || f1exun1.l || f1exun12.i || f1exun12.l)
         printf(" *** M3EDC168 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC168 TEST-06 OK ***\n");

     f1en2 = f1enb;
     if (f1en2!=1 || f1ena!=0 || f1enb!=1 || f1enc!=2)
         printf(" *** M3EDC168 TEST-07 ERROR ***\n");
     else
         printf(" *** M3EDC168 TEST-07 OK ***\n");
   }

   printf("*** M3EDC168 TEST ENDED ***\n");
   return 0;
}




 int y;
int mpsub();
int m3mpsi05() {
 struct mptag {
  int mema;
  int memb;
  char memc[4];
  };
 struct mptag var1,var2,var3,*pint;
 int a[10];
 int x;
 pint=&var3;
 pint->mema=5;
 pint->memb=15;
 a[4]=5;
 a[pint->mema]=3;
 pint=&var2;
 pint->memb=4;
 x=pint->memb;
 pint->memb=a[4];
 x=pint->memb;
 pint=&var3;
 y=x;
 a[1]=y;
 pint=&var3;
 mpsub();
 x=a[1];
 pint->memc[1]=y+pint->memb;
 if (pint->memc[1]==37) printf("M3MPSI05 OK\n");
 else
 printf("%d\n",pint->memc[1]);
 return 0;
 }
 int mpsub()
 {
 y=22;
 return 0;
 }




struct t {
           unsigned int fs:2;
         } s1,s2,*p;
int 
scohdi2 (void)
{
    int        i,i1,i2                                        ;

    printf("********** SCOHDI2 TEST STARTED **********\n");

    i = 3                                                     ;
    p = &s2                                                   ;


    s1.fs = i                                                 ;
    p->fs = i                                                 ;



    if ( s1.fs == 3)
        printf("********** SCOHDI2 -01 OK **********\n")  ;
    if ( s1.fs != 3)
        printf("********** SCOHDI2 -01 NG **********\n")  ;



    if ( p->fs == 3)
        printf("********** SCOHDI2 -02 OK **********\n")  ;
    if ( p->fs != 3)
        printf("********** SCOHDI2 -02 NG **********\n")  ;



    i1 = s1.fs                                                ;
    i2 = p->fs                                                ;



    if ( (i1==3)&&(i2==3) )
        printf("********** SCOHDI2 -03 OK **********\n")  ;
    else
        printf("********** SCOHDI2 -03 NG **********\n")  ;

    printf("********** SCOHDI2 TEST ENDED **********\n")  ;
    return 0;
}




int 
m3ermv06 (void)
{
  printf("********** M3ERMV06 TEST START **********\n");
  {
    int a,b = 1,c = 2,d = 3;

    a = b + 1 + ( c * d );
    if (a == 8)
        printf("***** M3ERMV06 - 01 ***** O K *****\n");
      else
        printf("***** M3ERMV06 - 01 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2,d = 3;

    a = b + 1 - ( c * d );
    if (a == -4)
        printf("***** M3ERMV06 - 02 ***** O K *****\n");
      else
        printf("***** M3ERMV06 - 02 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2,d = 3;

    a = b - 1 + ( c * d );
    if (a == 6)
        printf("***** M3ERMV06 - 03 ***** O K *****\n");
      else
        printf("***** M3ERMV06 - 03 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2,d = 3;

    a = b - 1 - ( c * d );
    if (a == -6)
        printf("***** M3ERMV06 - 04 ***** O K *****\n");
      else
        printf("***** M3ERMV06 - 04 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b + 1 + ( c * 2 );
    if (a == 6)
        printf("***** M3ERMV06 - 05 ***** O K *****\n");
      else
        printf("***** M3ERMV06 - 05 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b + 1 - ( c * 2 );
    if (a == -2)
        printf("***** M3ERMV06 - 06 ***** O K *****\n");
      else
        printf("***** M3ERMV06 - 06 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b - 1 + ( c * 2 );
    if (a == 4)
        printf("***** M3ERMV06 - 07 ***** O K *****\n");
      else
        printf("***** M3ERMV06 - 07 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b - 1 - ( c * 2 );
    if (a == -4)
        printf("***** M3ERMV06 - 08 ***** O K *****\n");
      else
        printf("***** M3ERMV06 - 08 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b + 1 + ( 2 * c );
    if (a == 6)
        printf("***** M3ERMV06 - 09 ***** O K *****\n");
      else
        printf("***** M3ERMV06 - 09 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b + 1 - ( 2 * c );
    if (a == -2)
        printf("***** M3ERMV06 - 10 ***** O K *****\n");
      else
        printf("***** M3ERMV06 - 10 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b - 1 + ( 2 * c );
    if (a == 4)
        printf("***** M3ERMV06 - 11 ***** O K *****\n");
      else
        printf("***** M3ERMV06 - 11 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b - 1 - ( 2 * c );
    if (a == -4)
        printf("***** M3ERMV06 - 12 ***** O K *****\n");
      else
        printf("***** M3ERMV06 - 12 ***** N G *****\n");
  }
  {
    int a,b = 1;

    a = b + 1 + ( 2 * 3 );
    if (a == 8)
        printf("***** M3ERMV06 - 13 ***** O K *****\n");
      else
        printf("***** M3ERMV06 - 13 ***** N G *****\n");
  }
  {
    int a,b = 1;

    a = b + 1 - ( 2 * 3 );
    if (a == -4)
        printf("***** M3ERMV06 - 14 ***** O K *****\n");
      else
        printf("***** M3ERMV06 - 14 ***** N G *****\n");
  }
  {
    int a,b = 1;

    a = b - 1 + ( 2 * 3 );
    if (a == 6)
        printf("***** M3ERMV06 - 15 ***** O K *****\n");
      else
        printf("***** M3ERMV06 - 15 ***** N G *****\n");
  }
  {
    int a,b = 1;

    a = b - 1 - ( 2 * 3 );
    if (a == -6)
        printf("***** M3ERMV06 - 16 ***** O K *****\n");
      else
        printf("***** M3ERMV06 - 16 ***** N G *****\n");
  }
  printf("********** M3ERMV06 TEST  END  **********\n");
  return 0;
}




int 
m3esad71 (void)
  {
   printf("*** M3ESAD01 **  ** STARTED ***\n");
{
     printf("*** M3ESAD71-01 *** O K ***\n");
}
{
     printf("*** M3ESAD71-02 *** O K ***\n");
}
{
     printf("*** M3ESAD71-03 *** O K ***\n");
}
printf("*** M3ESAD71 ***  *** ENDED ***\n");
 return 0;
  }



 jmp_buf  env_area;
 int      m1int1,m1int2,err_cnt,m1i,m1j,m1k;
 int      int_mr1[10] = {0,1,2,3,4,5,6,7,8,9};
 int      int_mr2[10];                            
 int      int_mns[10] = {0,1,2,3,4,8,6,7,8,9}; 

 int 
m3mpjp01 (void)
 {
   printf("*** M3MPJP01 START ***\n");
   for (m1i=0,m1j=0;m1j<10;m1i++,m1j++)
   {
     m1int1=int_mr1[m1i];
     m1int2=setjmp(env_area);
     int_mr2[m1j]=int_mr1[m1i];
     if (m1int2 == 1)
     {
       goto l1;
     }
   }
   sub1(m1int1,&m1i,&m1j);
 l1:;
   err_cnt=0;
   for (m1k=0;m1k<10;m1k++)
   {
     if (int_mr2[m1k] != int_mns[m1k])
     {
       printf("***ng*** int_mr2(%d)=%d, right_value=%d\n",
              m1k,int_mr2[m1k],int_mns[m1k]);
       err_cnt++;
     }
   }
   if (err_cnt == 0)
   {
     printf("**** OK ****\n");
   }
   printf("*** M3MPJP01 END ***\n");
   return 0;
 }

 int 
sub1 (int i_dum, int *m1i1, int *m1j1)
 {
   *m1i1=8;
   *m1j1=5;
   longjmp(env_area,1);
 }





int 
scoscr2 (void)
{
    struct t {
        char fs:2;
    }                                                       ;
    struct t s                                               ;
    int    i                                                 ;

    printf("********** SCOSCR2 TEST STARTED **********\n") ;

    s.fs = 3                                                 ;

    i = s.fs                                                 ;

#if defined(BIT_SIGNED) || defined(__GNUC__)
    if ( i ==-1 )
        printf("********** SCOSCR2 -01 OK **********\n") ;
    else
        printf("********** SCOSCR2 -01 NG i= %d **********\n",i) ;
#else
    if ( i ==3 )
        printf("********** SCOSCR2 -01 OK **********\n") ;
    else
        printf("********** SCOSCR2 -01 NG i= %d **********\n",i) ;
#endif

    printf("********** SCOSCR2 TEST ENDED **********\n") ;
    return 0;
}




int 
m3egct10 (void)
{
  unsigned int           a = 1;
  signed int             b = 1;
  int                    e = 1;
  unsigned int           usi = 1;
  signed int             si  = 1;
  int                    i   = 1;
  unsigned short int     usshi = 1;
  signed short int       sshi  = 1;
  short int              shi   = 1;
  unsigned char          usc = 'a';
  signed char            sc  = 'a';
  char                   c   = 'a';

    printf("*************\n");


#if INT64
  if ( sizeof ( a + usi ) == 8 )
#else
  if ( sizeof ( a + usi ) == 4 )
#endif
    printf("TEST01 --> OK \n");
#if INT64
  if ( sizeof ( a + si ) == 8 )
#else
  if ( sizeof ( a + si ) == 4 )
#endif
    printf("TEST02 --> OK \n");
#if INT64
  if ( sizeof ( a + i ) == 8 )
#else
  if ( sizeof ( a + i ) == 4 )
#endif
    printf("TEST03 --> OK \n");
#if INT64
  if ( sizeof ( a + usshi ) == 8 )
#else
  if ( sizeof ( a + usshi ) == 4 )
#endif
    printf("TEST04 --> OK \n");
#if INT64
  if ( sizeof ( a + sshi ) == 8 )
#else
  if ( sizeof ( a + sshi ) == 4 )
#endif
    printf("TEST05 --> OK \n");
#if INT64
  if ( sizeof ( a + shi ) == 8 )
#else
  if ( sizeof ( a + shi ) == 4 )
#endif
    printf("TEST06 --> OK \n");
#if INT64
  if ( sizeof ( a + usc ) == 8 )
#else
  if ( sizeof ( a + usc ) == 4 )
#endif
    printf("TEST07 --> OK \n");
#if INT64
  if ( sizeof ( a + sc ) == 8 )
#else
  if ( sizeof ( a + sc ) == 4 )
#endif
    printf("TEST08 --> OK \n");
#if INT64
  if ( sizeof ( a + c ) == 8 )
#else
  if ( sizeof ( a + c ) == 4 )
#endif
    printf("TEST09 --> OK \n");
#if INT64
  if ( sizeof ( b + si ) == 8 )
#else
  if ( sizeof ( b + si ) == 4 )
#endif
    printf("TEST10 --> OK \n");
#if INT64
  if ( sizeof ( b + i ) == 8 )
#else
  if ( sizeof ( b + i ) == 4 )
#endif
    printf("TEST11 --> OK \n");
#if INT64
  if ( sizeof ( b + usshi ) == 8 )
#else
  if ( sizeof ( b + usshi ) == 4 )
#endif
    printf("TEST12 --> OK \n");
#if INT64
  if ( sizeof ( b + sshi ) == 8 )
#else
  if ( sizeof ( b + sshi ) == 4 )
#endif
    printf("TEST13 --> OK \n");
#if INT64
  if ( sizeof ( b + shi ) == 8 )
#else
  if ( sizeof ( b + shi ) == 4 )
#endif
    printf("TEST14 --> OK \n");
#if INT64
  if ( sizeof ( b + usc ) == 8 )
#else
  if ( sizeof ( b + usc ) == 4 )
#endif
    printf("TEST15 --> OK \n");
#if INT64
  if ( sizeof ( b + sc ) == 8 )
#else
  if ( sizeof ( b + sc ) == 4 )
#endif
    printf("TEST16 --> OK \n");
#if INT64
  if ( sizeof ( b + c ) == 8 )
#else
  if ( sizeof ( b + c ) == 4 )
#endif
    printf("TEST17 --> OK \n");
#if INT64
  if ( sizeof ( e + i ) == 8 )
#else
  if ( sizeof ( e + i ) == 4 )
#endif
    printf("TEST18 --> OK \n");
#if INT64
  if ( sizeof ( e + usshi ) == 8 )
#else
  if ( sizeof ( e + usshi ) == 4 )
#endif
    printf("TEST19 --> OK \n");
#if INT64
  if ( sizeof ( e + sshi ) == 8 )
#else
  if ( sizeof ( e + sshi ) == 4 )
#endif
    printf("TEST20 --> OK \n");
#if INT64
  if ( sizeof ( e + shi ) == 8 )
#else
  if ( sizeof ( e + shi ) == 4 )
#endif
    printf("TEST21 --> OK \n");
#if INT64
  if ( sizeof ( e + usc ) == 8 )
#else
  if ( sizeof ( e + usc ) == 4 )
#endif
    printf("TEST22 --> OK \n");
#if INT64
  if ( sizeof ( e + sc ) == 8 )
#else
  if ( sizeof ( e + sc ) == 4 )
#endif
    printf("TEST23 --> OK \n");
#if INT64
  if ( sizeof ( e + c ) == 8 )
#else
  if ( sizeof ( e + c ) == 4 )
#endif
    printf("TEST24 --> OK \n");
  return 0;
}




struct numlist
  {
   int number ;
   struct numlist *benum ;
   struct numlist *afnum ;
  } ;
   int mpdata[10];
   int mpn ;
int putdata (struct numlist *justnum, struct numlist *updatad);
int dataout (struct numlist *justnum);
int 
m3mpyt02 (void)
{
   struct numlist listar[50] ;
   struct numlist *startad ;
   struct numlist *updatad ;
   static int allnum[10]={1,2,3,4,5,6,7,8,9,10} ;
   int result ;
   int i ;
       mpdata[0]=5 ;
       mpdata[1]=8 ;
       mpdata[2]=2 ;
       mpdata[3]=9 ;
       mpdata[4]=6 ;
       mpdata[5]=10;
       mpdata[6]=1 ;
       mpdata[7]=7 ;
       mpdata[8]=3 ;
       mpdata[9]=4 ;
   startad=listar ;
   printf ("***** SORT *****\n");
   startad->number=mpdata[0] ;
   startad->benum=0 ;
   startad->afnum=0 ;
   updatad=listar ;
   i=1 ;
   while (i<=9)
         {
          updatad=updatad+1 ;
          updatad->number=mpdata[i] ;
          updatad->benum=0 ;
          updatad->afnum=0 ;
          putdata (startad,updatad);
          i++ ;
         }
   mpn=0 ;
   dataout (startad);
   if(memcmp(mpdata,allnum,40)==0)
     {
       printf ("***** OK *****\n");
     }
   else
     {
       printf ("***** NG *****\n");
      }
   return 0;
}
int 
putdata (struct numlist *justnum, struct numlist *updatad)
{
   if (justnum->number > updatad->number)
  {
     if (justnum->benum==0)
       justnum->benum=updatad ;
     else
       putdata (justnum->benum,updatad);
   }
    else
      {
        if (justnum->afnum==0)
            justnum->afnum=updatad ;
        else
            putdata (justnum->afnum,updatad);
       }
   return 0;
}
int 
dataout (struct numlist *justnum)
{
if (justnum->benum!=0)
    dataout (justnum->benum);
printf ("NUMBER:- %d -\n",justnum->number);
mpdata[mpn] = justnum->number ;
mpn++ ;
if (justnum->afnum!=0)
    dataout (justnum->afnum);
 return 0;
}


struct be1t {
           unsigned int fs:2;
         } be1s1,*be1p;

int 
scohdi3 (void)
{
    int        i,i1,i2                                        ;

    printf("********** SCOHDI3 STARTED *********\n");

    i = 3                                                     ;
    be1p = &be1s1                                             ;


    be1s1.fs = i                                              ;



    if ( be1p->fs == 3)
        printf("********** SCOHDI3 -01 OK **********\n")  ;
    else
        printf("********** SCOHDI3 -01 NG **********\n")  ;



    i1 = be1s1.fs                                             ;
    i2 = be1p->fs                                             ;



    if ( (i1==3)&&(i2==3) )
        printf("********** SCOHDI3 -02 OK **********\n")  ;
    else
        printf("********** SCOHDI3 -02 NG **********\n")  ;

    printf("********** SCOHDI3 ENDED  **********\n")  ;
    return 0;
}
