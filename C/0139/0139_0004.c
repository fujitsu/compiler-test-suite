#include <stdlib.h>
#include <math.h>
  
 
 
 
 
 
 



#include<stdio.h>
int m3edc015 (void);
int m3edc014 (void);
int m3edc013 (void);
int scort01 (void);
int m3edc012 (void);
int m3edc011 (void);
int m3edc008 (void);
int mptest29 (void);
int m3edc007 (void);
int m3edc006 (void);
int m3edc005 (void);
int m3edcl09 (void);
int m3edcl08 (void);
int main()
{
   m3edcl08();   
   m3edcl09();   
   m3edc005();   
   m3edc006();   
   m3edc007();   
   mptest29();   
   m3edc008();   
   m3edc011();   
   m3edc012();   
   scort01();    
   m3edc013();   
   m3edc014();   
   m3edc015();   

exit (0);
}
 
 
 

int fe1f01(int);

int fe1f02(int a) { return a; }

int 
m3edcl08 (void)
{
  printf("***** M3EDCL08 **  ** START *****\n");
  {
    int a = 10;
    int b;
    int fe1f01(int);
    b = fe1f01(a);

    if (b == 1)
        printf("***** M3EDCL08 - 01 ***** OK *****\n");
      else
        printf("***** M3EDCL08 - 01 ***** NG *****\n");
  }
  {
    int a = 10;
    int b;
    int fe1f02(int);
    b = fe1f02(a);

    if (b == 10)
        printf("***** M3EDCL08 - 02 ***** OK *****\n");
      else
        printf("***** M3EDCL08 - 02 ***** NG *****\n");
  }
  printf("***** M3EDCL08 **  **  END  *****\n");
}

int fe1f01(int a) { return(a / 10); }



 
 
 

volatile int fe2f03();

const int fe2f04();

int 
m3edcl09 (void)
{
  printf("***** M3EDCL09 **  ** START *****\n");
  {
    volatile int fe2f01();
    int a;
    a = fe2f01();

    if (a == 1)
        printf("***** M3EDCL09 - 01 ***** OK *****\n");
      else
        printf("***** M3EDCL09 - 01 ***** NG *****\n");
  }
  {
    const int fe2f02();
    int a;
    a = fe2f02();

    if (a == 1)
        printf("***** M3EDCL09 - 02 ***** OK *****\n");
      else
        printf("***** M3EDCL09 - 02 ***** NG *****\n");
  }
  {
    int a;
    a = fe2f03();

    if (a == 1)
        printf("***** M3EDCL09 - 03 ***** OK *****\n");
      else
        printf("***** M3EDCL09 - 03 ***** NG *****\n");
  }
  {
    int a;
    a = fe2f04();

    if (a == 1)
        printf("***** M3EDCL09 - 04 ***** OK *****\n");
      else
        printf("***** M3EDCL09 - 04 ***** NG *****\n");
  }
  printf("***** M3EDCL09 **  **  END  *****\n");
}

volatile int 
fe2f01 (void) { return 1; }

const int 
fe2f02 (void) { return 1; }

volatile int 
fe2f03 (void) { return 1; }

const int 
fe2f04 (void) { return 1; }



 
 
 


 extern volatile const long int signed fe3a4[2]={7,8};
 volatile const int signed long fe3a5;
 typedef volatile const int long unsigned fe3typ1;

int 
m3edc005 (void)
{
   const volatile signed long int *addr11;
   const volatile unsigned long int *addr21;

   auto volatile const signed long int a1;
   register volatile const signed int long a2=0,b2=-1;
   static volatile const long unsigned int a3[2];
   extern volatile const long int signed fe3a4[2];
   extern volatile const int signed long fe3a5;
   fe3typ1 a6;

   printf("*** M3EDC005 **** STARTED ***\n");

   addr11 = &a1;
   if (a1!=*addr11)
       printf(" *** M3EDC005 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC005 TEST-01 OK ***\n");

   if (a2 || b2!=-1)
       printf(" *** M3EDC005 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC005 TEST-02 OK ***\n");

   addr21 = a3;
   if (a3[0]!=*addr21)
       printf(" *** M3EDC005 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC005 TEST-03 OK ***\n");

   if (fe3a4[0]!=7 || fe3a4[1]!=8)
       printf(" *** M3EDC005 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC005 TEST-04 OK ***\n");

   if (fe3a5!=0)
       printf(" *** M3EDC005 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC005 TEST-05 OK ***\n");

   addr21 = &a6;
   if (a6!=*addr21)
       printf(" *** M3EDC005 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC005 TEST-06 OK ***\n");

   printf("*** M3EDC005 **** ENDED ***\n");
}

 
 
 


 extern volatile const long int signed fe4a4[2]={7,8};
 volatile const int signed long fe4a5;

