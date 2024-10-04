


#include<stdio.h>


#include <signal.h>
#include <setjmp.h>
void m3edtr04 (void);
void m3edc042 (void);
void mptest40();
void m3edc043 (void);
void m3edc041 (void);
int  mptest38 (void);
void m3edc040 (void);
void scpaln1 (void);
void m3edc039 (void);
void m3edc034 (void);
void scpa003 (void);
void m3edc033 (void);
void m3edc032 (void);
void m3edc031 (void);
 jmp_buf env;
int 
main (void)
{
   m3edc031();  
   m3edc032();  
   m3edc033();  
   scpa003();   
   m3edc034();  
   m3edc039();  
   scpaln1();   
   m3edc040();  
   mptest38();  
   m3edc041();  
   m3edc043();  
   mptest40();  
   m3edc042();  
   m3edtr04();  

}


 volatile const char fe1a4;
 volatile const char fe1a5;
 typedef const volatile char fe1t_c;

void
m3edc031 (void)
{

   volatile const char *addr,*addr2;

   auto volatile const char a1,b1;
   register volatile const char a2=0xff;
   static volatile const char a3[2]={2,3};
   extern volatile const char fe1a4;
   extern volatile const char fe1a5;
   fe1t_c a6;


   printf("*** M3EDC031 ** MK3 TEST FOR DCL ** STARTED ***\n");

   addr = &a1;  addr2 = &b1;
   if (a1!=*addr || b1!=*addr2)
       printf(" *** M3EDC031 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC031 TEST-01 OK ***\n");

#ifdef S_CHAR
   if (a2!=-1)
#else
   if (a2!=0xff)
#endif
       printf(" *** M3EDC031 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC031 TEST-02 OK ***\n");

   if (a3[0]!=2 || a3[1]!=3)
       printf(" *** M3EDC031 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC031 TEST-03 OK ***\n");

   if (fe1a4!=0)
       printf(" *** M3EDC031 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC031 TEST-04 OK ***\n");

   if (fe1a5!=0)
       printf(" *** M3EDC031 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC031 TEST-05 OK ***\n");

   addr = &a6;
   if (a6!=*addr)
       printf(" *** M3EDC031 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC031 TEST-06 OK ***\n");

   printf("*** M3EDC031 TEST ENDED ***\n");
   return;
}


 volatile const char fe2a4;
 volatile const char fe2a5;

void
m3edc032 (void)
{

   volatile const char *addr,*addr2;

   printf("*** M3EDC032 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto volatile const char a1;
     register volatile const char a2=0xff,b2=0x00;
     static volatile const char a3[2]={2,3};
     extern volatile const char fe2a4;
     extern volatile const char fe2a5;
     typedef const volatile char t_c;
     t_c  a6;


     addr = &a1;
     if (a1!=*addr)
         printf(" *** M3EDC032 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC032 TEST-01 OK ***\n");

#ifdef S_CHAR
     if (a2!=-1 || b2!=0)
#else
     if (a2!=0xff || b2!=0)
#endif
         printf(" *** M3EDC032 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC032 TEST-02 OK ***\n");

     if (a3[0]!=2 || a3[1]!=3)
         printf(" *** M3EDC032 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC032 TEST-03 OK ***\n");

     if (fe2a4!=0)
         printf(" *** M3EDC032 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC032 TEST-04 OK ***\n");

     if (fe2a5!=0)
         printf(" *** M3EDC032 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC032 TEST-05 OK ***\n");

     addr = &a6;
     if (a6!=*addr)
         printf(" *** M3EDC032 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC032 TEST-06 OK ***\n");
   }

   printf("*** M3EDC032 TEST ENDED ***\n");
   return;
}


 volatile const int fe3a4;
 volatile const int fe3a5;
 typedef const volatile int fe3t_i;

