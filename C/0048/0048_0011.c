

#include<stdio.h>
#include<string.h>
void m3edc060();
void m3edc059();
void m3edc056();
void m3edc055();
void scpa014();
void scpa013();
void scpa012();
void m3edc054();
void m3edc053();
int mptest42();
void mptest41();
void m3edc048();
void m3edc047();
void m3edc046();
void m3edc045();
void m3edc044();


#define proc     {
#define endproc  }
#define block    {
#define end      }
#define a1_(i)   a1[i]
#define b2_(i)   b2[i]
#define c3_(i)   c3[i]
#define x_(i)    x[i]

#define      num      4

#define      bexnum   2
int main()
{
   m3edc044();  
   m3edc045();  
   m3edc046();  
   m3edc047();  
   m3edc048();  
   mptest41();  
   mptest42();  
   m3edc053();  
   m3edc054();  
   scpa012();   
   scpa013();   
   scpa014();   
   m3edc055();  
   m3edc056();  
   m3edc059();  
   m3edc060();  

}




 volatile const signed fe1a4;
 volatile const signed fe1a5;

void m3edc044()
{

   volatile const signed *addr,*addr2;

   printf("*** M3EDC044 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto volatile const signed a1,b1;
     register volatile const signed a2=0;
     static volatile const signed a3[2]={2,};
     extern volatile const signed fe1a4;
     extern volatile const signed fe1a5;
     typedef const volatile signed t_s;
     t_s  a6;


     addr = &a1;  addr2 = &b1;
     if (a1!=*addr || b1!=*addr2)
         printf(" *** M3EDC044 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC044 TEST-01 OK ***\n");

     if (a2)
         printf(" *** M3EDC044 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC044 TEST-02 OK ***\n");

     addr = &a3[1];
     if (a3[0]!=2 || a3[1]!=*addr)
         printf(" *** M3EDC044 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC044 TEST-03 OK ***\n");

     if (fe1a4!=0)
         printf(" *** M3EDC044 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC044 TEST-04 OK ***\n");

     if (fe1a5!=0)
         printf(" *** M3EDC044 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC044 TEST-05 OK ***\n");

     addr = &a6;
     if (a6!=*addr)
         printf(" *** M3EDC044 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC044 TEST-06 OK ***\n");
   }

   printf("*** M3EDC044 TEST ENDED ***\n");
}



 volatile const unsigned fe2a4;
 volatile const unsigned fe2a5;
 typedef const volatile unsigned fe2tp1;

void m3edc045()
{

   volatile const unsigned *addr,*addr2;

   auto volatile const unsigned a1,b1;
   register volatile const unsigned a2=0xffffffff;
   static volatile const unsigned a3[2]={2,3};
   extern volatile const unsigned fe2a4;
   extern volatile const unsigned fe2a5;
   fe2tp1 a6;


   printf("*** M3EDC045 ** MK3 TEST FOR DCL ** STARTED ***\n");

   addr = &a1;  addr2 = &b1;
   if (a1!=*addr || b1!=*addr2)
       printf(" *** M3EDC045 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC045 TEST-01 OK ***\n");

   if (a2!=4294967295)
       printf(" *** M3EDC045 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC045 TEST-02 OK ***\n");

   if (a3[0]!=2 || a3[1]!=3)
       printf(" *** M3EDC045 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC045 TEST-03 OK ***\n");

   if (fe2a4!=0)
       printf(" *** M3EDC045 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC045 TEST-04 OK ***\n");

   if (fe2a5!=0)
       printf(" *** M3EDC045 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC045 TEST-05 OK ***\n");

   addr = &a6;
   if (a6!=*addr)
       printf(" *** M3EDC045 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC045 TEST-06 OK ***\n");

   printf("*** M3EDC045 TEST ENDED ***\n");
}



 volatile const unsigned fe3a4;
 volatile const unsigned fe3a5;