int 
m3edc006 (void)
{
   const volatile signed long int *addr11;
   const volatile unsigned long int *addr21;

   printf("*** M3EDC006 **  ** STARTED ***\n");

   {
     auto volatile const signed long int a1;
     register volatile const signed int long a2=0x7fffffff,b2=-1;
     static volatile const long unsigned int a3[2];
     extern volatile const long int signed fe4a4[2];
     extern volatile const int signed long fe4a5;
     typedef volatile const int long unsigned type1;
     type1  a6;

     addr11 = &a1;
     if (a1!=*addr11)
         printf(" *** M3EDC006 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC006 TEST-01 OK ***\n");

     if (a2!=2147483647 || b2!=-1)
         printf(" *** M3EDC006 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC006 TEST-02 OK ***\n");

     addr21 = a3;
     if (a3[0]!=*addr21)
         printf(" *** M3EDC006 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC006 TEST-03 OK ***\n");

     if (fe4a4[0]!=7 || fe4a4[1]!=8)
         printf(" *** M3EDC006 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC006 TEST-04 OK ***\n");

     if (fe4a5!=0)
         printf(" *** M3EDC006 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC006 TEST-05 OK ***\n");

     addr21 = &a6;
     if (a6!=*addr21)
         printf(" *** M3EDC006 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC006 TEST-06 OK ***\n");
   }

   printf("*** M3EDC006 **   ** ENDED ***\n");
}

 
 
 



 extern volatile const short int signed fe5a4[2]={7,8};
 volatile const int signed short fe5a5;
 typedef volatile const int short unsigned type1;

int 
m3edc007 (void)
{
   const volatile signed short int *addr11;
   const volatile unsigned short int *addr21;

   auto volatile const signed short int a1;
   register volatile const signed int short a2=0,b2=-1;
   static volatile const short unsigned int a3[2];
   extern volatile const short int signed fe5a4[2];
   extern volatile const int signed short fe5a5;
   type1  a6;

   printf("*** M3EDC007 **  ** STARTED ***\n");

   addr11 = &a1;
   if (a1!=*addr11)
       printf(" *** M3EDC007 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC007 TEST-01 OK ***\n");

   if (a2!=0 || b2!=-1)
       printf(" *** M3EDC007 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC007 TEST-02 OK ***\n");

   addr21 = a3;
   if (a3[0]!=*addr21)
       printf(" *** M3EDC007 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC007 TEST-03 OK ***\n");

   if (fe5a4[0]!=7 || fe5a4[1]!=8)
       printf(" *** M3EDC007 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC007 TEST-04 OK ***\n");

   if (fe5a5!=0)
       printf(" *** M3EDC007 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC007 TEST-05 OK ***\n");

   addr21 = &a6;
   if (a6!=*addr21)
       printf(" *** M3EDC007 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC007 TEST-06 OK ***\n");

   printf("*** M3EDC007 **  ** ENDED ***\n");
}

 
 
 


 extern volatile const short int signed fe6a4[2]={7,8};
 volatile const int signed short fe6a5;

int 
m3edc008 (void)
{
   const volatile signed short int *addr11;
   const volatile unsigned short int *addr21;

   printf("*** M3EDC008 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto volatile const signed short int a1;
     register volatile const signed int short a2=0,b2=-1;
     static volatile const short unsigned int a3[2];
     extern volatile const short int signed fe6a4[2];
     extern volatile const int signed short fe6a5;
     typedef volatile const int short unsigned type1;
     type1  a6;

     addr11 = &a1;
     if (a1!=*addr11)
         printf(" *** M3EDC008 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC008 TEST-01 OK ***\n");

     if (a2!=0 || b2!=-1)
         printf(" *** M3EDC008 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC008 TEST-02 OK ***\n");

     addr21 = a3;
     if (a3[0]!=*addr21)
         printf(" *** M3EDC008 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC008 TEST-03 OK ***\n");

     if (fe6a4[0]!=7 || fe6a4[1]!=8)
         printf(" *** M3EDC008 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC008 TEST-04 OK ***\n");

     if (fe6a5!=0)
         printf(" *** M3EDC008 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC008 TEST-05 OK ***\n");

     addr21 = &a6;
     if (a6!=*addr21)
         printf(" *** M3EDC008 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC008 TEST-06 OK ***\n");
   }

   printf("*** M3EDC008 TEST ENDED ***\n");
}

 
 
 


 volatile const long unsigned fe7a4;
 volatile const signed long fe7a5;
 typedef volatile const unsigned long fe7t_ul;