void
m3edc033 (void)
{

   volatile const int *addr,*addr2;

   auto volatile const int a1,b1;
   register volatile const int a2=0x7fffffff;
   static volatile const int a3[2]={2,3};
   extern volatile const int fe3a4;
   extern volatile const int fe3a5;
   fe3t_i a6;


   printf("*** M3EDC033 ** MK3 TEST FOR DCL ** STARTED ***\n");

   addr = &a1;  addr2 = &b1;
   if (a1!=*addr || b1!=*addr2)
       printf(" *** M3EDC033 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC033 TEST-01 OK ***\n");

   if (a2!=2147483647)
       printf(" *** M3EDC033 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC033 TEST-02 OK ***\n");

   if (a3[0]!=2 || a3[1]!=3)
       printf(" *** M3EDC033 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC033 TEST-03 OK ***\n");

   if (fe3a4!=0)
       printf(" *** M3EDC033 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC033 TEST-04 OK ***\n");

   if (fe3a5!=0)
       printf(" *** M3EDC033 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC033 TEST-05 OK ***\n");

   addr = &a6;
   if (a6!=*addr)
       printf(" *** M3EDC033 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC033 TEST-06 OK ***\n");

   printf("*** M3EDC033 TEST ENDED ***\n");
   return;
}




 volatile const int fe4a4;
 volatile const int fe5a5;

void
m3edc034 (void)
{

   volatile const int *addr,*addr2;

   printf("*** M3EDC034 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto volatile const int a1,b1;
     register volatile const int a2=-1;
     static volatile const int a3[2]={2,3};
     extern volatile const int fe4a4;
     extern volatile const int fe5a5;
     typedef const volatile int t_i;
     t_i  a6;


     addr = &a1;  addr2 = &b1;
     if (a1!=*addr || b1!=*addr2)
         printf(" *** M3EDC034 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC034 TEST-01 OK ***\n");

     if (a2!=-1)
         printf(" *** M3EDC034 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC034 TEST-02 OK ***\n");

     if (a3[0]!=2 || a3[1]!=3)
         printf(" *** M3EDC034 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC034 TEST-03 OK ***\n");

     if (fe4a4!=0)
         printf(" *** M3EDC034 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC034 TEST-04 OK ***\n");

     if (fe5a5!=0)
         printf(" *** M3EDC034 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC034 TEST-05 OK ***\n");

     addr = &a6;
     if (a6!=*addr)
         printf(" *** M3EDC034 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC034 TEST-06 OK ***\n");
   }

   printf("*** M3EDC034 TEST ENDED ***\n");
   return;
}




 volatile const short fe6a4;
 volatile const short fe6a5;
 typedef const volatile short fe6t_s;

void
m3edc039 (void)
{

   volatile const short *addr,*addr2;

   auto volatile const short a1,b1;
   register volatile const short a2=0x7fff;
   static volatile const short a3[2]={2,3};
   extern volatile const short fe6a4;
   extern volatile const short fe6a5;
   fe6t_s a6;


   printf("*** M3EDC039 ** MK3 TEST FOR DCL ** STARTED ***\n");

   addr = &a1;  addr2 = &b1;
   if (a1!=*addr || b1!=*addr2)
       printf(" *** M3EDC039 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC039 TEST-01 OK ***\n");

   if (a2!=32767)
       printf(" *** M3EDC039 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC039 TEST-02 OK ***\n");

   if (a3[0]!=2 || a3[1]!=3)
       printf(" *** M3EDC039 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC039 TEST-03 OK ***\n");

   if (fe6a4!=0)
       printf(" *** M3EDC039 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC039 TEST-04 OK ***\n");

   if (fe6a5!=0)
       printf(" *** M3EDC039 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC039 TEST-05 OK ***\n");

   addr = &a6;
   if (a6!=*addr)
       printf(" *** M3EDC039 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC039 TEST-06 OK ***\n");

   printf("*** M3EDC039 TEST ENDED ***\n");
   return;
}



 volatile const short fe5a;
 volatile const short feza5;

void
m3edc040 (void)
{

   volatile const short *addr,*addr2;

   printf("*** M3EDC040 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto volatile const short a1,b1;
     register volatile const short a2=-1;
     static volatile const short a3[2]={2,3};
     extern volatile const short fe5a;
     extern volatile const short feza5;
     typedef const volatile short t_s;
     t_s  a6;


     addr = &a1;  addr2 = &b1;
     if (a1!=*addr || b1!=*addr2)
         printf(" *** M3EDC040 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC040 TEST-01 OK ***\n");

     if (a2!=-1)
         printf(" *** M3EDC040 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC040 TEST-02 OK ***\n");

     if (a3[0]!=2 || a3[1]!=3)
         printf(" *** M3EDC040 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC040 TEST-03 OK ***\n");

     if (fe5a!=0)
         printf(" *** M3EDC040 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC040 TEST-04 OK ***\n");

     if (feza5!=0)
         printf(" *** M3EDC040 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC040 TEST-05 OK ***\n");

     addr = &a6;
     if (a6!=*addr)
         printf(" *** M3EDC040 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC040 TEST-06 OK ***\n");
   }

   printf("*** M3EDC040 TEST ENDED ***\n");
   return;
}



 volatile const long fe7a4;
 volatile const long fe7a5;
 typedef const volatile long fe7t_l;