void m3edc046()
{

   volatile const unsigned *addr,*addr2;

   printf("*** M3EDC046 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto volatile const unsigned a1,b1;
     register volatile const unsigned a2=1;
     static volatile const unsigned a3[2]={2,};
     extern volatile const unsigned fe3a4;
     extern volatile const unsigned fe3a5;
     typedef const volatile unsigned t_u;
     t_u  a6;


     addr = &a1;  addr2 = &b1;
     if (a1!=*addr || b1!=*addr2)
         printf(" *** M3EDC046 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC046 TEST-01 OK ***\n");

     if (a2!=1)
         printf(" *** M3EDC046 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC046 TEST-02 OK ***\n");

     addr = &a3[1];
     if (a3[0]!=2 || a3[1]!=*addr)
         printf(" *** M3EDC046 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC046 TEST-03 OK ***\n");

     if (fe3a4!=0)
         printf(" *** M3EDC046 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC046 TEST-04 OK ***\n");

     if (fe3a5!=0)
         printf(" *** M3EDC046 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC046 TEST-05 OK ***\n");

     addr = &a6;
     if (a6!=*addr)
         printf(" *** M3EDC046 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC046 TEST-06 OK ***\n");
   }

   printf("*** M3EDC046 TEST ENDED ***\n");
}



 volatile const  int fe4a4;
 volatile const  int fe4a5;
 typedef const volatile  int fe4tp1;

void m3edc047()
{

   volatile const  int *addr,*addr2;

   auto volatile const int  a1,b1;
   register volatile const int  a2=0xff;
   static volatile const int  a3[2]={2,3};
   extern const volatile int  fe4a4;
   extern volatile const int  fe4a5;
   fe4tp1 a6;


   printf("*** M3EDC047 ** MK3 TEST FOR DCL ** STARTED ***\n");

   addr = &a1;  addr2 = &b1;
   if (a1!=*addr || b1!=*addr2)
       printf(" *** M3EDC047 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC047 TEST-01 OK ***\n");

   if (a2!=255)
       printf(" *** M3EDC047 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC047 TEST-02 OK ***\n");

   if (a3[0]!=2 || a3[1]!=3)
       printf(" *** M3EDC047 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC047 TEST-03 OK ***\n");

   if (fe4a4!=0)
       printf(" *** M3EDC047 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC047 TEST-04 OK ***\n");

   if (fe4a5!=0)
       printf(" *** M3EDC047 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC047 TEST-05 OK ***\n");

   addr = &a6;
   if (a6!=*addr)
       printf(" *** M3EDC047 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC047 TEST-06 OK ***\n");

   printf("*** M3EDC047 TEST ENDED ***\n");
}





 volatile const int  a4;
 volatile const int  a5;

void m3edc048()
{

   volatile const int  *addr,*addr2;

   printf("*** M3EDC048 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto volatile const int  a1;
     register volatile const int  a2=0xff,b2=0x00;
     static volatile const int  a3[2]={2,3};
     extern volatile const int  a4;
     extern volatile const int  a5;
     typedef const volatile int  type1;
     type1 a6,b6;


     addr = &a1;
     if (a1!=*addr)
         printf(" *** M3EDC048 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC048 TEST-01 OK ***\n");

     if (a2!=255 || b2!=0)
         printf(" *** M3EDC048 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC048 TEST-02 OK ***\n");

     if (a3[0]!=2 || a3[1]!=3)
         printf(" *** M3EDC048 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC048 TEST-03 OK ***\n");

     if (a4!=0)
         printf(" *** M3EDC048 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC048 TEST-04 OK ***\n");

     if (a5!=0)
         printf(" *** M3EDC048 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC048 TEST-05 OK ***\n");

     addr = &a6;  addr2 = &b6;
     if (a6!=*addr || b6!=*addr2)
         printf(" *** M3EDC048 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC048 TEST-06 OK ***\n");
   }

   printf("*** M3EDC048 TEST ENDED ***\n");
}


 extern const long int signed fe6a4[2]={7,8};
 volatile int signed long fe6a5;
 typedef const int long unsigned fe6tp1,fe6tp2;

