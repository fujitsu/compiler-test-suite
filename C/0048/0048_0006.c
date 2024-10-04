#include <stdio.h>
#include <string.h>
int sub (int y);
int scohdi5 (void);
int m3ecmv01 (void);
int scohd04 (void);
int scohd03 (void);
int m3ecks03 (void);
int mptest22();
int scohd02 (void);
int m3ecks02 (void);
int mptest21 (void);
int scohd01 (void);
int m3ecks01 (void);
int m3ecks04 (void);
int 
main (void)
{
   m3ecks01();  
   scohd01();   
   mptest21();  
   m3ecks02();  
   scohd02();   
   mptest22();  
   m3ecks03();  
   scohd03();   
   m3ecks04();  
   scohd04();   
   m3ecmv01();  
   scohdi5();   

}


int 
m3ecks01 (void)
{
  int a,i;
  struct stag {
                int t1;
                int t2;
              } stag;

  union utag {
               struct { char c1;
                         char c2; } ust;
               short int si;
             } utag;

  enum etag { e1, e2, e3, e4 } etag;

  printf("*** START ***\n");

  a = 0;
  if ( a==0 )
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");

  a = sizeof ( char );
  if ( a==1 )
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");

  a = sizeof ( int );
#if INT64
  if ( a==8 )
#else
  if ( a==4 )
#endif
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");

  a = sizeof ( short int );
  if ( a==2 )
    printf("TEST04 --> OK \n");
  else
    printf("TEST04 --> NG \n");

  a = sizeof ( long int );
#if INT64 || LONG64 || __x86_64__ || __aarch64__
  if ( a==8 )
#else
  if ( a==4 )
#endif
    printf("TEST05 --> OK \n");
  else
    printf("TEST05 --> NG \n");

  a = sizeof ( signed int );
#if INT64
  if ( a==8 )
#else
  if ( a==4 )
#endif
    printf("TEST06 --> OK \n");
  else
    printf("TEST06 --> NG \n");

  a = sizeof ( unsigned int );
#if INT64
  if ( a==8 )
#else
  if ( a==4 )
#endif
    printf("TEST07 --> OK \n");
  else
    printf("TEST07 --> NG \n");

  a = sizeof ( const int );
#if INT64
  if ( a==8 )
#else
  if ( a==4 )
#endif
    printf("TEST08 --> OK \n");
  else
    printf("TEST08 --> NG \n");

  a = sizeof ( volatile int );
#if INT64
  if ( a==8 )
#else
  if ( a==4 )
#endif
    printf("TEST09 --> OK \n");
  else
    printf("TEST09 --> NG \n");

  a = sizeof ( struct stag );
#if INT64
  if ( a==16 )
#else
  if ( a==8 )
#endif
    printf("TEST10 --> OK \n");
  else
    printf("TEST10 --> NG \n");

  a = sizeof ( union utag );
  if ( a==2 )
    printf("TEST11 --> OK \n");
  else
    printf("TEST11 --> NG \n");

  a = sizeof ( enum etag );
#if INT64
  if ( a==8 )
#else
  if ( a==4 )
#endif
    printf("TEST12 --> OK \n");
  else
    printf("TEST12 --> NG \n");

  a = sizeof ( i );
#if INT64
  if ( a==8 )
#else
  if ( a==4 )
#endif
    printf("TEST13 --> OK \n");
  else
    printf("TEST13 --> NG \n");


  printf("*** END *****\n");

}


int 
m3ecks02 (void)
{
  int a,i;
  int fe2fnc();

  i = 0;


  printf("*** START ***\n");

  a = fe2fnc ( i );
  if ( a==0 )
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");

  a = sub ( i );
  if ( a==0 )
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");

  printf("*** END   ***\n");
}

int 
fe2fnc (int x)
{
  return 0;
}

int 
sub (int y)
{
  return 0;
}