void
m3edc041 (void)
{

   volatile const long *addr,*addr2;

   auto volatile const long a1,b1;
   register volatile const long a2=0x7fffffff;
   static volatile const long a3[2]={2,3};
   extern volatile const long fe7a4;
   extern volatile const long fe7a5;
   fe7t_l a6;


   printf("*** M3EDC041 ** MK3 TEST FOR DCL ** STARTED ***\n");

   addr = &a1;  addr2 = &b1;
   if (a1!=*addr || b1!=*addr2)
       printf(" *** M3EDC041 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC041 TEST-01 OK ***\n");

   if (a2!=2147483647)
       printf(" *** M3EDC041 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC041 TEST-02 OK ***\n");

   if (a3[0]!=2 || a3[1]!=3)
       printf(" *** M3EDC041 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC041 TEST-03 OK ***\n");

   if (fe7a4!=0)
       printf(" *** M3EDC041 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC041 TEST-04 OK ***\n");

   if (fe7a5!=0)
       printf(" *** M3EDC041 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC041 TEST-05 OK ***\n");

   addr = &a6;
   if (a6!=*addr)
       printf(" *** M3EDC041 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC041 TEST-06 OK ***\n");

   printf("*** M3EDC041 TEST ENDED ***\n");
   return;
}



 volatile const long fe8a4;
 volatile const long fe8a5;

void
m3edc042 (void)
{

   volatile const long *addr,*addr2;

   printf("*** M3EDC042 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto volatile const long a1,b1;
     register volatile const long a2=-1;
     static volatile const long a3[2]={2,3};
     extern volatile const long fe8a4;
     extern volatile const long fe8a5;
     typedef const volatile long t_l;
     t_l  a6;


     addr = &a1;  addr2 = &b1;
     if (a1!=*addr || b1!=*addr2)
         printf(" *** M3EDC042 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC042 TEST-01 OK ***\n");

     if (a2!=-1)
         printf(" *** M3EDC042 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC042 TEST-02 OK ***\n");

     if (a3[0]!=2 || a3[1]!=3)
         printf(" *** M3EDC042 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC042 TEST-03 OK ***\n");

     if (fe8a4!=0)
         printf(" *** M3EDC042 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC042 TEST-04 OK ***\n");

     if (fe8a5!=0)
         printf(" *** M3EDC042 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC042 TEST-05 OK ***\n");

     addr = &a6;
     if (a6!=*addr)
         printf(" *** M3EDC042 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC042 TEST-06 OK ***\n");
   }

   printf("*** M3EDC042 TEST ENDED ***\n");
   return;
}



 volatile const signed fe9a4;
 volatile const signed fe9a5;
 typedef const volatile signed fe9tp1;

void
m3edc043 (void)
{

   volatile const signed *addr,*addr2;

   auto volatile const signed a1=0xffff,b1;
   register volatile const signed a2=-1;
   static volatile const signed a3[2]={2,3};
   extern volatile const signed fe9a4;
   extern volatile const signed fe9a5;
   fe9tp1 a6;


   printf("*** M3EDC043 ** MK3 TEST FOR DCL ** STARTED ***\n");

   addr = &b1;
   if (a1!=65535 || b1!=*addr)
       printf(" *** M3EDC043 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC043 TEST-01 OK ***\n");

   if (a2!=-1)
       printf(" *** M3EDC043 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC043 TEST-02 OK ***\n");

   if (a3[0]!=2 || a3[1]!=3)
       printf(" *** M3EDC043 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC043 TEST-03 OK ***\n");

   if (fe9a4!=0)
       printf(" *** M3EDC043 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC043 TEST-04 OK ***\n");

   if (fe9a5!=0)
       printf(" *** M3EDC043 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC043 TEST-05 OK ***\n");

   addr = &a6;
   if (a6!=*addr)
       printf(" *** M3EDC043 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC043 TEST-06 OK ***\n");

   printf("*** M3EDC043 TEST ENDED ***\n");
   return;
}