void m3edc053()
{
   const signed long int *addrcs;
   const unsigned long int *addrcu;
   volatile signed long int *addrvs;
   volatile unsigned long int *addrvu;

   auto const signed long int a1=0;
   register volatile signed int long a2=0,b2=-1;
   static const long unsigned int a3[2]={0, 0};
   extern const long int signed fe6a4[2];
   extern volatile int signed long fe6a5;
   fe6tp1 a6=0;
   fe6tp2 a7=1;

   printf("*** M3EDC053 ** MK3 TEST FOR DCL ** STARTED ***\n");

   addrcs = &a1;
   if (a1!=*addrcs)
       printf(" *** M3EDC053 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC053 TEST-01 OK ***\n");

   if (a2 || b2!=-1)
       printf(" *** M3EDC053 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC053 TEST-02 OK ***\n");

   if (a3[0] || a3[1])
       printf(" *** M3EDC053 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC053 TEST-03 OK ***\n");

   if (fe6a4[0]!=7 || fe6a4[1]!=8)
       printf(" *** M3EDC053 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC053 TEST-04 OK ***\n");

   if (fe6a5!=0)
       printf(" *** M3EDC053 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC053 TEST-05 OK ***\n");

   addrcu = &a6;
   if (a6!=*addrcu || a7!=1)
       printf(" *** M3EDC053 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC053 TEST-06 OK ***\n");

   printf("*** M3EDC053 TEST ENDED ***\n");
}



 extern const long int signed fe8a4[2]={7,8};
 static const long unsigned int fe8a3[2];
 volatile int signed long fe8a5;

void m3edc054()
{
   const signed long int *addrcs;
   const unsigned long int *addrcu;
   volatile signed long int *addrvs;
   volatile unsigned long int *addrvu;

   printf("*** M3EDC054 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto const signed long int a1=0;
     register volatile signed int long a2=0,b2=-1;
     extern const long int signed fe8a4[2];
     extern volatile int signed long fe8a5;
     typedef const int long unsigned type1;
     type1  a6=0;

     addrcs = &a1;
     if (a1!=*addrcs)
         printf(" *** M3EDC054 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC054 TEST-01 OK ***\n");

     if (a2 || b2!=-1)
         printf(" *** M3EDC054 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC054 TEST-02 OK ***\n");

     if (fe8a3[0]!=0 || fe8a3[1]!=0)
         printf(" *** M3EDC054 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC054 TEST-03 OK ***\n");

     if (fe8a4[0]!=7 || fe8a4[1]!=8)
         printf(" *** M3EDC054 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC054 TEST-04 OK ***\n");

     if (fe8a5!=0)
         printf(" *** M3EDC054 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC054 TEST-05 OK ***\n");

     addrcu = &a6;
     if (a6!=*addrcu)
         printf(" *** M3EDC054 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC054 TEST-06 OK ***\n");
   }

   printf("*** M3EDC054 TEST ENDED ***\n");
}



 extern const short int signed fe9a4[2]={7,8};
 volatile int signed short fe9a5;
 typedef const int short unsigned fe9tp1,fe9tp2;