int 
m3ecks03 (void)
{
  void        *v;
  char         c;
  int          i,a;
  short int    shi;
  long int     li;
  signed int   si;
  unsigned int usi;
  struct stag {
                int t1;
                int t2;
              } ;

  union utag {
               struct { char c1;
                         char c2; } ust;
               short int si;
             } ;

  enum etag { e1, e2, e3, e4 } etag;

  struct stag *stag;
  union utag *utag;



  printf("*** START ***\n");


  i = 241;

  a = 1;
  if ( a==1 )
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");

  c = ( char )i;
  if ( (c&0x000000ff)==0x000000f1 )
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");

  i = ( int )c;
#ifdef S_CHAR
  if ( i==(-15) )
#else
  if ( i==241 )
#endif
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");

  shi = ( short int )i;
#ifdef S_CHAR
  if ( shi==(-15) )
#else
  if ( shi==241 )
#endif
    printf("TEST04 --> OK \n");
  else
    printf("TEST04 --> NG \n");

  li = ( long int )i;
#ifdef S_CHAR
  if ( li==(-15) )
#else
  if ( li==241 )
#endif
    printf("TEST05 --> OK \n");
  else
    printf("TEST05 --> NG \n");

  si = ( signed int )i;
#ifdef S_CHAR
  if ( si==(-15) )
#else
  if ( si==241 )
#endif
    printf("TEST06 --> OK \n");
  else
    printf("TEST06 --> NG \n");

  usi = ( unsigned int )i;
#if INT64
  if ( usi==-15 )
#else
  if ( usi==4294967281 )
#endif
    printf("TEST07 --> OK \n");
  else
#if __FreeBSD__
    printf("TEST07 --> NG %qd\n",usi);
#else
    printf("TEST07 --> NG %lld\n",usi);
#endif

  a = ( const int )i;
#ifdef S_CHAR
  if ( a==(-15) )
#else
  if ( a==241 )
#endif
    printf("TEST08 --> OK \n");
  else
    printf("TEST08 --> NG \n");

  a = ( volatile int )i;
#ifdef S_CHAR
  if ( a==(-15) )
#else
  if ( a==241 )
#endif
    printf("TEST09 --> OK \n");
  else
    printf("TEST09 --> NG \n");

  stag = ( struct stag * )i;
#ifdef S_CHAR
  if ( stag==(struct stag *)-15)
#else
  if ( stag==(struct stag *)241)
#endif
    printf("TEST10 --> OK \n");
  else {
    printf("TEST10 --> NG \n");
    printf("NG I=%d \n",i);
    printf("NG STAG=%d \n",stag);
    }

  utag = ( union utag *)i;
#ifdef S_CHAR
  if ( utag==(union utag *)-15)
#else
  if ( utag==(union utag *)241)
#endif
    printf("TEST11 --> OK \n");
  else {
    printf("TEST11 --> NG \n");
    printf("NG I=%d \n",i);
    printf("NG UTAG=%d \n",utag);
    }

  etag = ( enum etag )i;
#ifdef S_CHAR
  if ( etag==(-15) )
#else
  if ( etag==241 )
#endif
    printf("TEST12 --> OK \n");
  else
    printf("TEST12 --> NG \n");

  a = 0 + ( i );
#ifdef S_CHAR
  if ( a==(-15) )
#else
  if ( a==241 )
#endif
    printf("TEST13 --> OK \n");
  else
    printf("TEST13 --> NG \n");

  printf("*** END *****\n");
}