union {
  struct {
    unsigned char a:1; unsigned char :6; unsigned char b:1;
  } fest;
  unsigned char mem;
} feun;

int fefnc1(int (void));
int fefnc2(int (int));
int fefnc3(int *);
int fefnc4(int *(void));
int fefnc5(int *(int));
int fefnc6(int (*)(void));
int fefnc11(void);
int fefnc12(int);
int *fefnc14(void);
int *fefnc15(int);
int (*fefnc16)(void);
int fefnc166(void);

static int st1 = 1;

void
m3edtr04 (void)
{
  {
    feun.mem = 129u;

    if (feun.fest.b == 1)
        printf("***** M3EDTR04 - 01 ***** O K *****\n");
      else
        printf("***** M3EDTR04 - 01 ***** N G *****\n");
  }
  {
    int a = 1;

    if (fefnc1(fefnc11) == 1)
        printf("***** M3EDTR04 - 02 ***** O K *****\n");
      else
        printf("***** M3EDTR04 - 02 ***** N G *****\n");

    if (fefnc2(fefnc12) == 1)
        printf("***** M3EDTR04 - 03 ***** O K *****\n");
      else
        printf("***** M3EDTR04 - 03 ***** N G *****\n");

    if (fefnc3(&a) == 1)
        printf("***** M3EDTR04 - 04 ***** O K *****\n");
      else
        printf("***** M3EDTR04 - 04 ***** N G *****\n");

    if (fefnc4(fefnc14)== 1)
        printf("***** M3EDTR04 - 05 ***** O K *****\n");
      else
        printf("***** M3EDTR04 - 05 ***** N G *****\n");

    if (fefnc5(fefnc15) == 1)
        printf("***** M3EDTR04 - 06 ***** O K *****\n");
      else
        printf("***** M3EDTR04 - 06 ***** N G *****\n");

    fefnc16 = &fefnc166;
    if (fefnc6(fefnc16) == 1)
        printf("***** M3EDTR04 - 07 ***** O K *****\n");
      else
        printf("***** M3EDTR04 - 07 ***** N G *****\n");
  }
  return;
}

int fefnc1(int fefnc11(void))
{
  return (fefnc11());
}

int 
fefnc11 (void)
{
  return (1);
}

int fefnc2(int fefnc12(int))
{
  return (fefnc12(1));
}

int fefnc12(int a)
{
  return (a);
}

int fefnc3(int *a)
{
  return (*a);
}

int fefnc4(int *fefnc14(void))
{
  return (*fefnc14());
}

int *
fefnc14 (void)
{
  return (&st1);
}

int fefnc5(int *fefnc15(int))
{
  return (*fefnc15(1));
}

int *fefnc15(int a)
{
  st1 *= a;
  return (&st1);
}

int fefnc6(int (*fefnc16)(void))
{
  return ((*fefnc16)());
}

int 
fefnc166 (void)
{
  return (st1);
}


 jmp_buf env;
int
mptest38 (void)
 {
    int rtncd,*p1,p2,p3,s1;
    void mp1fnc1();
    signal(SIGSEGV,mp1fnc1);
    rtncd=setjmp(env);
    if(rtncd!=0) {
      printf("_____ RETURN CODE = %d _____\n",rtncd);
      if(rtncd==999)
        printf("_____ MPTEST38 OK ___________\n");
      else
        printf("_____ MPTEST38 NG ___________\n");
      return 0;
    } ;


    s1=10;
    goto l1;
l2: s1=0;
    goto l3;
l1: s1=s1*10;
    goto l2;
l3: if(s1==0)
      printf("_____ CHECK 1 OK ____________\n");
    else {
      printf("_____ CHECK 1 NG ____________\n");
      printf("_____ S1 = %d ______________\n",s1);
      }

    for(p3=1;p3<400;p3++) {    
    p1=p1-20000;                
	mp1fnc1();
    } ;                        
    return 0;
 }
 void 
mp1fnc1 (void)
 {
    longjmp(env,999);
 }