void m3edc055()
{
   const signed short int *addrcs;
   const unsigned short int *addrcu;
   volatile signed short int *addrvs;
   volatile unsigned short int *addrvu;

   auto const signed short int a1;
   register volatile signed int short a2=0,b2=-1;
   static const short unsigned int a3[2];
   extern const short int signed fe9a4[2];
   extern volatile int signed short fe9a5;
   fe9tp1 a6;
   fe9tp2 a7=1;

   printf("*** M3EDC055 ** MK3 TEST FOR DCL ** STARTED ***\n");

   addrcs = &a1;
   if (a1!=*addrcs)
       printf(" *** M3EDC055 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC055 TEST-01 OK ***\n");

   if (a2 || b2!=-1)
       printf(" *** M3EDC055 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC055 TEST-02 OK ***\n");

   if (a3[0] || a3[1])
       printf(" *** M3EDC055 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC055 TEST-03 OK ***\n");

   if (fe9a4[0]!=7 || fe9a4[1]!=8)
       printf(" *** M3EDC055 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC055 TEST-04 OK ***\n");

   if (fe9a5!=0)
       printf(" *** M3EDC055 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC055 TEST-05 OK ***\n");

   addrcu = &a6;
   if (a6!=*addrcu || a7!=1)
       printf(" *** M3EDC055 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC055 TEST-06 OK ***\n");

   printf("*** M3EDC055 TEST ENDED ***\n");
}



 extern const short int signed feaa4[2]={7,8};
 static const short unsigned int feaa3[2];
 volatile int signed short feaa5;

void m3edc056()
{
   const signed short int *addrcs;
   const unsigned short int *addrcu;
   volatile signed short int *addrvs;
   volatile unsigned short int *addrvu;

   printf("*** M3EDC056 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto const signed short int a1;
     register volatile signed int short a2=0,b2=-1;
     extern const short int signed feaa4[2];
     extern volatile int signed short feaa5;
     typedef const int short unsigned type1[2];
     type1  a6;

     addrcs = &a1;
     if (a1!=*addrcs)
         printf(" *** M3EDC056 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC056 TEST-01 OK ***\n");

     if (a2 || b2!=-1)
         printf(" *** M3EDC056 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC056 TEST-02 OK ***\n");

     if (feaa3[0]!=0 || feaa3[1]!=0)
         printf(" *** M3EDC056 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC056 TEST-03 OK ***\n");

     if (feaa4[0]!=7 || feaa4[1]!=8)
         printf(" *** M3EDC056 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC056 TEST-04 OK ***\n");

     if (feaa5!=0)
         printf(" *** M3EDC056 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC056 TEST-05 OK ***\n");

     addrcu = a6;
     if (a6[0]!=*addrcu)
         printf(" *** M3EDC056 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC056 TEST-06 OK ***\n");
   }

   printf("*** M3EDC056 TEST ENDED ***\n");
}



 volatile long unsigned feba4;
 const signed long feba5;
 typedef volatile unsigned long febtp1;

void m3edc059()
{

   const signed long *addrcs1,*addrcs2;
   const unsigned long *addrcu1,*addrcu2;
   volatile signed long *addrvs1,*addrvs2;
   volatile unsigned long *addrvu1,*addrvu2;

   auto const signed long a1=0;
   register volatile unsigned long a2=0,b2=1;
   static const long signed a3[2]={2,3};
   extern volatile long unsigned feba4;
   extern const signed long   feba5;
   febtp1 a6=0;


   printf("*** M3EDC059 ** MK3 TEST FOR DCL ** STARTED ***\n");

   addrcs1 = &a1;
   if (a1!=*addrcs1)
       printf(" *** M3EDC059 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC059 TEST-01 OK ***\n");

   if (a2!=0 || b2!=1)
       printf(" *** M3EDC059 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC059 TEST-02 OK ***\n");

   if (a3[0]!=2 || a3[1]!=3)
       printf(" *** M3EDC059 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC059 TEST-03 OK ***\n");

   if (feba4!=0)
       printf(" *** M3EDC059 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC059 TEST-04 OK ***\n");

   if (feba5!=0)
       printf(" *** M3EDC059 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC059 TEST-05 OK ***\n");

   addrvu1 = &a6;
   if (a6!=*addrvu1)
       printf(" *** M3EDC059 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC059 TEST-06 OK ***\n");

   printf("*** M3EDC059 TEST ENDED ***\n");
}



 volatile long unsigned feca4;
 const signed long feca5;

