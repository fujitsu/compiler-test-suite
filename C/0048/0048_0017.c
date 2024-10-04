

#include<stdio.h>
int test1();
void m3edc181();
void m3edc164();
void m3edc172();
void m3mpcm06();
void m3edc134();
void m3edc144();
void scodv01();
void m3eini01();
void m3mprd05();
void m3edc191();
void m3edc157();
void scocv03();
void m3mpsi02();
void m3edc115();
void m3ermv01();
void m3edc126();
int main()
{
   m3edc126();  
   m3ermv01();  
   m3edc115();  
   m3mpsi02();  
   scocv03();   
   m3edc157();  
   m3edc191();  
   m3mprd05();  
   m3eini01();  
   scodv01();   
   m3edc144();  
   m3edc134();  
   m3mpcm06();  
   m3edc172();  
   m3edc164();  
   m3edc181();  


}



 long  fe1a7;
 signed           fe1a8;
 typedef unsigned fe1tp1;

void m3edc115()
{

   auto void *a1;
   auto char  a2,b2;
   register int a3=1,b3=a3;
   static short a6[2]={-1,0},b6=1;
   extern long  fe1a7;
   extern signed fe1a8;
   fe1tp1  a9;


   printf("*** M3EDC115 ** MK3 TEST FOR DCL ** STARTED ***\n");

   a1 = (void *)100;
   if ((int)a1!=100)
       printf(" *** M3EDC115 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC115 TEST-01 OK ***\n");

   a2 = 0x7f;  b2 = 0;
   if (a2!=127 || b2!=0)
       printf(" *** M3EDC115 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC115 TEST-02 OK ***\n");

   if (a3!=1 || b3!=1)
       printf(" *** M3EDC115 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC115 TEST-03 OK ***\n");
   if (a6[0]!=-1 || a6[1]!=0 || b6!=1)
       printf(" *** M3EDC115 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC115 TEST-04 OK ***\n");

   if (fe1a7)
       printf(" *** M3EDC115 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC115 TEST-05 OK ***\n");

   fe1a8 = -1;
   if (fe1a8!=-1)
       printf(" *** M3EDC115 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC115 TEST-06 OK ***\n");

   a9 = 1;
   if (a9!=1)
       printf(" *** M3EDC115 TEST-07 ERROR ***\n");
   else
       printf(" *** M3EDC115 TEST-07 OK ***\n");

   printf("*** M3EDC115 TEST ENDED ***\n");
}



void m3edc126()
{
   const volatile signed short int   *addrs1,*addrs2;
   const volatile unsigned short int *addru1,*addru2;

   printf("*** M3EDC126 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     const volatile signed short int   a1;
     const volatile unsigned int short a2,b2;
     volatile const short unsigned int a3=1,b3;
     volatile const short int signed   a4[2]={2,3};
     volatile const int signed short   a5[2]={4,-5},b5;
     volatile const int short unsigned a6,b6[2]={6};


     addrs1 = &a1;
     if (a1!=*addrs1)
         printf(" *** M3EDC126 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC126 TEST-01 OK ***\n");

     addru1 = &a2;  addru2 = &b2;
     if (a2!=*addru1 || b2!=*addru2)
         printf(" *** M3EDC126 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC126 TEST-02 OK ***\n");

     addru1 = &b3;
     if (a3!=1 || b3!=*addru1)
         printf(" *** M3EDC126 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC126 TEST-03 OK ***\n");

     if (a4[0]!=2 || a4[1]!=3)
         printf(" *** M3EDC126 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC126 TEST-04 OK ***\n");

     addrs1 = &b5;
     if (a5[0]!=4 || a5[1]!=-5 || b5!=*addrs1)
         printf(" *** M3EDC126 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC126 TEST-05 OK ***\n");

     addru1 = &a6;  addru2 = &b6[1];
     if (a6!=*addru1 || b6[0]!=6 || b6[1]!=*addru2)
         printf(" *** M3EDC126 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC126 TEST-06 OK ***\n");
   }

   printf("*** M3EDC126 TEST ENDED ***\n");
}