int 
m3edc011 (void)
{

   volatile const signed long *addrs1,*addrs2;
   volatile const unsigned long *addru1,*addru2;

   auto volatile const signed long a1;
   register volatile const unsigned long a2=0,b2=1;
   static volatile const long signed a3[2]={2,3};
   extern volatile const long unsigned fe7a4;
   extern volatile const signed long  fe7a5;
   fe7t_ul a6;


   printf("*** M3EDC011 ** MK3 TEST FOR DCL ** STARTED ***\n");

   addrs1 = &a1;
   if (a1!=*addrs1)
       printf(" *** M3EDC011 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC011 TEST-01 OK ***\n");

   if (a2!=0 || b2!=1)
       printf(" *** M3EDC011 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC011 TEST-02 OK ***\n");

   if (a3[0]!=2 || a3[1]!=3)
       printf(" *** M3EDC011 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC011 TEST-03 OK ***\n");

   if (fe7a4!=0)
       printf(" *** M3EDC011 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC011 TEST-04 OK ***\n");

   if (fe7a5!=0)
       printf(" *** M3EDC011 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC011 TEST-05 OK ***\n");

   addru1 = &a6;
   if (a6!=*addru1)
       printf(" *** M3EDC011 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC011 TEST-06 OK ***\n");

   printf("*** M3EDC011 TEST ENDED ***\n");
}

 
 
 



 volatile const long unsigned fe8a4;
 volatile const signed long fe8a5;

int 
m3edc012 (void)
{

   volatile const signed long *addrs1,*addrs2;
   volatile const unsigned long *addru1,*addru2;

   printf("*** M3EDC012 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto volatile const signed long a1;
     register volatile const unsigned long a2=0xffffffff,b2=1;
     static volatile const long signed a3[2]={2,3};
     extern volatile const long unsigned fe8a4;
     extern volatile const signed long  fe8a5;
     typedef const volatile unsigned long t_ul;
     t_ul  a6;


     addrs1 = &a1;
     if (a1!=*addrs1)
         printf(" *** M3EDC012 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC012 TEST-01 OK ***\n");

     if (a2!=4294967295 || b2!=1)
         printf(" *** M3EDC012 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC012 TEST-02 OK ***\n");

     if (a3[0]!=2 || a3[1]!=3)
         printf(" *** M3EDC012 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC012 TEST-03 OK ***\n");

     if (fe8a4!=0)
         printf(" *** M3EDC012 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC012 TEST-04 OK ***\n");

     if (fe8a5!=0)
         printf(" *** M3EDC012 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC012 TEST-05 OK ***\n");

     addru1 = &a6;
     if (a6!=*addru1)
         printf(" *** M3EDC012 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC012 TEST-06 OK ***\n");
   }

   printf("*** M3EDC012 TEST ENDED ***\n");
}

 
 
 


 volatile const long unsigned fe8a4;
 volatile const signed long fe8a5;



 volatile const short unsigned fe9a4;
 volatile const signed short fe9a5;
 typedef const volatile unsigned short fe9t_us;

int 
m3edc013 (void)
{

   volatile const signed short *addrs1,*addrs2;
   volatile const unsigned short *addru1,*addru2;

   auto volatile const signed short a1;
   register volatile const unsigned short a2=0,b2=1;
   static volatile const short signed a3[2]={2,3};
   extern volatile const short unsigned fe9a4;
   extern volatile const signed short fe9a5;
   fe9t_us a6;


   printf("*** M3EDC013 ** MK3 TEST FOR DCL ** STARTED ***\n");

   addrs1 = &a1;
   if (a1!=*addrs1)
       printf(" *** M3EDC013 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC013 TEST-01 OK ***\n");

   if (a2 || b2!=1)
       printf(" *** M3EDC013 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC013 TEST-02 OK ***\n");

   if (a3[0]!=2 || a3[1]!=3)
       printf(" *** M3EDC013 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC013 TEST-03 OK ***\n");

   if (fe9a4!=0)
       printf(" *** M3EDC013 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC013 TEST-04 OK ***\n");

   if (fe9a5!=0)
       printf(" *** M3EDC013 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC013 TEST-05 OK ***\n");

   addru1 = &a6;
   if (a6!=*addru1)
       printf(" *** M3EDC013 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC013 TEST-06 OK ***\n");

   printf("*** M3EDC013 TEST ENDED ***\n");
}

 
 
 



 volatile const short unsigned feaa4;
 volatile const signed short feaa5;