#define proc     {
#define endproc  }
#define block    {
#define endblock }
#define then     {
#define endif    }
#define when(cs) case cs:block ans+=1; endblock
      enum swcs block
       c0001,c0002,c0003,c0004,c0005,c0006,c0007,c0008,c0009,c0010
      ,c0011,c0012,c0013,c0014,c0015,c0016,c0017,c0018,c0019,c0020
      ,c0021,c0022,c0023,c0024,c0025,c0026,c0027,c0028,c0029,c0030
      ,c0031,c0032,c0033,c0034,c0035,c0036,c0037,c0038,c0039,c0040
      ,c0041,c0042,c0043,c0044,c0045,c0046,c0047,c0048,c0049,c0050
      ,c0051,c0052,c0053,c0054,c0055,c0056,c0057,c0058,c0059,c0060
      ,c0061,c0062,c0063,c0064,c0065,c0066,c0067,c0068,c0069,c0070
      ,c0071,c0072,c0073,c0074,c0075,c0076,c0077,c0078,c0079,c0080
      ,c0081,c0082,c0083,c0084,c0085,c0086,c0087,c0088,c0089,c0090
      ,c0091,c0092,c0093,c0094,c0095,c0096,c0097,c0098,c0099,c0100
      ,c0101,c0102,c0103,c0104,c0105,c0106,c0107,c0108,c0109,c0110
      ,c0111,c0112,c0113,c0114,c0115,c0116,c0117,c0118,c0119,c0120
      ,c0121,c0122,c0123,c0124,c0125,c0126,c0127,c0128,c0129,c0130
      ,c0131,c0132,c0133,c0134,c0135,c0136,c0137,c0138,c0139,c0140
      ,c0141,c0142,c0143,c0144,c0145,c0146,c0147,c0148,c0149,c0150
      ,c0151,c0152,c0153,c0154,c0155,c0156,c0157,c0158,c0159,c0160
      ,c0161,c0162,c0163,c0164,c0165,c0166,c0167,c0168,c0169,c0170
      ,c0171,c0172,c0173,c0174,c0175,c0176,c0177,c0178,c0179,c0180
      ,c0181,c0182,c0183,c0184,c0185,c0186,c0187,c0188,c0189,c0190
      ,c0191,c0192,c0193,c0194,c0195,c0196,c0197,c0198,c0199,c0200
      ,c0201,c0202,c0203,c0204,c0205,c0206,c0207,c0208,c0209,c0210
      ,c0211,c0212,c0213,c0214,c0215,c0216,c0217,c0218,c0219,c0220
      ,c0221,c0222,c0223,c0224,c0225,c0226,c0227,c0228,c0229,c0230
      ,c0231,c0232,c0233,c0234,c0235,c0236,c0237,c0238,c0239,c0240
      ,c0241,c0242,c0243,c0244,c0245,c0246,c0247,c0248,c0249,c0250
      ,c0251,c0252,c0253,c0254,c0255,c0256,c0257,c0258,c0259,c0260
      ,c0261,c0262,c0263,c0264,c0265,c0266,c0267,c0268,c0269,c0270
      ,c0271,c0272,c0273,c0274,c0275,c0276,c0277,c0278,c0279,c0280
      ,c0281,c0282,c0283,c0284,c0285,c0286,c0287,c0288,c0289,c0290
      ,c0291,c0292,c0293,c0294,c0295,c0296,c0297,c0298,c0299,c0300
      ,c0301,c0302,c0303,c0304,c0305,c0306,c0307,c0308,c0309,c0310
      ,c0311,c0312,c0313,c0314,c0315,c0316,c0317,c0318,c0319,c0320
      ,c0321,c0322,c0323,c0324,c0325,c0326,c0327,c0328,c0329,c0330
      ,c0331,c0332,c0333,c0334,c0335,c0336,c0337,c0338,c0339,c0340
      ,c0341,c0342,c0343,c0344,c0345,c0346,c0347,c0348,c0349,c0350
      ,c0351,c0352,c0353,c0354,c0355,c0356,c0357,c0358,c0359,c0360
      ,c0361,c0362,c0363,c0364,c0365,c0366,c0367,c0368,c0369,c0370
      ,c0371,c0372,c0373,c0374,c0375,c0376,c0377,c0378,c0379,c0380
      ,c0381,c0382,c0383,c0384,c0385,c0386,c0387,c0388,c0389,c0390
      ,c0391,c0392,c0393,c0394,c0395,c0396,c0397,c0398,c0399,c0400
      ,c0401,c0402,c0403,c0404,c0405,c0406,c0407,c0408,c0409,c0410
      ,c0411,c0412,c0413,c0414,c0415,c0416,c0417,c0418,c0419,c0420
      ,c0421,c0422,c0423,c0424,c0425,c0426,c0427,c0428,c0429,c0430
      ,c0431,c0432,c0433,c0434,c0435,c0436,c0437,c0438,c0439,c0440
      ,c0441,c0442,c0443,c0444,c0445,c0446,c0447,c0448,c0449,c0450
      ,c0451,c0452,c0453,c0454,c0455,c0456,c0457,c0458,c0459,c0460
      ,c0461,c0462,c0463,c0464,c0465,c0466,c0467,c0468,c0469,c0470
      ,c0471,c0472,c0473,c0474,c0475,c0476,c0477,c0478,c0479,c0480
      ,c0481,c0482,c0483,c0484,c0485,c0486,c0487,c0488,c0489,c0490
      ,c0491,c0492,c0493,c0494,c0495,c0496,c0497,c0498,c0499,c0500
      ,c0501,c0502,c0503,c0504,c0505,c0506,c0507,c0508,c0509,c0510
      ,c0511,c0512,c0513,c0514,c0515,c0516,c0517,c0518,c0519,c0520
      ,c0521,c0522,c0523,c0524,c0525,c0526,c0527,c0528,c0529,c0530
      ,c0531,c0532,c0533,c0534,c0535,c0536,c0537,c0538,c0539,c0540
      ,c0541,c0542,c0543,c0544,c0545,c0546,c0547,c0548,c0549,c0550
      ,c0551,c0552,c0553,c0554,c0555,c0556,c0557,c0558,c0559,c0560
      ,c0561,c0562,c0563,c0564,c0565,c0566,c0567,c0568,c0569,c0570
      ,c0571,c0572,c0573,c0574,c0575,c0576,c0577,c0578,c0579,c0580
      ,c0581,c0582,c0583,c0584,c0585,c0586,c0587,c0588,c0589,c0590
      ,c0591,c0592,c0593,c0594,c0595,c0596,c0597,c0598,c0599,c0600
      ,c0601,c0602,c0603,c0604,c0605,c0606,c0607,c0608,c0609,c0610
      ,c0611,c0612,c0613,c0614,c0615,c0616,c0617,c0618,c0619,c0620
      ,c0621,c0622,c0623,c0624,c0625,c0626,c0627,c0628,c0629,c0630
      ,c0631,c0632,c0633,c0634,c0635,c0636,c0637,c0638,c0639,c0640
      ,c0641,c0642,c0643,c0644,c0645,c0646,c0647,c0648,c0649,c0650
      ,c0651,c0652,c0653,c0654,c0655,c0656,c0657,c0658,c0659,c0660
      ,c0661,c0662,c0663,c0664,c0665,c0666,c0667,c0668,c0669,c0670
      ,c0671,c0672,c0673,c0674,c0675,c0676,c0677,c0678,c0679,c0680
      ,c0681,c0682,c0683,c0684,c0685,c0686,c0687,c0688,c0689,c0690
      ,c0691,c0692,c0693,c0694,c0695,c0696,c0697,c0698,c0699,c0700
      ,c0701,c0702,c0703,c0704,c0705,c0706,c0707,c0708,c0709,c0710
      ,c0711,c0712,c0713,c0714,c0715,c0716,c0717,c0718,c0719,c0720
      ,c0721,c0722,c0723,c0724,c0725,c0726,c0727,c0728,c0729,c0730
      ,c0731,c0732,c0733,c0734,c0735,c0736,c0737,c0738,c0739,c0740
      ,c0741,c0742,c0743,c0744,c0745,c0746,c0747,c0748,c0749,c0750
      ,c0751,c0752,c0753,c0754,c0755,c0756,c0757,c0758,c0759,c0760
      ,c0761,c0762,c0763,c0764,c0765,c0766,c0767,c0768,c0769,c0770
      ,c0771,c0772,c0773,c0774,c0775,c0776,c0777,c0778,c0779,c0780
      ,c0781,c0782,c0783,c0784,c0785,c0786,c0787,c0788,c0789,c0790
      ,c0791,c0792,c0793,c0794,c0795,c0796,c0797,c0798,c0799,c0800
      ,c0801,c0802,c0803,c0804,c0805,c0806,c0807,c0808,c0809,c0810
      ,c0811,c0812,c0813,c0814,c0815,c0816,c0817,c0818,c0819,c0820
      ,c0821,c0822,c0823,c0824,c0825,c0826,c0827,c0828,c0829,c0830
      ,c0831,c0832,c0833,c0834,c0835,c0836,c0837,c0838,c0839,c0840
      ,c0841,c0842,c0843,c0844,c0845,c0846,c0847,c0848,c0849,c0850
      ,c0851,c0852,c0853,c0854,c0855,c0856,c0857,c0858,c0859,c0860
      ,c0861,c0862,c0863,c0864,c0865,c0866,c0867,c0868,c0869,c0870
      ,c0871,c0872,c0873,c0874,c0875,c0876,c0877,c0878,c0879,c0880
      ,c0881,c0882,c0883,c0884,c0885,c0886,c0887,c0888,c0889,c0890
      ,c0891,c0892,c0893,c0894,c0895,c0896,c0897,c0898,c0899,c0900
      ,c0901,c0902,c0903,c0904,c0905,c0906,c0907,c0908,c0909,c0910
      ,c0911,c0912,c0913,c0914,c0915,c0916,c0917,c0918,c0919,c0920
      ,c0921,c0922,c0923,c0924,c0925,c0926,c0927,c0928,c0929,c0930
      ,c0931,c0932,c0933,c0934,c0935,c0936,c0937,c0938,c0939,c0940
      ,c0941,c0942,c0943,c0944,c0945,c0946,c0947,c0948,c0949,c0950
      ,c0951,c0952,c0953,c0954,c0955,c0956,c0957,c0958,c0959,c0960
      ,c0961,c0962,c0963,c0964,c0965,c0966,c0967,c0968,c0969,c0970
      ,c0971,c0972,c0973,c0974,c0975,c0976,c0977,c0978,c0979,c0980
      ,c0981,c0982,c0983,c0984,c0985,c0986,c0987,c0988,c0989,c0990
      ,c0991,c0992,c0993,c0994,c0995,c0996,c0997,c0998,c0999,c1000
      ,c1001,c1002,c1003,c1004,c1005,c1006,c1007,c1008,c1009,c1010
      ,c1011,c1012,c1013,c1014,c1015,c1016,c1017,c1018,c1019,c1020
      ,c1021,c1022,c1023,c1024,c1025,c1026,c1027,c1028,c1029,c1030
      ,c1031,c1032,c1033,c1034,c1035,c1036,c1037,c1038,c1039,c1040
      ,c1041,c1042,c1043,c1044,c1045,c1046,c1047,c1048,c1049,c1050
      ,c1051,c1052,c1053,c1054,c1055,c1056,c1057,c1058,c1059,c1060
      ,c1061,c1062,c1063,c1064,c1065,c1066,c1067,c1068,c1069,c1070
      ,c1071,c1072,c1073,c1074,c1075,c1076,c1077,c1078,c1079,c1080
      ,c1081,c1082,c1083,c1084,c1085,c1086,c1087,c1088,c1089,c1090
      ,c1091,c1092,c1093,c1094,c1095,c1096,c1097,c1098,c1099,c1100
       endblock sw ;
 void mptest40() proc
      int ans;
      sw=0 ;
      ans=0 ;
      switch (sw) block
       when(c0001) when(c0002) when(c0003) when(c0004) when(c0005)
       when(c0006) when(c0007) when(c0008) when(c0009) when(c0010)
       when(c0111) when(c0112) when(c0113) when(c0114) when(c0115)
       when(c0116) when(c0117) when(c0118) when(c0119) when(c0120)
       when(c0221) when(c0222) when(c0223) when(c0224) when(c0225)
       when(c0226) when(c0227) when(c0228) when(c0229) when(c0230)
       when(c0331) when(c0332) when(c0333) when(c0334) when(c0335)
       when(c0336) when(c0337) when(c0338) when(c0339) when(c0340)
       when(c0441) when(c0442) when(c0443) when(c0444) when(c0445)
       when(c0446) when(c0447) when(c0448) when(c0449) when(c0450)
       when(c0551) when(c0552) when(c0553) when(c0554) when(c0555)
       when(c0556) when(c0557) when(c0558) when(c0559) when(c0560)
       when(c0661) when(c0662) when(c0663) when(c0664) when(c0665)
       when(c0666) when(c0667) when(c0668) when(c0669) when(c0670)
       when(c0771) when(c0772) when(c0773) when(c0774) when(c0775)
       when(c0776) when(c0777) when(c0778) when(c0779) when(c0780)
       when(c0881) when(c0882) when(c0883) when(c0884) when(c0885)
       when(c0886) when(c0887) when(c0888) when(c0889) when(c0890)
       when(c0991) when(c0992) when(c0993) when(c0994) when(c0995)
       when(c0996) when(c0997) when(c0998) when(c0999) when(c1000)
       endblock
      printf("*** ANS = %d\n",ans) ;
      if(ans==100)
        printf("*** MPTEST40 OK ***\n");
      else
        printf("*** MPTEST40 NG ***\n");
      return;
      endproc