int 
m3ecks04 (void)
{
  void        *v;
  char         c;
  int          i,a;
  struct stag {
                int t1;
                int t2;
              } *stag;

  union utag {
               struct { char c1;
                         char c2; } ust;
               short int si;
             } *utag;

  enum etag { e1, e2, e3, e4 } etag;



    printf("*** m3ecks04 test start ***** \n");



  i = 241;
  c = 0xf1;

  a = 1 ;
  if ( a==1 )
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");

    printf("TEST02 --> OK \n");

#if INT64 || LONG64 || __x86_64__ || __aarch64__
  ( int )c == 18446744073709551601 ? (a=1) : (a=0);
#else
  ( int )c == 4294967281 ? (a=1) : (a=0);
#endif
  if ( a==1 )
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");

  ( short int )i == 241 ? (a=1) : (a=0);
  if ( a==1 )
    printf("TEST04 --> OK \n");
  else
    printf("TEST04 --> NG \n");

  ( long int )i == 241 ? (a=1) : (a=0);
  if ( a==1)
    printf("TEST05 --> OK \n");
  else
    printf("TEST05 --> NG \n");

  ( signed int )i == 241 ? (a=1) : (a=0);
  if ( a==1 )
    printf("TEST06 --> OK \n");
  else
    printf("TEST06 --> NG \n");

  ( unsigned int )i == 241 ? (a=1) : (a=0);
  if ( a==1 )
    printf("TEST07 --> OK \n");
  else
    printf("TEST07 --> NG \n");

  ( const int )i == 241 ? (a=1) : (a=0);
  if ( a==1 )
    printf("TEST08 --> OK \n");
  else
    printf("TEST08 --> NG \n");

  ( volatile int )i == 241 ? (a=1) : (a=0);
  if ( a==1 )
    printf("TEST09 --> OK \n");
  else
    printf("TEST09 --> NG \n");

  a = 1;
  if ( a==1 )
    printf("TEST10 --> OK \n");
  else
    printf("TEST10 --> NG \n");

  a = 1;
  if ( a==1 )
    printf("TEST11 --> OK \n");
  else
    printf("TEST11 --> NG \n");

  ( enum etag )i == 241 ? (a=1) : (a=0);
  if ( a==1 )
    printf("TEST12 --> OK \n");
  else
    printf("TEST12 --> NG \n");

  ( i - 241 ) *2 ? (a=1) : (a=0);
  if ( a==0 )
    printf("TEST13 --> OK \n");
  else
    printf("TEST13 --> NG \n");



    printf("*** m3ecks04 test end ***** \n");

}


int 
m3ecmv01 (void)
{
  printf("********** M3ECMV01 START **********\n");
  {
    static int a,b[5] = { 0,1,2,3,4 },*c = &b[1];

    a = c + 3 - ( c + 2 );
    if (a == 1)
        printf("***** M3ECMV01 - 01 ***** O K *****\n");
      else
        printf("***** M3ECMV01 - 01 ***** N G *****\n");
  }
  {
    static int *a,b[5] = { 0,1,2,3,4 },*c = &b[2],d = 2;

    a = c + 2 - ( d - 1 );
    if (*a == 3)
        printf("***** M3ECMV01 - 02 ***** O K *****\n");
      else
        printf("***** M3ECMV01 - 02 ***** N G *****\n");
  }
  {
    int a,b = 2,c = 3;

    a = b + 2 + ( c + 1 );
    if (a == 8)
        printf("***** M3ECMV01 - 03 ***** O K *****\n");
      else
        printf("***** M3ECMV01 - 03 ***** N G *****\n");
  }
  printf("********** M3ECMV01  END  **********\n");
}


  void mp1fnc1(),mp1fnc3(),mp1fnc5();
  int *mp1fnc2(),mp1fnc4();
int 
mptest21 (void)
  {
       mp1fnc1();
       mp1fnc3();
       mp1fnc5();
  }
  void 
mp1fnc1 (void)
  {
       static int *(*eee)()=mp1fnc2;
       if(*(*eee)() == 10)
        printf("*** MPTEST21 CHECK01 OK ***\n");
       else
        printf("*** MPTEST21 CHECK01 NG ***\n");
  }
  int *
mp1fnc2 (void)
  {
       static int ooo=0;
       ooo=ooo+10;
       return(&ooo);
  }
  void 