int 
m3edc014 (void)
{

   volatile const signed short *addrs1,*addrs2;
   volatile const unsigned short *addru1,*addru2;

   printf("*** M3EDC014 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto volatile const signed short a1;
     register volatile const unsigned short a2=0xffff,b2=0;
     static volatile const short signed a3[2]={2,3};
     extern volatile const short unsigned feaa4;
     extern volatile const signed short feaa5;
     typedef const volatile unsigned short t_us;
     t_us  a6;


     addrs1 = &a1;
     if (a1!=*addrs1)
         printf(" *** M3EDC014 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC014 TEST-01 OK ***\n");

     if (a2!=65535 || b2!=0)
         printf(" *** M3EDC014 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC014 TEST-02 OK ***\n");

     if (a3[0]!=2 || a3[1]!=3)
         printf(" *** M3EDC014 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC014 TEST-03 OK ***\n");

     if (feaa4!=0)
         printf(" *** M3EDC014 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC014 TEST-04 OK ***\n");

     if (feaa5!=0)
         printf(" *** M3EDC014 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC014 TEST-05 OK ***\n");

     addru1 = &a6;
     if (a6!=*addru1)
         printf(" *** M3EDC014 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC014 TEST-06 OK ***\n");
   }

   printf("*** M3EDC014 TEST ENDED ***\n");
}

 
 
 



 volatile const int unsigned feba4;
 volatile const signed int feba5;
 typedef const volatile unsigned int febt_ui;

int 
m3edc015 (void)
{

   volatile const signed int *addrs1,*addrs2;
   volatile const unsigned int *addru1,*addru2;

   auto volatile const signed int a1;
   register volatile const unsigned int a2=0xffffffff,b2=0;
   static volatile const int signed a3[2]={2,3};
   extern volatile const int unsigned feba4;
   extern volatile const signed int feba5;
   febt_ui a6;


   printf("*** M3EDC015 ** MK3 TEST FOR DCL ** STARTED ***\n");

   addrs1 = &a1;
   if (a1!=*addrs1)
       printf(" *** M3EDC015 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC015 TEST-01 OK ***\n");

   if (a2!=4294967295 || b2)
       printf(" *** M3EDC015 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC015 TEST-02 OK ***\n");

   if (a3[0]!=2 || a3[1]!=3)
       printf(" *** M3EDC015 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC015 TEST-03 OK ***\n");

   if (feba4!=0)
       printf(" *** M3EDC015 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC015 TEST-04 OK ***\n");

   if (feba5!=0)
       printf(" *** M3EDC015 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC015 TEST-05 OK ***\n");

   addru1 = &a6;
   if (a6!=*addru1)
       printf(" *** M3EDC015 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC015 TEST-06 OK ***\n");

   printf("*** M3EDC015 TEST ENDED ***\n");
}

 
 
 


 int id01;
 char cd01;
 short int sd01;
 unsigned int uid01;
 unsigned char ucd01;
 unsigned short int usd01;
 float fd01;
 double dd01;
 int 
mptest29 (void)
 {
    void mfnc01(),mfnc02(),mfnc03(),mfnc04(),mfnc05(),mfnc06();
    void mfnc07(),mfnc08();
    mfnc01();
    mfnc02();
    mfnc03();
    mfnc04();
    mfnc05();
    mfnc06();
    mfnc07();
    mfnc08();
 }
 void 