struct beatag1
 {
   int a;
   long double b[260];
 };
 struct beatag1 st_1;

struct beatag2
 {
   int x;
   long double y[520];
 };
 struct beatag2 st2;

void
scpaln1 (void)
{
  printf("********** SCPALN1 START **********\n");

  st_1.b[255]= 1.0;
  st_1.b[256]= 2.0;
  st_1.b[257]= 3.0;
  if(st_1.b[255] == 1.0)
     printf("********** SCPALN1-01 OK **********\n");
  else
     printf("********** SCPALN1-01 NG **********\n");
  if(st_1.b[256] == 2.0)
     printf("********** SCPALN1-02 OK **********\n");
  else
     printf("********** SCPALN1-02 NG **********\n");
  if(st_1.b[257] == 3.0)
     printf("********** SCPALN1-03 OK **********\n");
  else
     printf("********** SCPALN1-03 NG **********\n");

  st2.y[511]= 1;
  st2.y[512]= 2;
  st2.y[513]= 3;
  if(st2.y[511] == 1  )
     printf("********** SCPALN1-04 OK **********\n");
  else
     printf("********** SCPALN1-04 NG **********\n");
  if(st2.y[512] == 2  )
     printf("********** SCPALN1-05 OK **********\n");
  else
     printf("********** SCPALN1-05 NG **********\n");
  if(st2.y[513] == 3  )
     printf("********** SCPALN1-06 OK **********\n");
  else
     printf("********** SCPALN1-06 NG **********\n");
  printf("********** SCPALN1 END   **********\n");
  return;
}