void m3edc060()
{

   const signed long *addrcs1,*addrcs2;
   const unsigned long *addrcu1,*addrcu2;
   volatile signed long *addrvs1,*addrvs2;
   volatile unsigned long *addrvu1,*addrvu2;

   printf("*** M3EDC060 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto const signed long a1=0;
     register volatile unsigned long a2=0,b2=1;
     static const long signed a3[2]={2,3};
     extern volatile long unsigned feca4;
     extern const signed long   feca5;
     typedef volatile unsigned long type1;
     type1  a6=0;


     addrcs1 = &a1;
     if (a1!=*addrcs1)
         printf(" *** M3EDC060 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC060 TEST-01 OK ***\n");

     if (a2!=0 || b2!=1)
         printf(" *** M3EDC060 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC060 TEST-02 OK ***\n");

     if (a3[0]!=2 || a3[1]!=3)
         printf(" *** M3EDC060 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC060 TEST-03 OK ***\n");

     if (feca4!=0)
         printf(" *** M3EDC060 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC060 TEST-04 OK ***\n");

     if (feca5!=0)
         printf(" *** M3EDC060 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC060 TEST-05 OK ***\n");

     addrvu1 = &a6;
     if (a6!=*addrvu1)
         printf(" *** M3EDC060 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC060 TEST-06 OK ***\n");
   }

   printf("*** M3EDC060 TEST ENDED ***\n");
}



  int *mp1fnc2(),mp1fnc4();
int  mp1fnc4(a)
      int *a ;
proc
      *a=1 ;
endproc
  void mp1fnc1(),mp1fnc3(),mp1fnc5();
 void mptest41()
  {
       mp1fnc1();
       mp1fnc3();
       mp1fnc5();
  }
  void mp1fnc1()
  {
       static int *(*eee)()=mp1fnc2;
       if(*(*eee)() == 10)
        printf("*** MPTEST41 CHECK01 OK ***\n");
       else
        printf("*** MPTEST41 CHECK01 NG ***\n");
  }
  int  *mp1fnc2()
  {
       static int ooo=0;
       ooo=ooo+10;
       return(&ooo);
  }
  void mp1fnc3()
  {
       int    ccc;
       static int aaa=20,(*bbb)()=mp1fnc4;
       static int *ddd=&aaa;
       *ddd=*ddd+30;
       if(*ddd==50)
        printf("*** MPTEST41 CHECK02 OK ***\n");
       else
        printf("*** MPTEST41 CHECK02 NG ***\n");
       ccc=(*bbb)(&ccc);
  }
  void mp1fnc5()
  {
       void   mp1fnc6();
       static int b=20,*e;
       e=&b;
       mp1fnc6(e);
  }
  void mp1fnc6(a)
       int *a;
  {
       int    c=5;
       c=c+*a;
       if(c==25)
        printf("*** MPTEST41 CHECK3 OK ***\n");
       else
        printf("*** MPTEST41 CHECK3 NG ***\n");
  }



      struct mp2taga block
        int    a1_(2) ;
        int    a2     ;
        int    a3     ;
                  end ;
      struct mp2tagb block
        unsigned int b1 ;
        unsigned int b2_(2) ;
        unsigned int b3 ;
                  end ;
      struct mp2tagc block
#if LONG64 || __x86_64__ || __aarch64__
        int c1   ;
        int c2   ;
        int c3_(2) ;
#else
        long int c1   ;
        long int c2   ;
        long int c3_(2) ;