mfnc01 (void)
 {
      int  ia01,ia02,ia03,ia04,ia05;
      void mfnc011(int ia01,int ia02,int ia03,int ia04,int ia05);
      ia01=1;
      ia02=2;
      ia03=3;
      ia04=4;
      ia05=5;
      mfnc011(ia01,ia02,ia03,ia04,ia05);
      if(id01==1)
        printf("******* MFNC01 IA01            OK ****\n");
      else
        printf("******* MFNC01 IA01            NG ****\n");
      if(ia02==2)
        printf("******* MFNC01 IA02 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC01 IA05 REAL ARGUM NG ****\n");
      if(ia03==3)
        printf("******* MFNC01 IA03 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC01 IA03 REAL ARGUM NG ****\n");
      if(ia05==5)
        printf("******* MFNC01 IA05 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC01 IA05 REAL ARGUM NG ****\n");
 }
 void mfnc011(int ib01,int ib02,int ib03,int ib04,int ib05)
 {
      void mfnc0111(int ib04);
      int ic01,ic02;
      ic01=ib03;
      ib05=10;
      ib02=ib01+ic01;
      mfnc0111(ib04);
      ib03=ic01+2;
      ic02=ib05;
      id01=ib01;
      if(ic02==10)
        printf("******* MFNC011 IB05 CHECK     OK ****\n");
      else
        printf("******* MFNC011 IB05 CHECK     NG ****\n");
 }
 void mfnc0111(int ie04)
 {
      ie04=ie04+10;
      return;
 }
 void 
mfnc02 (void)
 {
      char ca01,ca02,ca03,ca04,ca05;
      void mfnc021(char ca01,char ca02,char ca03,char ca04,char ca05);
      ca01='a';
      ca02='b';
      ca03='c';
      ca04='d';
      ca05='e';
      mfnc021(ca01,ca02,ca03,ca04,ca05);
      if(cd01=='a')
        printf("******* MFNC02 CA01            OK ****\n");
      else
        printf("******* MFNC02 CA01            NG ****\n");
      if(ca02=='b')
        printf("******* MFNC02 CA02 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC02 CA02 REAL ARGUM NG ****\n");
      if(ca03=='c')
        printf("******* MFNC02 CA03 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC02 CA03 REAL ARGUM NG ****\n");
      if(ca05=='e')
        printf("******* MFNC02 CA05 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC02 CA05 REAL ARGUM NG ****\n");
 }
 void mfnc021(char cb01,char cb02,char cb03,char cb04,char cb05)
 {
      void mfnc0211(char cb04);
      char cc01;
      cb05=cb03;
      cb02=cb01;
      mfnc0211(cb04);
      cb03='g';
      cc01=cb05;
      cd01=cb01;
      if(cc01=='c')
        printf("******* MFNC021 CB05 CHECK     OK ****\n");
      else
        printf("******* MFNC021 CB05 CHECK     NG ****\n");
 }
 void mfnc0211(char ce04)
 {
      ce04='h';
      return;
 }
 void 
mfnc03 (void)
 {
      short int  sa01,sa02,sa03,sa04,sa05;
      void mfnc031(short int sa01,short int sa02,short int sa03,
                   short int sa04,short int sa05);
      sa01=1;
      sa02=2;
      sa03=3;
      sa04=4;
      sa05=5;
      mfnc031(sa01,sa02,sa03,sa04,sa05);
      if(sd01==1)
        printf("******* MFNC03 SA01            OK ****\n");
      else
        printf("******* MFNC03 SA01            NG ****\n");
      if(sa02==2)
        printf("******* MFNC03 SA02 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC03 SA05 REAL ARGUM NG ****\n");
      if(sa03==3)
        printf("******* MFNC01 SA03 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC01 SA03 REAL ARGUM NG ****\n");
      if(sa05==5)
        printf("******* MFNC01 SA05 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC01 SA05 REAL ARGUM NG ****\n");
 }
 void mfnc031(short int sb01,short int sb02,short int sb03,
              short int sb04,short int sb05)
 {
      void mfnc0311(short int sb04);
      short int sc01,sc02;
      sc01=sb03;
      sb05=10;
      sb02=sb01+sc01;
      mfnc0311(sb04);
      sb03=sc01+2;
      sc02=sb05;
      sd01=sb01;
      if(sc02==10)
        printf("******* MFNC031 SB05 CHECK     OK ****\n");
      else
        printf("******* MFNC031 SB05 CHECK     NG ****\n");
 }
 void mfnc0311(short int se04)
 {
      se04=se04+10;
      return;
 }
 void 