void m3edc134()
{

   volatile const   int *addr1,*addr2;

   printf("*** M3EDC134 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     volatile const   int a1=0;
     volatile const   int a2=0;
     volatile const   int a3=0, b3=0;
     static volatile const int   a4[2]={1,2};        
     static volatile const int   a5[2]={3,4},b5=1; 


     addr1 = &a1;
     if (a1!=*addr1)
         printf(" *** M3EDC134 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC134 TEST-01 OK ***\n");

     if (a2)
         printf(" *** M3EDC134 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC134 TEST-02 OK ***\n");

     addr1 = &a3;  addr2 = &b3;
     if (a3!=*addr1 || b3!=*addr2)
         printf(" *** M3EDC134 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC134 TEST-03 OK ***\n");

     if (a4[0]!=1 || a4[1]!=2)
         printf(" *** M3EDC134 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC134 TEST-04 OK ***\n");

     if (a5[0]!=3 || a5[1]!=4 || b5!=1)
         printf(" *** M3EDC134 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC134 TEST-05 OK ***\n");
   }

   printf("*** M3EDC134 TEST ENDED ***\n");
}



void m3edc144()
{

   const signed long     *addrsl1,*addrsl2;
   const unsigned long   *addrul1,*addrul2;
   const signed short    *addrss1,*addrss2;
   const unsigned short  *addrus1,*addrus2;
   const signed int      *addrsi1,*addrsi2;
   const unsigned int    *addrui1,*addrui2;
   const signed char     *addrsc1,*addrsc2,*addrsc3;
   const unsigned char   *addruc1,*addruc2,*addruc3;

   printf("*** M3EDC144 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     volatile signed long    a1=0;
     const long unsigned     a2=0, b2=0;
     volatile signed short   a3=-1, b3=0;
     const unsigned short    a4[2]={2,3};
     volatile int unsigned   a5=0, b5[2]={4,5};
     const signed int        a6[2]={6,7},b6=8;
     volatile char unsigned  a7=0, b7=0, c7=0;
     const signed char       a8=0, b8=1, c8[2]={9,0};


     a1 = 0;
     if (a1!=0)
         printf(" *** M3EDC144 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC144 TEST-01 OK ***\n");

     addrul1 = &a2;  addrul2 = &b2;
     if (a2!=*addrul1 || b2!=*addrul2)
         printf(" *** M3EDC144 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC144 TEST-02 OK ***\n");

     b3 = -1;
     if (a3!=-1 || b3!=-1)
         printf(" *** M3EDC144 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC144 TEST-03 OK ***\n");

     if (a4[0]!=2 || a4[1]!=3)
         printf(" *** M3EDC144 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC144 TEST-04 OK ***\n");

     a5 = 0xffffffff;
     if (a5!=4294967295 || b5[0]!=4 || b5[1]!=5)
         printf(" *** M3EDC144 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC144 TEST-05 OK ***\n");

     if (a6[0]!=6 || a6[1]!=7 || b6!=8)
         printf(" *** M3EDC144 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC144 TEST-06 OK ***\n");

     a7 = b7 = c7 = 0x7f;
     if (a7!=127 || b7!=127 || c7!=127)
         printf(" *** M3EDC144 TEST-07 ERROR ***\n");
     else
         printf(" *** M3EDC144 TEST-07 OK ***\n");

     addrsc1 = &a8;
     if (a8!=*addrsc1 || b8!=1 || c8[0]!=9 || c8[1]!=0)
         printf(" *** M3EDC144 TEST-08 ERROR ***\n");
     else
         printf(" *** M3EDC144 TEST-08 OK ***\n");
   }

   printf("*** M3EDC144 TEST ENDED ***\n");
}



void m3edc157()
{
   signed short int   a1;
   unsigned int short a2,b2;
   short unsigned int a3=1,b3;
   int signed short   b5;
   int short unsigned a6;

   printf("*** M3EDC157 ** MK3 TEST FOR DCL ** STARTED ***\n");

   a1 = 0;
   if (a1!=0)
       printf(" *** M3EDC157 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC157 TEST-01 OK ***\n");

   a2 = 0x7fff;  b2 = 0xffff;
   if (a2!=32767 || b2!=65535)
       printf(" *** M3EDC157 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC157 TEST-02 OK ***\n");

   b3 = a3;
   if (a3!=1 || b3!=1)
       printf(" *** M3EDC157 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC157 TEST-03 OK ***\n");

   b5 = -1;
   if (b5!=-1)
       printf(" *** M3EDC157 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC157 TEST-05 OK ***\n");

   a6 = 0x7fff;
   if (a6!=32767)
       printf(" *** M3EDC157 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC157 TEST-06 OK ***\n");

   printf("*** M3EDC157 TEST ENDED ***\n");
}