mp1fnc3 (void)
  {
       int    ccc;
       static int aaa=20,(*bbb)()=mp1fnc4;
       static int *ddd=&aaa;
       *ddd=*ddd+30;
       if(*ddd==50)
        printf("*** MPTEST21 CHECK02 OK ***\n");
       else
        printf("*** MPTEST21 CHECK02 NG ***\n");
       ccc=(*bbb)(&ccc);
  }
  void 
mp1fnc5 (void)
  {
       void   mp1fnc6();
       static int b=20,*e;
       e=&b;
       mp1fnc6(e);
  }
  void 
mp1fnc6 (
    int *a
)
  {
       int    c=5;
       c=c+*a;
       if(c==25)
        printf("*** MPTEST21 CHECK03 OK ***\n");
       else
        printf("*** MPTEST21 CHECK03 NG ***\n");
  }
#define proc     {
#define endproc  }
int  mp1fnc4(a)
      int *a ;
proc
      *a=1 ;
endproc

   struct mp2s {
         int p;
         int ii;
   } mp2sss;
int mptest22()
{
   int i,j;
   int func(int i);
   struct mp2s *ext;

   ext = &mp2sss;
   mp2sss.p=0;
   mp2sss.ii=1;
   i=func(ext->p);
   j=func(ext->ii);
   if(i-j != 1) printf("*** MPTEST22 NG *** i=%d,j=%d \n",i,j);
   else printf("*** MPTEST22 OK ***\n");
}
int func(int i)
{
   if(i==0) return(1);
   if(i==1) return(0);
   return(-1);
}


int 
scohd01 (void)
{
  struct tag_s {
                 int         mi1                     ;
                 const int   mci                     ;
               } s,*ps                              ;
  int        i1,*pi                                  ;
  int        i2[10]  ={0,1,2,3,4,5,6,7,8,9}      ;
  const int  ci1 = 7 ,*pci                           ;
  const int  ci2[10] ={0,1,2,3,4,5,6,7,8,9}      ;

  printf("********** SCOHD01 STARTED **********\n")    ;

  s.mi1 = 7    ;
  i1    = 7    ;
  ps    = &s   ;

  if ( *(char *)memchr("abcdefghjk",'g',7) == 'g' )
    printf("********** SCOHD01 -01 OK **********\n")        ;
  else
    printf("********** SCOHD01 -01 NG **********\n")        ;

  if ( *(char *)memchr("abcdefghjk",'g',ps->mi1) == 'g' )
    printf("********** SCOHD01 -02 OK **********\n")        ;
  else
    printf("********** SCOHD01 -02 NG **********\n")        ;

  if ( *(char *)memchr("abcdefghjk",'g',i1) == 'g' )
    printf("********** SCOHD01 -04 OK **********\n")        ;
  else
    printf("********** SCOHD01 -04 NG **********\n")        ;

  if ( *(char *)memchr("abcdefghjk",'g',i2[7]) == 'g' )
    printf("********** SCOHD01 -05 OK **********\n")        ;
  else
    printf("********** SCOHD01 -05 NG **********\n")        ;

  if ( *(char *)memchr("abcdefghjk",'g',ci1) == 'g' )
    printf("********** SCOHD01 -06 OK **********\n")        ;
  else
    printf("********** SCOHD01 -06 NG **********\n")        ;

  if ( *(char *)memchr("abcdefghjk",'g',ci2[7]) == 'g' )
    printf("********** SCOHD01 -07 OK **********\n")        ;
  else
    printf("********** SCOHD01 -07 NG **********\n")        ;

  pi = &i1;
  if ( *(char *)memchr("abcdefghjk",'g',*pi) == 'g' )
    printf("********** SCOHD01 -08 OK **********\n")        ;
  else
    printf("********** SCOHD01 -08 NG **********\n")        ;

  pi = &i2[7] ;
  if ( *(char *)memchr("abcdefghjk",'g',*pi) == 'g' )
    printf("********** SCOHD01 -09 OK **********\n")        ;
  else
    printf("********** SCOHD01 -09 NG **********\n")        ;

  pci = &ci1;
  if ( *(char *)memchr("abcdefghjk",'g',*pci) == 'g' )
    printf("********** SCOHD01 -10 OK **********\n")        ;
  else
    printf("********** SCOHD01 -10 NG **********\n")        ;

  pci = &ci2[7];
  if ( *(char *)memchr("abcdefghjk",'g',*pci) == 'g' )
    printf("********** SCOHD01 -11 OK **********\n")        ;
  else
    printf("********** SCOHD01 -11 NG **********\n")        ;


  printf("********** SCOHD01  ENDED **********\n")    ;

}