mfnc04 (void)
 {
      unsigned int  uia01,uia02,uia03,uia04,uia05;
      void mfnc041(unsigned int uia01,unsigned int uia02,
       unsigned int uia03,unsigned int uia04,unsigned int uia05);
      uia01=1;
      uia02=2;
      uia03=3;
      uia04=4;
      uia05=5;
      mfnc041(uia01,uia02,uia03,uia04,uia05);
      if(uid01==1)
        printf("******* MFNC04 UIA01           OK ****\n");
      else
        printf("******* MFNC04 UIA01           NG ****\n");
      if(uia02==2)
        printf("******* MFNC04 UIA02 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC04 UIA05 REAL ARGUM NG ****\n");
      if(uia03==3)
        printf("******* MFNC04 UIA03 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC04 UIA03 REAL ARGUM NG ****\n");
      if(uia05==5)
        printf("******* MFNC04 UIA05 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC01 UIA05 REAL ARGUM NG ****\n");
 }
 void mfnc041(unsigned int uib01,unsigned int uib02,
         unsigned int uib03,unsigned int uib04,unsigned int uib05)
 {
      void mfnc0411(unsigned int uib04);
      unsigned int uic01,uic02;
      uic01=uib03;
      uib05=10;
      uib02=uib01+uic01;
      mfnc0411(uib04);
      uib03=uic01+2;
      uic02=uib05;
      uid01=uib01;
      if(uic02==10)
        printf("******* MFNC041 UIB05 CHECK    OK ****\n");
      else
        printf("******* MFNC041 UIB05 CHECK    NG ****\n");
 }
 void mfnc0411(unsigned int uie04)
 {
      uie04=uie04+10;
      return;
 }
 void 
mfnc05 (void)
 {
      unsigned char uca01,uca02,uca03,uca04,uca05;
      void mfnc051(unsigned char uca01,unsigned char uca02,
      unsigned char uca03,unsigned char uca04,unsigned char uca05);
      uca01='a';
      uca02='b';
      uca03='c';
      uca04='d';
      uca05='e';
      mfnc051(uca01,uca02,uca03,uca04,uca05);
      if(ucd01=='a')
        printf("******* MFNC05 UCA01           OK ****\n");
      else
        printf("******* MFNC05 UCA01           NG ****\n");
      if(uca02=='b')
        printf("******* MFNC05 UCA02 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC05 UCA02 REAL ARGUM NG ****\n");
      if(uca03=='c')
        printf("******* MFNC05 UCA03 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC05 UCA03 REAL ARGUM NG ****\n");
      if(uca05=='e')
        printf("******* MFNC05 UCA05 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC05 UCA05 REAL ARGUM NG ****\n");
 }
 void mfnc051(unsigned char ucb01,unsigned char ucb02,
      unsigned char ucb03,unsigned char ucb04,unsigned char ucb05)
 {
      void mfnc0511(unsigned char ucb04);
      unsigned char ucc01;
      ucb05=ucb03;
      ucb02=ucb01;
      mfnc0511(ucb04);
      ucb03='g';
      ucc01=ucb05;
      ucd01=ucb01;
      if(ucc01=='c')
        printf("******* MFNC051 UCB05 CHECK    OK ****\n");
      else
        printf("******* MFNC051 UCB05 CHECK    NG ****\n");
 }
 void mfnc0511(unsigned char uce04)
 {
      uce04='h';
      return;
 }
 void 
mfnc06 (void)
 {
      unsigned short int usa01,usa02,usa03,usa04,usa05;
      void mfnc061(unsigned short int usa01,unsigned short int usa02,
      unsigned short int usa03,unsigned short int sa04,
      unsigned short int usa05);
      usa01=1;
      usa02=2;
      usa03=3;
      usa04=4;
      usa05=5;
      mfnc061(usa01,usa02,usa03,usa04,usa05);
      if(usd01==1)
        printf("******* MFNC06 USA01           OK ****\n");
      else
        printf("******* MFNC06 USA01           NG ****\n");
      if(usa02==2)
        printf("******* MFNC06 USA02 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC06 USA05 REAL ARGUM NG ****\n");
      if(usa03==3)
        printf("******* MFNC06 USA03 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC06 USA03 REAL ARGUM NG ****\n");
      if(usa05==5)
        printf("******* MFNC06 USA05 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC01 USA05 REAL ARGUM NG ****\n");
 }
 void mfnc061(unsigned short int usb01,unsigned short int usb02,
      unsigned short int usb03,unsigned short int usb04,
      unsigned short int usb05)
 {
      void mfnc0611(unsigned short int usb04);
      unsigned short int usc01,usc02;
      usc01=usb03;
      usb05=10;
      usb02=usb01+usc01;
      mfnc0611(usb04);
      usb03=usc01+2;
      usc02=usb05;
      usd01=usb01;
      if(usc02==10)
        printf("******* MFNC061 USB05 CHECK    OK ****\n");
      else
        printf("******* MFNC061 USB05 CHECK    NG ****\n");
 }
 void mfnc0611(unsigned short int use04)
 {
      use04=use04+10;
      return;
 }
 void 