struct bextag1 {
    char       t1_ch1;
    short int  t1_si1;
};

int sub (char pch1, short int psi1, long int pli1, long long int pll1, struct bextag1 pst1, struct bextag1 pst2, long int plia1[]);

void
scpa003 (void)
{
    static char        ch1 = 1;
    static short int   si1 = 2;
    static long int    li1 = 4;
    static long int    lia1[5] = { 10, 20, 30, 40, 50 };
    static long long int
                       ll1 = 8;
    static struct bextag1 st_1 = { 100, 200 };
    static struct bextag1 *stp1 = &st_1;
    long int    cal, ans = 765;

    printf("---- SCPA003 START ---- \n");

    cal = sub(ch1, si1, li1, ll1, st_1, *stp1, lia1);

    if (cal == ans)
        printf ("   ***  OK  *** \n");
    else {
        printf ("   ???  NG  ??? \n");
        printf ("     ANS = %ld\n", ans);
        printf ("     CAL = %ld\n", cal);
    }

    printf("---- SCPA003  END  ---- \n");
    return;
}

int 
sub (char pch1, short int psi1, long int pli1, long long int pll1, struct bextag1 pst1, struct bextag1 pst2, long int plia1[])
{
    long int    i, sum;

    sum = pch1 + psi1 + pli1 + pll1 +
          pst1.t1_ch1 + pst1.t1_si1 + pst2.t1_ch1 + pst2.t1_si1;
    for (i=0; i<5; i++)
        sum = sum+plia1[i];
    return sum;
}
