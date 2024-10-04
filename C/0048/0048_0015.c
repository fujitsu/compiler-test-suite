

#include<stdio.h>
#include<string.h>
void scodv02 (void);
void m3edc155 (void);
void m3egct10 (void);
void m3mpcm04 (void);
void scohdi3 (void);
void m3edc108 (void);
void m3mpyt02 (void);
void m3edc142 (void);
void m3edc124 (void);
void m3mprd03 (void);
void m3edc132 (void);
void m3edc107 (void);
int main()
{
   m3edc107();  
   m3edc132();  
   m3mprd03();  
   m3edc124();  
   m3edc142();  
   m3mpyt02();  
   m3edc108();  
   scohdi3();   
   m3mpcm04();  
   m3egct10();  
   m3edc155();  
   scodv02();   


}



 extern short int signed fe1a4[2]={7,8};
 int signed short fe1a5;
 typedef int short unsigned fe1tp1;

void
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



 extern short int signed fe2a4[2]={7,8};
 int signed short fe2a5;

void
m3edc108 (void)
{
   signed short int *addr11;
   unsigned short int *addr21;

   printf("*** M3EDC108 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto signed short int a1=0;
     register signed int short a2=0x7fff,b2=-1;
     static short unsigned int a3[2]={0,0};
     extern short int signed fe2a4[2];
     extern int signed short fe2a5;
     typedef int short unsigned type1;
     type1  a6=0;

     addr11 = &a1;
     if (a1!=*addr11)
         printf(" *** M3EDC108 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC108 TEST-01 OK ***\n");

     if (a2!=32767 || b2!=-1)
         printf(" *** M3EDC108 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC108 TEST-02 OK ***\n");

     addr21 = a3;
     if (a3[0]!=*addr21)
         printf(" *** M3EDC108 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC108 TEST-03 OK ***\n");

     if (fe2a4[0]!=7 || fe2a4[1]!=8)
         printf(" *** M3EDC108 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC108 TEST-04 OK ***\n");

     if (fe2a5!=0)
         printf(" *** M3EDC108 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC108 TEST-05 OK ***\n");

     addr21 = &a6;
     if (a6!=*addr21)
         printf(" *** M3EDC108 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC108 TEST-06 OK ***\n");
   }

   printf("*** M3EDC108 TEST ENDED ***\n");
}



void
m3edc124 (void)
{
   const volatile signed long int    *addrs1,*addrs2;
   const volatile unsigned long int  *addru1,*addru2;

   printf("*** M3EDC124 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     const volatile signed long int    a1=0;
     const volatile unsigned int long  a2=0, b2=0;
     volatile const long unsigned int  a3=1, b3=0;
     static volatile const long int signed    a4[2]={2,3};
     static volatile const int signed long    a5[2]={4,5},b5=0;
     static volatile const int long unsigned  a6=0, b6[2]={6,0};

     addrs1 = &a1;
     if (a1!=*addrs1)
         printf(" *** M3EDC124 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC124 TEST-01 OK ***\n");

     addru1 = &a2;  addru2 = &b2;
     if (a2!=*addru1 || b2!=*addru2)
         printf(" *** M3EDC124 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC124 TEST-02 OK ***\n");

     addru1 = &b3;
     if (a3!=1 || b3!=*addru1)
         printf(" *** M3EDC124 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC124 TEST-03 OK ***\n");

     if (a4[0]!=2 || a4[1]!=3)
         printf(" *** M3EDC124 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC124 TEST-04 OK ***\n");

     addrs1 = &b5;
     if (a5[0]!=4 || a5[1]!=5 || b5!=*addrs1)
         printf(" *** M3EDC124 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC124 TEST-05 OK ***\n");

     addru1 = &a6;  addru2 = &b6[1];
     if (a6!=*addru1 || b6[0]!=6 || b6[1]!=*addru2)
         printf(" *** M3EDC124 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC124 TEST-06 OK ***\n");
   }

   printf("*** M3EDC124 TEST ENDED ***\n");
}