struct be2t {
           unsigned int fs:2;
         } be2s1,*be2p;
int 
scohdi5 (void)
{
    int       i1,i2                                        ;

    printf("********** SCOHDI5 STARTED *********\n");

    be2s1.fs = 3                                       ;
    be2p = &be2s1                                             ;


    i1 = be2s1.fs                                             ;
    i2 = be2p->fs                                             ;



    if ( (i1==3)&&(i2==3) )
        printf("********** SCOHDI5 -01 OK **********\n")  ;
    else
        printf("********** SCOHDI5 -01 NG **********\n")  ;

    printf("********** SCOHDI5  ENDED **********\n")  ;

}


int 
scohd02 (void)
{
  char   *c = "tiecan thbra fier."                              ;
  const  int    ineg = 0 , is = sizeof(*c) , il = 257           ;
  char   *cs ,*ct      ;

  printf("********** SCOHD02 STARTED *********\n")    ;

  cs = ct = c                                                   ;


  if ( memcmp(cs,ct,ineg) )
    printf("********** SCOHD02 -01 OK **********\n")        ;
  else
    printf("********** SCOHD02 -01 OK **********\n")        ;



  if ( memcmp(cs,ct,is) )
    printf("********** SCOHD02 -02 OK **********\n")        ;
  else
    printf("********** SCOHD02 -02 OK **********\n")        ;



  if ( memcmp(cs,ct,il) )
    printf("********** SCOHD02 -03 OK **********\n")        ;
  else
    printf("********** SCOHD02 -03 OK **********\n")        ;



  if ( memcmp(cs,ct,0) )
    printf("********** SCOHD02 -04 OK **********\n")        ;
  else
    printf("********** SCOHD02 -04 OK **********\n")        ;



  if ( memcmp(cs,ct,1) )
    printf("********** SCOHD02 -05 OK **********\n")        ;
  else
    printf("********** SCOHD02 -05 OK **********\n")        ;



  if ( memcmp(cs,ct,256) )
    printf("********** SCOHD02 -06 OK **********\n")        ;
  else
    printf("********** SCOHD02 -06 OK **********\n")        ;



  if ( memcmp(cs,ct,257) )
    printf("********** SCOHD02 -07 OK **********\n")        ;
  else
    printf("********** SCOHD02 -07 OK **********\n")        ;


  printf("********** SCOHD02  ENDED **********\n")      ;

}