#endif
                  end ;
      union  mp2tag block
        struct mp2taga a  ;
        struct mp2tagb b  ;
        struct mp2tagc c  ;
        int         x_(4) ;
                end       ;
 int mptest42() proc
      struct mp2taga *ap ;
      struct mp2tagb *bp ;
      struct mp2tagc *cp ;
      union  mp2tag abc ;
      int          i ;
      void   mpfnca(),mpfncb(),mpfncc() ;

      memset(&abc,'\0',sizeof(union mp2tag)) ;

      ap=&abc.a ;
      mpfnca(ap) ;
      for (i=0;i<4;i++)
       if (abc.x_(i) != 1) printf("*** NG %d\n",abc.x_(i)) ;

      bp=&abc.b ;
      mpfncb(bp) ;
      for (i=0;i<4;i++)
       if (abc.x_(i) != 2) printf("*** NG %d\n",abc.x_(i)) ;

      cp=&abc.c ;
      mpfncc(cp) ;
      for (i=0;i<4;i++)
       if (abc.x_(i) != 3) printf("*** NG %d\n",abc.x_(i)) ;

      for (i=0;i<4;i++)  {
       printf("*** %d\n",abc.x_(i)) ;
       if(abc.x_(i)==3) printf("*** MPTEST42 OK ***\n");
       }
      end
void  mpfnca(p)
      struct mp2taga *p ;
      proc
      p->a1_(0)+=1 ;
      p->a1_(1)+=1 ;
      p->a2    +=1 ;
      p->a3    +=1 ;
      return ;
      end
void  mpfncb(p)
      struct mp2tagb *p ;
      proc
      p->b1    +=1 ;
      p->b2_(0)+=1 ;
      p->b2_(1)+=1 ;
      p->b3    +=1 ;
      return ;
      end
void  mpfncc(p)
      struct mp2tagc *p ;
      proc
      p->c1    +=1 ;
      p->c2    +=1 ;
      p->c3_(0)+=1 ;
      p->c3_(1)+=1 ;
      return ;
      end




void scpa012()
{
    static char            cha0[6] = "12345";
    static char            cha1[6] = "54321";
    static char            cha2[6];
    int             i;

    printf("---- SCPA012 START ---- \n");

    for (i=0; i<5; i++) {
        switch (cha1[i]) {
            case '1':  memcpy(&cha2[0], &cha1[i], 1);
                       break;
            case '2':  memcpy(&cha2[1], &cha1[i], 1);
                       break;
            case '3':  memcpy(&cha2[2], &cha1[i], 1);
                       break;
            case '4':  memcpy(&cha2[3], &cha1[i], 1);
                       break;
            case '5':  memcpy(&cha2[4], &cha1[i], 1);
                       break;
            default :  printf (" --- ERROR ---\n");
                       break;
         }
    }
    cha2[5] = 0x00;

    if ( !memcmp(cha2, cha0, 6) )
        printf ("   ***  OK  *** \n");
    else {
        printf ("   ???  ng  ??? \n");
        printf ("     ans = %s\n", cha0);
        printf ("     cal = %s\n", cha2);
    }

    printf("---- SCPA012  END  ---- \n");
}



struct beatag1 {
    char             t1_ch1;
    short int        t1_si1;
};
struct beatag2 {
    struct beatag1   t2_st11;
    char             t2_cha1[10];
    long long int    t2_ll1;
};
union ubeatag1 {
    struct beatag1   ut1_st11;
    char             ut1_ch1;
    short int        ut1_si1;
    long int         ut1_li1;
    long long int    ut1_ll1;
};
struct beatag3 {
    union ubeatag1   t3_u11;
    struct beatag1   t3_st11;
    char             t3_ch1;
};

long int       be1cal[num], be1ans[num] = { 3, 33, 25, 9 };