void
m3edc132 (void)
{

   volatile const void    *addrv1;
   volatile const char    *addrc1,*addrc2;
   volatile const long    *addrl1;
   volatile const signed  *addrs1,*addrs2,*addrs3;
   volatile const unsigned  *addru1,*addru2;

   printf("*** M3EDC132 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     volatile const void *a1=NULL;
     volatile const char a2=0, b2=0;
     volatile const int a3=1,b3=a3;
     volatile const short a6[2]={-1,0},b6=1;
     volatile const long a7=0;
     volatile const signed a8=0, b8=0, c8=0;
     volatile const unsigned a9[2]={0,0}, b9=1, c9=0;


     addrv1 = a1;
     if (a1 != addrv1)
         printf(" *** M3EDC132 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC132 TEST-01 OK ***\n");

     addrc1 = &a2;  addrc2 = &b2;
     if (a2!=*addrc1 || b2!=*addrc2)
         printf(" *** M3EDC132 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC132 TEST-02 OK ***\n");

     if (a3!=1 || b3!=1)
         printf(" *** M3EDC132 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC132 TEST-03 OK ***\n");
     if (a6[0]!=-1 || a6[1]!=0 || b6!=1)
         printf(" *** M3EDC132 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC132 TEST-04 OK ***\n");

     addrl1 = &a7;
     if (a7!=*addrl1)
         printf(" *** M3EDC132 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC132 TEST-05 OK ***\n");

     addrs1 = &a8;  addrs2 = &b8;  addrs3 = &c8;
     if (a8!=*addrs1 || b8!=*addrs2 || c8!=*addrs3)
         printf(" *** M3EDC132 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC132 TEST-06 OK ***\n");

     addru1 = a9;  addru2 = &c9;
     if (a9[0]!=*addru1 || b9!=1 || c9!=*addru2)
         printf(" *** M3EDC132 TEST-07 ERROR ***\n");
     else
         printf(" *** M3EDC132 TEST-07 OK ***\n");
   }

   printf("*** M3EDC132 TEST ENDED ***\n");
}



void
m3edc142 (void)
{
   const signed short int   *addrs1,*addrs2;
   const unsigned short int *addru1,*addru2;

   printf("*** M3EDC142 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     const signed short int   a1=0;
     volatile unsigned int short a2=0, b2=0;
     const short unsigned int a3=1, b3=0;
     static volatile short int signed a4[2]={-2,3};  
     static const int signed short   a5[2]={4,5}, b5=0; 
     volatile int short unsigned a6=0, b6[2]={0,0};

     addrs1 = &a1;
     if (a1!=*addrs1)
         printf(" *** M3EDC142 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC142 TEST-01 OK ***\n");

     a2 = 0x7fff;  b2 = 0xffff;
     if (a2!=32767 || b2!=65535)
         printf(" *** M3EDC142 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC142 TEST-02 OK ***\n");

     addru1 = &b3;
     if (a3!=1 || b3!=*addru1)
         printf(" *** M3EDC142 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC142 TEST-03 OK ***\n");

     if (a4[0]!=-2 || a4[1]!=3)
         printf(" *** M3EDC142 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC142 TEST-04 OK ***\n");

     addrs1 = &b5;
     if (a5[0]!=4 || a5[1]!=5 || b5!=*addrs1)
         printf(" *** M3EDC142 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC142 TEST-05 OK ***\n");

     a6 = 0x7fff;  b6[1] = a6+1; b6[0] = 6;
     if (a6!=32767 || b6[0]!=6 || b6[1]!=32768)
         printf(" *** M3EDC142 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC142 TEST-06 OK ***\n");
   }

   printf("*** M3EDC142 TEST ENDED ***\n");
}