void m3edc164()
{

   printf("*** M3EDC164 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     void     *a1=NULL, *addrv=NULL;
     char      a2=0, b2=0;
     int       a3=1,b3=a3;
     short     a6[2]={0,0}, b6=1;
     long      a7=0;
     signed    a8=0, b8=0, c8=0;
     unsigned  a9[2]={0,0}, b9=1, c9=0;

     a6[0] = -1;
     a6[1] = 0;

     addrv = a1;
     if (a1 != addrv)
         printf(" *** M3EDC164 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC164 TEST-01 OK ***\n");

     a2 = 0x7f;  b2 = 0;
     if (a2!=127 || b2!=0)
         printf(" *** M3EDC164 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC164 TEST-02 OK ***\n");

     if (a3!=1 || b3!=1)
         printf(" *** M3EDC164 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC164 TEST-03 OK ***\n");
     if (a6[0]!=-1 || a6[1]!=0 || b6!=1)
         printf(" *** M3EDC164 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC164 TEST-04 OK ***\n");

     a7 = 12345;
     if (a7!=12345)
         printf(" *** M3EDC164 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC164 TEST-05 OK ***\n");

     a8 = 1;  b8 = a8-1;  c8 = b8-1;
     if (a8!=1 || b8!=0 || c8!=-1)
         printf(" *** M3EDC164 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC164 TEST-06 OK ***\n");

     a9[0] = 0xffffffff;  a9[1] = a9[0]+1;  c9 = 1;
#if INT64
     if (a9[0]!=4294967295 || a9[1]!=4294967296 || b9!=1 || c9!=1)
#else
     if (a9[0]!=4294967295 || a9[1]!=0 || b9!=1 || c9!=1)
#endif
         printf(" *** M3EDC164 TEST-07 ERROR ***\n");
     else
         printf(" *** M3EDC164 TEST-07 OK ***\n");
   }

   printf("*** M3EDC164 TEST ENDED ***\n");
}



void m3edc172()
{
   printf("*** M3EDC172 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     volatile const struct astag {
           short  s;
           long   l;
     } st1;
     volatile const struct astag *st1p;
     volatile const union autag1 {
           int    i;
           long   l;
     } un1,*un1p;
     volatile const enum tagen1 {
           ena,  enb,  enc
     } en1,*en1p;

     static volatile const struct sttag2 {
           char  c;
           int   i;
     } st2 = { 0x7f, 0x7fffffff };
     volatile const enum entag2 {
           enx=-1,  eny,  enz=100
     } en2 = enz;
     static volatile const union autag2 {
           signed  s;
           unsigned u;
     } un2[2] = { { -1 }, { 0 } };


     st1p = &st1;
     if (st1.s!=st1p->s || st1.l!=st1p->l)
         printf(" *** M3EDC172 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC172 TEST-01 OK ***\n");

     un1p = &un1;
     if (un1.i!=un1p->i || un1.l!=un1p->l)
         printf(" *** M3EDC172 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC172 TEST-02 OK ***\n");

     en1p = &en1;
     if (en1!=*en1p || ena!=0 || enb!=1 || enc!=2)
         printf(" *** M3EDC172 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC172 TEST-03 OK ***\n");

     if (st2.c!=127 || st2.i!=2147483647)
         printf(" *** M3EDC172 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC172 TEST-04 OK ***\n");

     if (en2!=100 || enx!=-1 || eny!=0 || enz!=100)
         printf(" *** M3EDC172 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC172 TEST-05 OK ***\n");

#if INT64
     if (un2[0].s!=-1 || un2[0].u!=18446744073709551615 ||
         un2[1].s!=0 || un2[1].u!=0)
#else
     if (un2[0].s!=-1 || un2[0].u!=4294967295 ||
         un2[1].s!=0 || un2[1].u!=0)
#endif
         printf(" *** M3EDC172 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC172 TEST-06 OK ***\n");
   }

   printf("*** M3EDC172 TEST ENDED ***\n");
}



 typedef int inttype;

 extern inttype    feaa5;
 inttype           feaa6;
 typedef inttype   feaintp2;