void scpa013()
{
    struct beatag1         t1_st1 = { 1, 2 };
    struct beatag2         t2_st1 = { { 2, 3 }, "987", 4 };
    struct beatag3         t3_st1 = { { 3, 4 }, { 5, 6 }, 7 };
    union ubeatag1         ut1_u1 = { 4, 5 };
    int                    i, tmp;

    printf("---- SCPA013 START ---- \n");

    be1cal[0] = t1_st1.t1_ch1 + t1_st1.t1_si1;

    for (tmp=0, i=0; t2_st1.t2_cha1[i]!=NULL; i++)
         tmp += t2_st1.t2_cha1[i]-'0';
    be1cal[1] = t2_st1.t2_st11.t1_ch1 + t2_st1.t2_st11.t1_si1 +
               t2_st1.t2_ll1 + tmp;

    be1cal[2] = t3_st1.t3_u11.ut1_st11.t1_ch1 +
               t3_st1.t3_u11.ut1_st11.t1_si1 +
               t3_st1.t3_st11.t1_ch1 + t3_st1.t3_st11.t1_si1 +
               t3_st1.t3_ch1;

    be1cal[3] = ut1_u1.ut1_st11.t1_ch1 +
               ut1_u1.ut1_st11.t1_si1;

    for (i=0; i<num; i++) {
        if (be1cal[i] == be1ans[i])
            printf ("  %d: ***  OK  *** \n", i+1);
        else {
            printf ("  %d: ???  NG  ??? \n", i+1);
            printf ("       BE1ANS = %ld\n", be1ans[i]);
            printf ("       BE1CAL = %ld\n", be1cal[i]);
        }
    }

    printf("---- SCPA013  END  ---- \n");
}




struct bextag1 {
    signed char            t1_sch1 :1;
    unsigned char          t1_uch1 :1;
    signed short int       t1_ssi1 :1;
    unsigned short int     t1_usi1 :1;
    signed long int        t1_sli1 :1;
    unsigned long int      t1_uli1 :1;
};
struct bextag2 {
    signed char             t2_ch1 : 1;
    signed char             t2_ch2 : 3;
    signed char             t2_ch3 : 5;
    signed short int        t2_si1 : 1;
    signed short int        t2_si2 : 6;
    signed short int        t2_si3 :10;
    signed long int         t2_li1 : 1;
    signed long int         t2_li2 :12;
    signed long int         t2_li3 :20;
};

long int       bexcal[bexnum], bexans[bexnum] = { 0, 3 };

void scpa014()
{
    struct bextag1         t1_st1;
    struct bextag2         t2_st1;
    int                    i;

    printf("---- SCPA014 START ---- \n");

    t1_st1.t1_sch1 = 1;      t1_st1.t1_uch1 = 1;
    t1_st1.t1_ssi1 = 1;      t1_st1.t1_usi1 = 1;
    t1_st1.t1_sli1 = 1;      t1_st1.t1_uli1 = 1;

    bexcal[0] = t1_st1.t1_sch1 + t1_st1.t1_uch1 +
               t1_st1.t1_ssi1 + t1_st1.t1_usi1 +
               t1_st1.t1_sli1 + t1_st1.t1_uli1 ;

    t2_st1.t2_ch1 = 1;     t2_st1.t2_li1 = 1;
    t2_st1.t2_ch2 = 1;     t2_st1.t2_li2 = 1;
    t2_st1.t2_ch3 = 1;     t2_st1.t2_li3 = 1;
    t2_st1.t2_si1 = 1;  
    t2_st1.t2_si2 = 1;  
    t2_st1.t2_si3 = 1;  

    bexcal[1] = t2_st1.t2_ch1 + t2_st1.t2_li1 +
               t2_st1.t2_ch2 + t2_st1.t2_li2 +
               t2_st1.t2_ch3 + t2_st1.t2_li3 +
               t2_st1.t2_si1 +
               t2_st1.t2_si2 +
               t2_st1.t2_si3 ;

    for (i=0; i<bexnum; i++) {
        if (bexcal[i] == bexans[i])
            printf ("  %d: ***  OK  *** \n", i+1);
        else {
            printf ("  %d: ???  NG  ??? \n", i+1);
            printf ("       BEXANS = %ld\n", bexans[i]);
            printf ("       BEXCAL = %ld\n", bexcal[i]);
        }
    }

    printf("---- SCPA014  END  ---- \n");
}
