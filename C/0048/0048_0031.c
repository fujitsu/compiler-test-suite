

#include <stdio.h>
#include <string.h>
int chk (void);
int m3edc107 (void);
int scohdi5 (void);
int scops02 (void);
int mptest10 (void);
int scobe13 (void);
int m3edc017 (void);
int mptest22 (void);
int scosh01 (void);
int m3ecks01 (void);
int scosc06 (void);
int m3edcl02 (void);
int m3mpcm04 (void);
int 
main (void)
{

   printf("***  **** START ***\n");

   m3mpcm04();  
   m3edcl02();  
   scosc06();   
   m3ecks01();  
   scosh01();   
   mptest22();  
   m3edc017();  
   scobe13();   
   mptest10();  
   scops02();   
   scohdi5();   
   m3edc107();  

   printf("***  ****  END  ***\n");

}



int 
scobe13 (void)
{
   struct tag
   {
      signed char            b1 : 3;
      signed short int       b2 : 3;
      signed long int        b3 : 3;
      unsigned char          b4 : 3;
      unsigned short int     b5 : 3;
      unsigned long int      b6 : 3;
   } a;

   char  c1=1;


      printf ("**************\n");


   a.b1 = c1;
   if (a.b1==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   a.b2 = c1;
   if (a.b2==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   a.b3 = c1;
   if (a.b3==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   a.b4 = c1;
   if (a.b4==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   a.b5 = c1;
   if (a.b5==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   a.b6 = c1;
   if (a.b6==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
}



#define TESTOK " *** CHECK OK ***\n"
#define TESTNG " *** CHECK NG ***\n"


  static int rdata[ ] ={2,3,5,7,11,13,17,19,23,29,31,37,41,43,
                           47,53,59,61,67,71,73,79,83,89,97};

  struct mp2ss {
       int  ssd;
       char atr[4];
       struct mp2ss *nxt;
  } mp2ss0[100];

 int chk1(struct mp2ss *,int *,int);
 int chk2(struct mp2ss *,int *,int);
 int chain(struct mp2ss *);
 int ckchain(struct mp2ss *);

int 
mptest10 (void)
 {
    int data ;
    int i,mm,rtncd;
    char  str[3];

    printf("\n***** MPTEST10 START *****\n");
    for( i=0 ; i<100 ; i++){
       mp2ss0[i].ssd=i+1;
       mp2ss0[i].atr[0]='O';
       mp2ss0[i].atr[1]='N';
       mp2ss0[i].atr[2]='\0';
    }
    mp2ss0[0].atr[1]='F';
    mp2ss0[0].atr[2]='F';
    mp2ss0[0].atr[3]='\0';

    for(data=1 ; data <= 100 ; data++ ){
       for( i=2 ; i<=data ; i++){
          mm = data%i;
          if(mm==0){
             if(i!=data){
                mp2ss0[data-1].atr[1]='F';
                mp2ss0[data-1].atr[2]='F';
                mp2ss0[data-1].atr[3]='\0';
                break;
             }
          }
       }
    }

    for(i=0;i<100;i++){
       printf("(%2d) D=%3d, ATR=%3s",
                                     i,mp2ss0[i].ssd,mp2ss0[i].atr);
       (i+1)%3==0 ? printf("\n") : printf("  ");
    }
    printf("\n");

    switch(rtncd=chain(mp2ss0)){
      case 0:
        printf("  **  CHAIN OK **\n");
        break;
      case 1:
        printf("  **  CHAIN NG  CODE = %d **\n",rtncd);
        goto label1 ;
      case 2:
        printf("  **  CHAIN NG  CODE = %d **\n",rtncd);
        goto label1 ;
    }

    rtncd = chk();
 label1:
    if(rtncd==0){
       printf(TESTOK);
       strcpy(str,"OK");
    }else{
       printf(TESTNG);
       strcpy(str,"NG");
    }
    printf("***** MPTEST10 %s END *****\n",str);
 }

 int 
chk (void)
 {
    struct mp2ss *sp;
    int i,jg;

    sp=mp2ss0;
    for(i=0;i<100;i++){
       if(!strcmp(sp->atr,"ON"))
          jg=chk1(sp,rdata,sizeof(rdata)/sizeof(rdata[0]));
       else
          jg=chk2(sp,rdata,sizeof(rdata)/sizeof(rdata[0]));
       if(jg!=0)
          return(-1);
    }
    return(0);
 }

 int 
chk1 (struct mp2ss *sp, int *data, int size)
 {
    int i;

    for(i=0;i<size;i++){
       if(sp->ssd == *data++)
          return(0);
    }
    printf("     IN CHK1  NG  NUMBER=%d\n",sp->ssd);
    return(-1);
 }

 int 
chk2 (struct mp2ss *sp, int *data, int sz)
 {
    int i;

    for(i=0;i<sz;i++){
       if(sp->ssd == *data++){
          printf("   IN CHK2    NG   NUMBER=%d\n",sp->ssd);
          return(-1);
       }
    }
    return(0);
 }

 int 
chain (struct mp2ss *mp2ssp)
 {
    struct mp2ss *wssp,*bssp,*pssp;
    int i;

    for(i=0,wssp=mp2ssp ; i<100 ; i++){
      if(wssp->atr[1]=='N'){
         pssp=bssp=wssp;
         break;
      }
      wssp++;
    }

    for( ; i<100 ; i++){
      if(wssp->atr[1]=='N'){
         bssp->nxt=wssp;
         bssp=wssp;
      }
      wssp++;
    }
    return(ckchain(pssp));
 }

 int 
ckchain (struct mp2ss *mp2ssp)
 {
    int i;
    struct mp2ss *wssp;

     for(wssp=mp2ssp,i=0;i<100;i++){
       if(wssp->ssd != rdata[i]){
         return(1);
       } else {
         wssp= wssp->nxt;
         if(wssp==NULL && i==sizeof(rdata)/sizeof(rdata[0])-1) return(0);
       }
     }
     return(2);
 }




 extern short int signed fe1a4[2]={7,8};
 int signed short fe1a5;
 typedef int short unsigned fe1tp1;

int 
m3edc107 (void)
{
   signed short int *addr11;
   unsigned short int *addr21;

   auto signed short int a1;
   register signed int short a2=0,b2=-1;
   static short unsigned int a3[2];
   extern short int signed fe1a4[2];
   extern int signed short fe1a5;
   fe1tp1 a6;

   printf("*** M3EDC107 ** MK3 TEST FOR DCL ** STARTED ***\n");

   addr11 = &a1;
   if (a1!=*addr11)
       printf(" *** M3EDC107 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC107 TEST-01 OK ***\n");

   if (a2 || b2!=-1)
       printf(" *** M3EDC107 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC107 TEST-02 OK ***\n");

   addr21 = a3;
   if (a3[0]!=*addr21)
       printf(" *** M3EDC107 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC107 TEST-03 OK ***\n");

   if (fe1a4[0]!=7 || fe1a4[1]!=8)
       printf(" *** M3EDC107 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC107 TEST-04 OK ***\n");

   if (fe1a5!=0)
       printf(" *** M3EDC107 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC107 TEST-05 OK ***\n");

   addr21 = &a6;
   if (a6!=*addr21)
       printf(" *** M3EDC107 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC107 TEST-06 OK ***\n");

   printf("*** M3EDC107 TEST ENDED ***\n");
}



#if INT64
#define int __int32
#endif

 int   m1outi1,m1outi2;
 float m1outf1,m1outf2;
 int 
m3mpcm04 (void)
 {
   int *pi,*qi;
   int ai,bi,ci,di,ei,fi;
   int i;
   float *pf,*qf;
   float af,bf,cf,df,ef,ff;

   struct array {
     int aa[10];
     int bb[10];
   };
   struct array  xs;
   struct array *ps;

   union alis {
     int xi;
     float xf;
     int cc[10];
     struct array as;
   };
   union alis  xu;
   union alis *pu;

   ai=10;
   bi=20;
   ci=30;
   di=40;
   ei=50;
   fi=60;

   pu=&xu;
   for(i=0;i<10;i++) {
     pu->as.aa[i]=(i+1)*10;
     pu->as.bb[i]=(i+1)*10;
   }

   fi=pu->as.aa[0];
   if(ci==30) {
     xu.xi=200;
   }
   ei=pu->as.aa[0];
   ai=xu.xi+bi;
   if(ei==fi)
   {
     printf("ERROR OF B-1-1 AT FIRST : EI = %d\n",ei);
   }
   else
   {
     if(ei!=200)
     {
       printf("ERROR OF B-1-1 AT SECOND : EI = %d\n",ei);
     }
     else
     {
       printf("OK OF B-1-1\n");
     }
   }
   ai=10;
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   if(ci==30) {
     pu->xi=200;
   }
   ei=pu->as.aa[0];
   ai=xu.xi+bi;
   if(ei==fi)
   {
     printf("ERROR OF B-1-2 AT FIRST : EI = %d\n",ei);
   }
   else
   {
     if(ei!=200)
     {
       printf("ERROR OF B-1-2 AT SECOND : EI = %d\n",ei);
     }
     else
     {
       printf("OK OF B-1-2\n");
     }
   }
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   if(ci==30) {
     pu->xf=200.0;
   }
   ei=pu->as.aa[0];
   if(ei==fi)
   {
     ai=pu->xf+bi;
     printf("ERROR OF B-1-3 AT FIRST : EI = %d\n",ei);
   }
   else
   {
     if(ei!=0x42c80000)   
     {
       printf("ERROR OF B-1-3 AT SECOND : EI = %d\n",ei);
     }
     else
     {
       printf("OK OF B-1-3\n");
     }
   }
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   if(ci==30) {
     xu.xf=200.0;
   }
   ei=pu->as.aa[0];
   if(ei==fi)
   {
     ai=xu.xf+bi;
     printf("ERROR OF B-1-4 AT FIRST : EI = %d\n",ei);
   }
   else
   {
     if(ei!=0x42c80000)   
     {
       printf("ERROR OF B-1-4 AT SECOND : EI = %d\n",ei);
     }
     else
     {
       printf("OK OF B-1-4\n");
     }
   }
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   if(ci==30) {
     xu.cc[0]=200;
   }
   ei=pu->as.aa[0];
   ai=xu.xi+bi;
   if(ei==fi)
   {
     printf("ERROR OF B-1-5 AT FIRST : EI = %d\n",ei);
   }
   else
   {
     if(ei!=200)
     {
       printf("ERROR OF B-1-5 AT SECOND : EI = %d\n",ei);
     }
     else
     {
       printf("OK OF B-1-5\n");
     }
   }
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   if(ci==30) {
     pu->cc[0]=200;
   }
   ei=pu->as.aa[0];
   ai=xu.xi+bi;
   if(ei==fi)
   {
     printf("ERROR OF B-1-6 AT FIRST : EI = %d\n",ei);
   }
   else
   {
     if(ei!=200)
     {
       printf("ERROR OF B-1-6 AT SECOND : EI = %d\n",ei);
     }
     else
     {
       printf("OK OF B-1-6\n");
     }
   }
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   if(ci==30) {
     xu.xi=200;
   }
   ei=pu->as.aa[0];
   if(ei!=200) {
     printf("ERROR                 \n");
   }
 }


#if INT64
#undef int
#endif



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


   struct mp2s {
         int p;
         int ii;
   } mp2sss;
int 
mptest22 (void)
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






 volatile const char unsigned fe2a4;
 volatile const signed char fe2a5;
 typedef const volatile unsigned char fe2t_uc;

int 
m3edc017 (void)
{

   volatile const signed char *addrs1,*addrs2;
   volatile const unsigned char *addru1,*addru2;

   auto volatile const signed char a1,b1;
   register volatile const unsigned char a2=0xff;
   static volatile const char signed a3[2]={2,3};
   extern volatile const char unsigned fe2a4;
   extern volatile const signed char fe2a5;
   fe2t_uc a6;


   printf("*** M3EDC017 ** MK3 TEST FOR DCL ** STARTED ***\n");

   addrs1 = &a1;  addrs2 = &b1;
   if (a1!=*addrs1 || b1!=*addrs2)
       printf(" *** M3EDC017 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC017 TEST-01 OK ***\n");

   if (a2!=255)
       printf(" *** M3EDC017 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC017 TEST-02 OK ***\n");

   if (a3[0]!=2 || a3[1]!=3)
       printf(" *** M3EDC017 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC017 TEST-03 OK ***\n");

   if (fe2a4!=0)
       printf(" *** M3EDC017 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC017 TEST-04 OK ***\n");

   if (fe2a5!=0)
       printf(" *** M3EDC017 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC017 TEST-05 OK ***\n");

   addru1 = &a6;
   if (a6!=*addru1)
       printf(" *** M3EDC017 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC017 TEST-06 OK ***\n");

   printf("*** M3EDC017 TEST ENDED ***\n");
}




int be1fnc(
           int    be1i1, int be1i2
          )                                                  ;

int 
scosc06 (void)
{
    int         ans,be1i1,be1i2,*p1,*p2                      ;

    printf("********** SCOSC06 TEST STARTED **********\n")   ;

    be1i1 = 1 ; be1i2 = 2                                    ;
    p1 = &be1i1 ; p2 = &be1i2                                ;

    ans = be1fnc(*p1,*p2)                                    ;

    if ( ans == 1 )
        printf("********** SCOSC06 - 01 OK **********\n");
    else
        printf("********** SCOSC06 - 01 NG **********\n");

    printf("********** SCOSC06 TEST ENDED **********\n") ;

}

int be1fnc( int be1i1,int be1i2 )
{
    return be1i1                                             ;
}



int 
scosh01 (void)
{
  #define iosi 0x00000002
  #define sosi 0x00004000
  #define ioi  0x00008000
  #define soi  0x40000000
#if INT64
  #define ooi  0x8000000000000000
#else
  #define ooi  0x80000000
#endif

  short int      si  = 3                                         ;
  short int      tsi                                             ;

  int            i   = 3                                         ;
  int            ti                                              ;


  printf("********** SCOSH01 TEST STARTED **********\n")     ;


  tsi = si * iosi                                                ;
  if  (tsi == 6)
    printf("********** SCOSH01 -01 OK **********\n")         ;
  else
    printf("********** SCOSH01 -01 NG **********\n")         ;

  ti = si * sosi                                                 ;
  if  (ti == 0x0000c000)
    printf("********** SCOSH01 -02 OK **********\n")         ;
  else
    printf("********** SCOSH01 -02 NG **********\n")         ;

  ti = i * ioi                                                   ;
  if  (ti == 0x00018000)
    printf("********** SCOSH01 -03 OK **********\n")         ;
  else
    printf("********** SCOSH01 -03 NG **********\n")         ;

  ti = i * soi                                                   ;
  if  (ti == 0xc0000000)
    printf("********** SCOSH01 -04 OK **********\n")         ;
  else
    printf("********** SCOSH01 -04 NG **********\n")         ;

  ti = i * ooi                                                   ;
#if INT64
  if  (ti == 0x8000000000000000)
#else
  if  (ti == 0x80000000)
#endif
    printf("********** SCOSH01 -05 OK **********\n")         ;
  else
    printf("********** SCOSH01 -05 NG **********\n")         ;




  tsi = iosi * si                                                ;
  if  (tsi == 6)
    printf("********** SCOSH01 -06 OK **********\n")         ;
  else
    printf("********** SCOSH01 -06 NG **********\n")         ;

  ti = sosi * si                                                 ;
  if  (ti == 0x0000c000)
    printf("********** SCOSH01 -07 OK **********\n")         ;
  else
    printf("********** SCOSH01 -07 NG **********\n")         ;

  ti = ioi * i                                                   ;
  if  (ti == 0x00018000)
    printf("********** SCOSH01 -08 OK **********\n")         ;
  else
    printf("********** SCOSH01 -08 NG **********\n")         ;

  ti = soi * i                                                   ;
  if  (ti == 0xc0000000)
    printf("********** SCOSH01 -09 OK **********\n")         ;
  else
    printf("********** SCOSH01 -09 NG **********\n")         ;

  ti = ooi * i                                                   ;
#if INT64
  if  (ti == 0x8000000000000000)
#else
  if  (ti == 0x80000000)
#endif
    printf("********** SCOSH01 -10 OK **********\n")         ;
  else
    printf("********** SCOSH01 -10 NG **********\n")         ;


  printf("********** SCOSH01 TEST ENDED **********\n")       ;

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


int 
m3edcl02 (void)
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

unsigned int 
fe2fnc1 (void)
{
    return(1);
}

signed int 
fe2fnc2 (void)
{
    return(2);
}

static int 
fe2fnc3 (void)
{
    return(3);
}

int 
fe2fnc4 (void)
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

short int 
fe2fnc6 (int s)
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

long int 
fe2fnc8 (long la, int ia)
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