void
m3edc155 (void)
{
   signed long int    a1=0;
   unsigned int long  a2=0, b2=0;
   long unsigned int  a3=1, b3=0;
   long int signed    a4[2]={0,0};
   int signed long    a5[2]={0,0}, b5=0;
   int long unsigned  a6=0, b6[2]={0,0};

   a4[0] = 2;
   a4[1] = 3;
   a5[0] = 4;
   a5[1] = 5;
   b6[0] = 6;

   printf("*** M3EDC155 ** MK3 TEST FOR DCL ** STARTED ***\n");

   a1 = -1;
   if (a1!=-1)
       printf(" *** M3EDC155 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC155 TEST-01 OK ***\n");

   a2 = a1+1;  b2 = a1-1;
   if (a2!=0 || b2!=-2)
       printf(" *** M3EDC155 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC155 TEST-02 OK ***\n");

   b3 = 0xffffffff;
   if (a3!=1 || b3!=4294967295)
       printf(" *** M3EDC155 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC155 TEST-03 OK ***\n");

   if (a4[0]!=2 || a4[1]!=3)
       printf(" *** M3EDC155 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC155 TEST-04 OK ***\n");

   b5 = a5[0];
   if (a5[0]!=4 || a5[1]!=5 || b5!=4)
       printf(" *** M3EDC155 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC155 TEST-05 OK ***\n");

   a6 = b6[1] = -1;
#if INT64 || LONG64 || __x86_64__ || __aarch64__
   if (a6!=18446744073709551615 || b6[0]!=6 || b6[1]!=18446744073709551615)
#else
   if (a6!=4294967295 || b6[0]!=6 || b6[1]!=4294967295)
#endif
       printf(" *** M3EDC155 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC155 TEST-06 OK ***\n");

   printf("*** M3EDC155 TEST ENDED ***\n");
}



void
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
}


#if INT64
#define int __int32
#endif

 int   m1outi1,m1outi2;
 float m1outf1,m1outf2;
void
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


void
m3mprd03 (void) {
union tag {
    int    mema;
    int    memb;
    char   memc[4];
    } var;
union tag var2;
int a[10];
int x;
var.mema=5;
a[4]=3;
a[var.mema]=3;
x=a[var.mema];
a[1]=x;
if (a[1]==3) printf("M3MPRD03 OK\n");
else
printf("M3MPRD03 NG\n");
}



struct numlist
  {
   int number ;
   struct numlist *benum ;
   struct numlist *afnum ;
  } ;
   int mpdata[10];
   int mpn ;

void putdata (struct numlist *justnum, struct numlist *updatad);
void dataout (struct numlist *justnum);
void
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
}
void putdata (struct numlist *justnum, struct numlist *updatad)
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
}
void dataout (struct numlist *justnum)
{
if (justnum->benum!=0)
    dataout (justnum->benum);
printf ("NUMBER:- %d -\n",justnum->number);
mpdata[mpn] = justnum->number ;
mpn++ ;
if (justnum->afnum!=0)
    dataout (justnum->afnum);
}


struct be1t {
           unsigned int fs:2;
         } be1s1,*be1p;

void
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

}

void
scodv02 (void)
{
  signed         char i1_1                                      ;
  signed         char i1_2  = 2u                                ;
  signed         char i1_3  = 3u                                ;

  unsigned       char ui1_1                                     ;
  unsigned       char ui1_2 = 2u                                ;
  unsigned       char ui1_3 = 3u                                ;

  unsigned short int  ui2_1                                     ;
  unsigned short int  ui2_2 = 2u                                ;
  unsigned short int  ui2_3 = 3u                                ;

  printf("*** SCODV2  STARTED ***\n")                   ;


  i1_1 = i1_2 < i1_3                                ;
  if (i1_1 != 0)        
    printf("*** OK  1 ***\n")                     ;
  else
    printf("*** NG  1 ***\n")                     ;

  i1_1 = i1_2 <= i1_3                                  ;
  if (i1_1 != 0)         
    printf("*** OK  2 ***\n")                     ;
  else
    printf("*** NG  2 ***\n")                     ;

  i1_1 = i1_2 == i1_3                                  ;
  if (i1_1 == 0)         
    printf("*** OK  3 ***\n")                     ;
  else
    printf("*** NG  3 ***\n")                     ;

  i1_1 = i1_2 >= i1_3                                  ;
  if (i1_1 == 0)         
    printf("*** OK  4 ***\n")                     ;
  else
    printf("*** NG  4 ***\n")                     ;

  i1_1 = i1_2 >  i1_3                                  ;
  if (i1_1 == 0)         
    printf("*** OK  5 ***\n")                     ;
  else
    printf("*** NG  5 ***\n")                     ;

  i1_1 = i1_2 != i1_3                                  ;
  if (i1_1 != 0)         
    printf("*** OK  6 ***\n")                     ;
  else
    printf("*** NG  6 ***\n")                     ;


  printf("*** SCODV2  END ***\n")                     ;

}