mfnc07 (void)
 {
      float fa01,fa02,fa03,fa04,fa05;
      void mfnc071(float fa01,float fa02,float fa03,
                   float fa04,float fa05);
      fa01=1;
      fa02=2;
      fa03=3;
      fa04=4;
      fa05=5;
      mfnc071(fa01,fa02,fa03,fa04,fa05);
      if(fd01==1)
        printf("******* MFNC07 FA01            OK ****\n");
      else
        printf("******* MFNC07 FA01            NG*****\n");
      if(fa02==2)
        printf("******* MFNC07 FA02 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC07 FA05 REAL ARGUM NG ****\n");
      if(fa03==3)
        printf("******* MFNC07 FA03 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC07 FA03 REAL ARGUM NG ****\n");
      if(fa05==5)
        printf("******* MFNC07 FA05 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC07 FA05 REAL ARGUM NG ****\n");
 }
 void mfnc071(float fb01,float fb02,float fb03,float fb04,float fb05)
 {
      void mfnc0711(float fb04);
      float fc01,fc02;
      fc01=fb03;
      fb05=10;
      fb02=fb01+fc01;
      mfnc0711(fb04);
      fb03=fc01+2;
      fc02=fb05;
      fd01=fb01;
      if(fc02==10)
        printf("******* MFNC071 FB05 CHECK     OK ****\n");
      else
        printf("******* MFNC071 FB05 CHECK     NG ****\n");
 }
 void mfnc0711(float fe04)
 {
      fe04=fe04+10;
      return;
 }
 void 
mfnc08 (void)
 {
      double da01,da02,da03,da04,da05;
      void mfnc081(double da01,double da02,double da03,
                   double da04,double da05);
      da01=1;
      da02=2;
      da03=3;
      da04=4;
      da05=5;
      mfnc081(da01,da02,da03,da04,da05);
      if(dd01==1)
        printf("******* MFNC08 DA01            OK ****\n");
      else
        printf("******* MFNC08 DA01            NG ****\n");
      if(da02==2)
        printf("******* MFNC08 DA02 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC08 DA05 REAL ARGUM NG ****\n");
      if(da03==3)
        printf("******* MFNC08 DA03 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC08 DA03 REAL ARGUM NG ****\n");
      if(da05==5)
        printf("******* MFNC08 DA05 REAL ARGUM OK ****\n");
      else
        printf("******* MFNC08 DA05 REAL ARGUM NG ****\n");
 }
 void mfnc081(double db01,double db02,double db03,
                   double db04,double db05)
 {
      void mfnc0811(double db04);
      double dc01,dc02;
      dc01=db03;
      db05=10;
      db02=db01+dc01;
      mfnc0811(db04);
      db03=dc01+2;
      dc02=db05;
      dd01=db01;
      if(dc02==10)
        printf("******* MFNC081 DB05 CHECK     OK ****\n");
      else
        printf("******* MFNC081 DB05 CHECK     NG ****\n");
 }
 void mfnc0811(double de04)
 {
      de04=de04+10;
      return;
 }
 
 
 

int   be1f1();
void  be1f2();
int     be1e1;
int 
scort01 (void)
{
    int a1 = 0;
    be1e1=0;

    printf("********** SCORT01 TEST STARTED **********\n") ;

    a1 = be1f1();
    if (a1 == 1)
        printf("********** RETURN OK **********\n");
    else
        printf("********** RETURN NG **********\n");
    be1f2();
    be1f1();

    printf("********** SCORT01 TEST ENDED **********\n")   ;

}
int 
be1f1 (void)
{
    be1e1++;
    return be1e1;
}
void 
be1f2 (void)
{
    be1e1++;
}