void m3edc181()
{
   auto inttype a1=0;
   auto inttype a2=0, b2=0;
   register inttype a3=0;
   static inttype   a4[2]={-1,0x7fffffff};

   extern inttype  feaa5;
   extern inttype feaa6;
   feaintp2  a7=0;

   printf("*** M3EDC181 ** MK3 TEST FOR DCL ** STARTED ***\n");

   a1 = 0;
   if (a1!=0)
       printf(" *** M3EDC181 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC181 TEST-01 OK ***\n");

   a2 = b2 = -1;
   if (a2!=-1 || b2!=-1)
       printf(" *** M3EDC181 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC181 TEST-02 OK ***\n");

   if (a3!=0)
       printf(" *** M3EDC181 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC181 TEST-03 OK ***\n");

   if (a4[0]!=-1 || a4[1]!=2147483647)
       printf(" *** M3EDC181 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC181 TEST-04 OK ***\n");

   if (feaa5)
       printf(" *** M3EDC181 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC181 TEST-05 OK ***\n");

   if (feaa6)
       printf(" *** M3EDC181 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC181 TEST-06 OK ***\n");

   a7 = 100;
   if (a7!=100)
       printf(" *** M3EDC181 TEST-07 ERROR ***\n");
   else
       printf(" *** M3EDC181 TEST-07 OK ***\n");

   printf("*** M3EDC181 TEST ENDED ***\n");
}
inttype feaa5 = 0;



 struct febtag { int i; char c; } ;

 void  m3edc191()
 {

   int i = -1;
   static struct febtag st = { -1, 127 };

   printf("*** M3EDC191 ** MK3 TEST FOR DCL ** STARTED ***\n");

   if (test1()!=0)
       printf(" *** M3EDC191 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC191 TEST-01 OK ***\n");
printf("M3EDC191 - 02 IS OMITTED BECAUST OF RESTRICTION.\n");
   printf("*** M3EDC191 TEST ENDED ***\n");
}

 int  test1() {
  return 0;
 }

 int  test2(i,st)
 int i;
 struct febtag st;
 {
   if (i!=-1 || st.i!=-1 || st.c!=127)
       return 1;
   else
       return 0;
 }



    static int arr[] = { 0,1,2,3,4 };
    static int *ppp = &arr[0];
 void m3eini01()
{
    printf("*** M3EINI01 STARTED ***\n");

    if(*(ppp+1) == 1)
        printf("OK\n");
    else
        printf("NG\n");

    printf("*** M3EINI01 ENDED ***\n");
}



 void m3ermv01()
{
  printf("********** M3ERMV01 TEST START **********\n");
  {
    int a;

    a = 1 + 2;
    if (a == 3)
        printf("***** M3ERMV01 - 01 ***** O K *****\n");
      else
        printf("***** M3ERMV01 - 01 ***** N G *****\n");
  }
  {
    int a;

    a = 3 - 2;
    if (a == 1)
        printf("***** M3ERMV01 - 02 ***** O K *****\n");
      else
        printf("***** M3ERMV01 - 02 ***** N G *****\n");
  }
  {
    int a = 2,b;

    b = 3 + a;
    if (b == 5)
        printf("***** M3ERMV01 - 03 ***** O K *****\n");
      else
        printf("***** M3ERMV01 - 03 ***** N G *****\n");
  }
  {
    int a = 2,b;

    b = 3 - 2;
    if (b == 1)
        printf("***** M3ERMV01 - 04 ***** O K *****\n");
      else
        printf("***** M3ERMV01 - 04 ***** N G *****\n");
  }
  {
    int a = 2,b;

    b = 3 * a;
    if (b == 6)
        printf("***** M3ERMV01 - 05 ***** O K *****\n");
      else
        printf("***** M3ERMV01 - 05 ***** N G *****\n");
  }
  {
    int a = 2,b;

    b = 3 & a;
    if (b == 2)
        printf("***** M3ERMV01 - 06 ***** O K *****\n");
      else
        printf("***** M3ERMV01 - 06 ***** N G *****\n");
  }
  {
    int a = 2,b;

    b = 3 ^ a;
    if (b == 1)
        printf("***** M3ERMV01 - 07 ***** O K *****\n");
      else
        printf("***** M3ERMV01 - 07 ***** N G *****\n");
  }
  {
    int a = 2,b;

    b = 3 | a;
    if (b == 3)
        printf("***** M3ERMV01 - 08 ***** O K *****\n");
      else
        printf("***** M3ERMV01 - 08 ***** N G *****\n");
  }
  printf("********** M3ERMV01 TEST  END  **********\n");
}