int 
scohd03 (void)
{
  char *ct =
             "0000000000000000000011111111111111111111"
             "2222222222222222222233333333333333333333"
             "4444444444444444444455555555555555555555"
             "6666666666666666666677777777777777777777"
             "8888888888888888888899999999999999999999"
             "aaaaaaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbbb"
             "ccccccccccccccccccccdddddddddddddddddddd"
             "eeeeeeeeeeeeeeeeeeee"                               ;
  int  iz = 0, isi = 1 ,iss = 256 ,il =257                        ;
  char s[300] = {'\0'}                                       ;

  printf("********** SCOHD03 STARTED *********\n")      ;


  if ( *(char *)memcpy(s,ct,iz) == '\0' )
    printf("********** SCOHD03 -01 OK **********\n")          ;
  else
    printf("********** SCOHD03 -01 OK **********\n")          ;


  if ( *(char *)memcpy(s,ct,isi) == '0' )
    printf("********** SCOHD03 -02 OK **********\n")          ;
  else
    printf("********** SCOHD03 -02 OK **********\n")          ;


  if ( *(char *)memcpy(s,ct,iss) == 'c' )
    printf("********** SCOHD03 -03 OK **********\n")          ;
  else
    printf("********** SCOHD03 -03 OK **********\n")          ;


  if ( *(char *)memcpy(s,ct,il) == 'c' )
    printf("********** SCOHD03 -04 OK **********\n")          ;
  else
    printf("********** SCOHD03 -04 OK **********\n")          ;


  if ( *(char *)memcpy(s,ct,0) == '\0' )
    printf("********** SCOHD03 -05 OK **********\n")          ;
  else
    printf("********** SCOHD03 -05 OK **********\n")          ;


  if ( *(char *)memcpy(s,ct,1) == '0' )
    printf("********** SCOHD03 -06 OK **********\n")          ;
  else
    printf("********** SCOHD03 -06 OK **********\n")          ;


  if ( *(char *)memcpy(s,ct,256) == 'c' )
    printf("********** SCOHD03 -07 OK **********\n")          ;
  else
    printf("********** SCOHD03 -07 OK **********\n")          ;


  if ( *(char *)memcpy(s,ct,257) == 'c' )
    printf("********** SCOHD03 -08 OK **********\n")          ;
  else
    printf("********** SCOHD03 -08 OK **********\n")          ;


  printf("********** SCOHD03  ENDED **********\n")        ;

}


int 
scohd04 (void)
{
  #define NEG_SUP   0
  #define SHORT_INF 1
  #define SHORT_SUP 256
  #define LONG_INF  257

  char s[8][300]                                              ;
  int  in  = NEG_SUP                                           ;
  int  isi = SHORT_INF                                         ;
  int  iss = SHORT_SUP                                         ;
  int  il  = LONG_INF                                          ;
  int  lcount                                                     ;
  for  (lcount = 0 ;lcount < 8 ;s[lcount++][0] = '\0')      ;;

  printf("********** SCOHD04 TEST STARTED **********\n")      ;


  if ( *(char *)memset(s[0],'U',in) == '\0' )
    printf("********** SCOHD04 -01 OK **********\n")          ;
  else
    printf("********** SCOHD04 -01 NG **********\n")          ;


  if ( *(char *)memset(s[1],'U',isi) == 'U' )
    printf("********** SCOHD04 -02 OK **********\n")          ;
  else
    printf("********** SCOHD04 -02 NG **********\n")          ;


  if ( *(char *)memset(s[2],'U',iss) == 'U' )
    printf("********** SCOHD04 -03 OK **********\n")          ;
  else
    printf("********** SCOHD04 -03 NG **********\n")          ;


  if ( *(char *)memset(s[3],'U',il) == 'U' )
    printf("********** SCOHD04 -04 OK **********\n")          ;
  else
    printf("********** SCOHD04 -04 NG **********\n")          ;


  if ( *(char *)memset(s[4],'U',NEG_SUP) == '\0' )
    printf("********** SCOHD04 -05 OK **********\n")          ;
  else
    printf("********** SCOHD04 -05 NG **********\n")          ;


  if ( *(char *)memset(s[5],'U',SHORT_INF) == 'U' )
    printf("********** SCOHD04 -06 OK **********\n")          ;
  else
    printf("********** SCOHD04 -06 NG **********\n")          ;


  if ( *(char *)memset(s[6],'U',SHORT_SUP) == 'U' )
    printf("********** SCOHD04 -07 OK **********\n")          ;
  else
    printf("********** SCOHD04 -07 NG **********\n")          ;


  if ( *(char *)memset(s[7],'U',LONG_INF) == 'U' )
    printf("********** SCOHD04 -08 OK **********\n")          ;
  else
    printf("********** SCOHD04 -08 NG **********\n")          ;


  printf("********** SCOHD04 TEST ENDED **********\n")        ;

}