#if INT64
#define int __int32
#endif

 int   mouti1,mouti2;
 float moutf1,moutf2;
 void  m3mpcm06()
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
   union alis  xu,yu;
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
   xu.xi=200;
   if(ci==30) {
     af=10.0;
   }
   ei=pu->as.aa[0];
   ai=xu.xi+bi;
   if(ei==fi)
   {
     printf("error of b-1-1 at first : ei = %d\n",ei);
   }
   else
   {
     if(ei!=200)
     {
       printf("error of b-1-1 at second : ei = %d\n",ei);
     }
     else
     {
       printf("OK OF B-1-1\n");
     }
   }
   ai=10;
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   pu->xi=200;
   if(ci==30) {
     af=10.0;
   }
   ei=pu->as.aa[0];
   ai=xu.xi+bi;
   if(ei==fi)
   {
     printf("error of b-1-2 at first : ei = %d\n",ei);
   }
   else
   {
     if(ei!=200)
     {
       printf("error of b-1-2 at second : ei = %d\n",ei);
     }
     else
     {
       printf("ok of b-1-2\n");
     }
   }
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   pu->xf=200.0;
   if(ci==30) {
     af=10.0;
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
       printf("error of b-1-3 at second : ei = %d\n",ei);
     }
     else
     {
       printf("OK OF B-1-3\n");
     }
   }
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   xu.xf=200.0;
   if(ci==30) {
     af=10.0;
   }
   ei=pu->as.aa[0];
   if(ei==fi)
   {
     ai=xu.xf+bi;
     printf("error of b-1-4 at first : ei = %d\n",ei);
   }
   else
   {
     if(ei!=0x42c80000)   
     {
       printf("error of b-1-4 at second : ei = %d\n",ei);
     }
     else
     {
       printf("OK OF B-1-4\n");
     }
   }
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   xu.cc[0]=200;
   if(ci==30) {
     af=10.0;
   }
   ei=pu->as.aa[0];
   ai=xu.xi+bi;
   if(ei==fi)
   {
     printf("error of b-1-5 at first : ei = %d\n",ei);
   }
   else
   {
     if(ei!=200)
     {
       printf("error of b-1-5 at second : ei = %d\n",ei);
     }
     else
     {
       printf("OK OF B-1-5\n");
     }
   }
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   pu->cc[0]=200;
   if(ci==30) {
     af=10.0;
   }
   ei=pu->as.aa[0];
   ai=xu.xi+bi;
   if(ei==fi)
   {
     printf("error of b-1-6 at first : ei = %d\n",ei);
   }
   else
   {
     if(ei!=200)
     {
       printf("error of b-1-6 at second : ei = %d\n",ei);
     }
     else
     {
       printf("OK OF B-1-6\n");
     }
   }
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   xu.xi=200;
   if(ci==30) {
     af=10.0;
   }
   ei=pu->as.aa[0];
   if(ei!=200) {
     printf("error                 \n");
   }
 }

#if INT64
#undef int
#endif


void m3mprd05() {
union beatag {
    int    mema;
    int    memb;
    char   memc[4];
    } var;
union beatag var2;
int a[10];
int x;
var.mema=5;
a[4]=5;
a[var.mema]=3;
var.memb=4;
x=a[var.mema];
a[1]=x;
if (a[1]==5) printf("M3MPRD03 OK\n");
else
printf("M3MPRD03 NG\n");
}



void m3mpsi02() {
struct tag {
    int    mema;
    int    memb;
    char   memc[4];
    } var;
struct tag var2,*pint;
int a[10];
int x;
var.mema=5;
a[4]=5;
a[var.mema]=3;
pint=&var;
var.memb=4;
x=pint->memb;
a[1]=x;
pint->memc[1]=x;
if (pint->memc[1]==4) printf("M3MPRD03 OK\n");
else
printf("m3mprd03 ng\n");
}

void scocv03()
{
  int f(char c)                                                 ;

  printf("*** SCOCV03  START ***\n")                  ;

  if (f('a'))
    printf("*** OK  1 ***\n")                     ;
  else
    printf("*** NG  1 ***\n")                     ;

  printf("*** SCOCV03  END ***\n")                    ;

}
int f( char c )
{
  return (c =='a') ? 1 : 0                                      ;
}

void scodv01()
{
  volatile signed   char  be1i1_1,be1i1_2,be1i1_3                ;
  volatile unsigned char  be1ui1_1,be1ui1_2,be1ui1_3             ;
  volatile unsigned short int be1ui2_1,be1ui2_2,be1ui2_3         ;

  printf("*** SCODV01  STRT ***\n")                    ;


  be1i1_2 = 7                                                    ;
  be1i1_3 = 5                                                    ;

  be1i1_1 = be1i1_2 * be1i1_3                   ;
  if (be1i1_1 == 35)
    printf("*** OK  1 ***\n")                      ;
  else
    printf("*** NG  1 ***\n")                      ;

  be1i1_1 = be1i1_2 - be1i1_3                    ;
  if (be1i1_1 == 2)
    printf("*** OK  2 ***\n")                      ;
  else
    printf("*** NG  2 ***\n")                      ;

  be1i1_1 = be1i1_2 / be1i1_3                    ;
  if (be1i1_1 == 1)
    printf("*** OK  3 ***\n")                      ;
  else
    printf("*** NG  3 ***\n")                      ;

  be1i1_1 = be1i1_2 % be1i1_3                   ;
  if (be1i1_1 == 2)
    printf("*** OK  4 ***\n")                      ;
  else
    printf("*** NG  4 ***\n")                      ;



  be1ui1_2 = 7                                                ;
  be1ui1_3 = 5                                                   ;

  be1ui1_1 = be1ui1_2 * be1ui1_3                 ;
  if (be1ui1_1 == 35)
    printf("*** OK  5 ***\n")                      ;
  else
    printf("*** NG  5 ***\n")                      ;

  be1ui1_1 = be1ui1_2 - be1ui1_3                ;
  if (be1ui1_1 == 2)
    printf("*** OK  6 ***\n")                      ;
  else
    printf("*** NG  6 ***\n")                      ;

  be1ui1_1 = be1ui1_2 / be1ui1_3                 ;
  if (be1ui1_1 == 1)
    printf("*** OK  7 ***\n")                      ;
  else
    printf("*** NG  7 ***\n")                      ;

  be1ui1_1 = be1ui1_2 % be1ui1_3                 ;
  if (be1ui1_1 == 2)
    printf("*** OK  8 ***\n")                      ;
  else
    printf("*** NG  8 ***\n")                      ;



  be1ui2_2 = 7                                                   ;
  be1ui2_3 = 5                                                   ;

  be1ui2_1 = be1ui2_2 * be1ui2_3                 ;
  if (be1ui2_1 == 35)
    printf("*** OK  9 ***\n")                      ;
  else
    printf("*** NG  9 ***\n")                      ;

  be1ui2_1 = be1ui2_2 - be1ui2_3                 ;
  if (be1ui2_1 == 2)
    printf("*** OK 10 ***\n")                      ;
  else
    printf("*** NG 10 ***\n")                      ;

  be1ui2_1 = be1ui2_2 / be1ui2_3                 ;
  if (be1ui2_1 == 1)
    printf("*** OK 11 ***\n")                      ;
  else
    printf("*** NG 11 ***\n")                      ;

  be1ui2_1 = be1ui2_2 % be1ui2_3                 ;
  if (be1ui2_1 == 2)
    printf("*** OK 12 ***\n")                      ;
  else
    printf("*** NG 12 ***\n")                      ;


  printf("*** SCODV01  END ***\n")                     ;

}
