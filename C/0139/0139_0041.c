#include <stdlib.h>
#include <math.h>
#include <string.h>
  
 
 
 
 
 
 



#include<stdio.h>
int be1sub (void);
int mpfunc1 (int d);
int fafnc5 (void);
int fafnc4 (void);
int fafnc3 (void);
int fafnc2 (void);
int fafnc1 (void);
int m3gptr03 (void);
int scrpz11 (void);
int mptest13 (void);
int m3mptr01 (void);
int scrsk18 (void);
int m3grtn06 (void);
int m3mpsi04 (void);
int m3gswh13 (void);
int scrna14 (void);
   void errcheck();
   int *aa[5],b,func1(int b),cc,err=0;
int main (void)
{

   printf("*** \n\n");

   scrna14() ;   
   m3gswh13();   
   m3mpsi04();   
   m3grtn06();   
   scrsk18() ;   
   m3mptr01();   
   mptest13();   
   scrpz11() ;   
   m3gptr03();   

   printf("\n*** \n");

exit (0);
   }






 
 
 


int m3gswh13 (void)  {

   struct f1tg {
              char  c1  :1;
              char  c2  :2;
              char  c3  :3;
              char  c4  :4;
              char  c5  :5;
              char  c6  :6;
              char  c7  :7;
              char  c8  :8;
     unsigned char  uc1 :1;
     unsigned char  uc2 :2;
     unsigned char  uc3 :3;
     unsigned char  uc4 :4;
     unsigned char  uc5 :5;
     unsigned char  uc6 :6;
     unsigned char  uc7 :7;
     unsigned char  uc8 :8;
   } st1,*st2=&st1;

   int a1,a2,a3,a4,a5,a6,a7,a8;
   int b1,b2,b3,b4,b5,b6,b7,b8;

   st2->c1=1,st2->c2=2,st2->c3=3,st2->c4=4;
   st2->c5=5,st2->c6=6,st2->c7=10,st2->c8=20;

   st2->uc1=1,st2->uc2=2,st2->uc3=3,st2->uc4=4;
   st2->uc5=5,st2->uc6=6,st2->uc7=10,st2->uc8=20;

  printf("M3GSWH13 TEST-START \n");

#if defined (__GNUC__)
  printf("M3GSWH13 1-1 TEST -O  K- \n");
#else
   switch(st2->c1)  {
     case (char)5:
       a1=5;
       break;
     case (char)1:
     case (char)10:
       a1=10;
       break;
     case (char)20:
       a1=20;
     default:
       a1=0;
  }
  if(a1==10)
    printf("M3GSWH13 1-1 TEST -O  K- \n");
  else
    printf("M3GSWH13 1-1 TEST - NG - \n");
#endif

   switch(st2->c2)  {
     case (unsigned char)5:
       a2=5;
       break;
     case (unsigned char)1:
     case (unsigned char)10:
       a2=10;
       break;
     case (unsigned char)20:
       a2=20;
     default:
       a2=0;
  }
  if(a2==0)
    printf("M3GSWH13 1-2 TEST -O  K- \n");
  else
    printf("M3GSWH13 1-2 TEST - NG - \n");

   switch(st2->c3)  {
     case (short)3:
       a3=3;
       break;
     case (short)1:
     case (short)10:
       a3=10;
       break;
     case (short)20:
       a3=20;
     default:
       a3=0;
  }
  if(a3==3)
    printf("M3GSWH13 1-3 TEST -O  K- \n");
  else
    printf("M3GSWH13 1-3 TEST - NG - \n");

   switch(st2->c4)  {
     case (unsigned short)5:
       a4=5;
       break;
     case (unsigned short)1:
     case (unsigned short)10:
       a4=10;
       break;
     case (unsigned short)20:
       a4=20;
     default:
       a4=0;
  }
  if(a4==0)
    printf("M3GSWH13 1-4 TEST -O  K- \n");
  else
    printf("M3GSWH13 1-4 TEST - NG - \n");

   switch(st2->c5)  {
     case 5:
       a5=5;
       break;
     case 1:
     case 10:
       a5=10;
       break;
     case 20:
       a5=20;
     default:
       a5=0;
  }
  if(a5==5)
    printf("M3GSWH13 1-5 TEST -O  K- \n");
  else
    printf("M3GSWH13 1-5 TEST - NG - \n");

   switch(st2->c6)  {
     case (unsigned int)5:
       a6=5;
       break;
     case (unsigned int)1:
     case (unsigned int)10:
       a6=10;
       break;
     case (unsigned int)20:
       a6=20;
     default:
       a6=0;
  }
  if(a6==0)
    printf("M3GSWH13 1-6 TEST -O  K- \n");
  else
    printf("M3GSWH13 1-6 TEST - NG - \n");

   switch(st2->c7)  {
     case (long int)5:
       a7=5;
       break;
     case (long int)1:
     case (long int)10:
       a7=10;
       break;
     case (long int)20:
       a7=20;
     default:
       a7=0;
  }
  if(a7==10)
    printf("M3GSWH13 1-7 TEST -O  K- \n");
  else
    printf("M3GSWH13 1-7 TEST - NG - \n");

   switch(st2->c8)  {
     case (unsigned long int)5:
       a8=5;
       break;
     case (unsigned long int)1:
     case (unsigned long int)10:
       a8=10;
       break;
     case (unsigned long int)20:
       a8=20;
     default:
       a8=0;
  }
  if(a8==0)
    printf("M3GSWH13 1-8 TEST -O  K- \n");
  else
    printf("M3GSWH13 1-8 TEST - NG - \n");

   switch(st2->uc1)  {
     case (char)5:
       b1=5;
       break;
     case (char)1:
     case (char)10:
       b1=10;
       break;
     case (char)20:
       b1=20;
     default:
       b1=0;
  }
  if(b1==10)
    printf("M3GSWH13 2-1 TEST -O  K- \n");
  else
    printf("M3GSWH13 2-1 TEST - NG - \n");

   switch(st2->uc2)  {
     case (unsigned char)5:
       b2=5;
       break;
     case (unsigned char)1:
     case (unsigned char)10:
       b2=10;
       break;
     case (unsigned char)20:
       b2=20;
     default:
       b2=0;
  }
  if(b2==0)
    printf("M3GSWH13 2-2 TEST -O  K- \n");
  else
    printf("M3GSWH13 2-2 TEST - NG - \n");

   switch(st2->uc3)  {
     case (short)3:
       b3=3;
       break;
     case (short)1:
     case (short)10:
       b3=10;
       break;
     case (short)20:
       b3=20;
     default:
       b3=0;
  }
  if(b3==3)
    printf("M3GSWH13 2-3 TEST -O  K- \n");
  else
    printf("M3GSWH13 2-3 TEST - NG - \n");

   switch(st2->uc4)  {
     case (unsigned short)5:
       b4=5;
       break;
     case (unsigned short)1:
     case (unsigned short)10:
       b4=10;
       break;
     case (unsigned short)20:
       b4=20;
     default:
       b4=0;
  }
  if(b4==0)
    printf("M3GSWH13 2-4 TEST -O  K- \n");
  else
    printf("M3GSWH13 2-4 TEST - NG - \n");

   switch(st2->uc5)  {
     case 5:
       b5=5;
       break;
     case 1:
     case 10:
       b5=10;
       break;
     case 20:
       b5=20;
     default:
       b5=0;
  }
  if(b5==5)
    printf("M3GSWH13 2-5 TEST -O  K- \n");
  else
    printf("M3GSWH13 2-5 TEST - NG - \n");

   switch(st2->uc6)  {
     case (unsigned int)5:
       b6=5;
       break;
     case (unsigned int)1:
     case (unsigned int)10:
       b6=10;
       break;
     case (unsigned int)20:
       b6=20;
     default:
       b6=0;
  }
  if(b6==0)
    printf("M3GSWH13 2-6 TEST -O  K- \n");
  else
    printf("M3GSWH13 2-6 TEST - NG - \n");

   switch(st2->uc7)  {
     case (long int)5:
       b7=5;
       break;
     case (long int)1:
     case (long int)10:
       b7=10;
       break;
     case (long int)20:
       b7=20;
     default:
       b7=0;
  }
  if(b7==10)
    printf("M3GSWH13 2-7 TEST -O  K- \n");
  else
    printf("M3GSWH13 2-7 TEST - NG - \n");

   switch(st2->uc8)  {
     case (unsigned long int)5:
       b8=5;
       break;
     case (unsigned long int)1:
     case (unsigned long int)10:
       b8=10;
       break;
     case (unsigned long int)20:
       b8=20;
     default:
       b8=0;
  }
  if(b8==0)
    printf("M3GSWH13 2-8 TEST -O  K- \n");
  else
    printf("M3GSWH13 2-8 TEST - NG - \n");

  printf("M3GSWH13 TEST-END \n");

}

 
 
 



     static struct f2tg {
        char  sc1;
        char  sc2;
        char  sc3;
        char  sc4;
       short  ss1;
       short  ss2;
       short  ss3;
       short  ss4;
         int  si1;
         int  si2;
         int  si3;
         int  si4;
        long  sl1;
        long  sl2;
        long  sl3;
        long  sl4;
    } f2st[2];

int m3grtn06 (void)  {

     int  a1,a2,a3,a4,b1,b2,b3,b4;
     int  c1,c2,c3,c4,d1,d2,d3,d4;

     unsigned char   f2f1(),f2f2(),f2f3(),f2f4();
     unsigned short  f2f5(),f2f6(),f2f7(),f2f8();
     unsigned int    f2f9(),f2f10(),f2f11(),f2f12();
     unsigned long   f2f13(),f2f14(),f2f15(),f2f16();


    f2st[0].sc1=1,f2st[0].sc2=2,f2st[0].sc3=3,f2st[0].sc4=4;
    f2st[0].ss1=5,f2st[0].ss2=6,f2st[0].ss3=7,f2st[0].ss4=8;
    f2st[1].si1=9,f2st[1].si2=10,f2st[1].si3=11,f2st[1].si4=12;
    f2st[1].sl1=13,f2st[1].sl2=14,f2st[1].sl3=15,f2st[1].sl4=16;

  printf("M3GRTN06 TEST-START \n");

     a1=f2f1();
     if(a1==1)
        printf("M3GRTN06 1-1 TEST -O  K- \n");
     else
        printf("M3GRTN06 1-1 TEST - NG - \n");

     a2=f2f2();
     if(a2==5)
        printf("M3GRTN06 1-2 TEST -O  K- \n");
     else
        printf("M3GRTN06 1-2 TEST - NG - \n");

     a3=f2f3();
     if(a3==9)
        printf("M3GRTN06 1-3 TEST -O  K- \n");
     else
        printf("M3GRTN06 1-3 TEST - NG - \n");

     a4=f2f4();
     if(a4==13)
        printf("M3GRTN06 1-4 TEST -O  K- \n");
     else
        printf("M3GRTN06 1-4 TEST - NG - \n");

     b1=f2f5();
     if(b1==2)
        printf("M3GRTN06 2-1 TEST -O  K- \n");
     else
        printf("M3GRTN06 2-1 TEST - NG - \n");

     b2=f2f6();
     if(b2==6)
        printf("M3GRTN06 2-2 TEST -O  K- \n");
     else
        printf("M3GRTN06 2-2 TEST - NG - \n");

     b3=f2f7();
     if(b3==10)
        printf("M3GRTN06 2-3 TEST -O  K- \n");
     else
        printf("M3GRTN06 2-3 TEST - NG - \n");

     b4=f2f8();
     if(b4==14)
        printf("M3GRTN06 2-4 TEST -O  K- \n");
     else
        printf("M3GRTN06 2-4 TEST - NG - \n");

     c1=f2f9();
     if(c1==3)
        printf("M3GRTN06 3-1 TEST -O  K- \n");
     else
        printf("M3GRTN06 3-1 TEST - NG - \n");

     c2=f2f10();
     if(c2==7)
        printf("M3GRTN06 3-2 TEST -O  K- \n");
     else
        printf("M3GRTN06 3-2 TEST - NG - \n");

     c3=f2f11();
     if(c3==11)
        printf("M3GRTN06 3-3 TEST -O  K- \n");
     else
        printf("M3GRTN06 3-3 TEST - NG - \n");

     c4=f2f12();
     if(c4==15)
        printf("M3GRTN06 3-4 TEST -O  K- \n");
     else
        printf("M3GRTN06 3-4 TEST - NG - \n");

     d1=f2f13();
     if(d1==4)
        printf("M3GRTN06 4-1 TEST -O  K- \n");
     else
        printf("M3GRTN06 4-1 TEST - NG - \n");

     d2=f2f14();
     if(d2==8)
        printf("M3GRTN06 4-2 TEST -O  K- \n");
     else
        printf("M3GRTN06 4-2 TEST - NG - \n");

     d3=f2f15();
     if(d3==12)
        printf("M3GRTN06 4-3 TEST -O  K- \n");
     else
        printf("M3GRTN06 4-3 TEST - NG - \n");

     d4=f2f16();
     if(d4==16)
        printf("M3GRTN06 4-4 TEST -O  K- \n");
     else
        printf("M3GRTN06 4-4 TEST - NG - \n");

  printf("M3GRTN06 TEST-END \n");
}

  unsigned char 
f2f1 (void) {
        return(f2st[0].sc1);
  }

  unsigned char 
f2f2 (void) {
        return(f2st[0].ss1);
  }

  unsigned char 
f2f3 (void) {
        return(f2st[1].si1);
  }

  unsigned char 
f2f4 (void) {
        return(f2st[1].sl1);
  }

  unsigned short 
f2f5 (void) {
        return(f2st[0].sc2);
  }

  unsigned short 
f2f6 (void) {
        return(f2st[0].ss2);
  }

  unsigned short 
f2f7 (void) {
        return(f2st[1].si2);
  }

  unsigned short 
f2f8 (void) {
        return(f2st[1].sl2);
  }

  unsigned int f2f9 (void) {
        return(f2st[0].sc3);
  }

  unsigned int f2f10 (void) {
        return(f2st[0].ss3);
  }

  unsigned int f2f11 (void) {
        return(f2st[1].si3);
  }

  unsigned int f2f12 (void) {
        return(f2st[1].sl3);
  }

  unsigned long 
f2f13 (void) {
        return(f2st[0].sc4);
  }

  unsigned long 
f2f14 (void) {
        return(f2st[0].ss4);
  }

  unsigned long 
f2f15 (void) {
        return(f2st[1].si4);
  }

  unsigned long 
f2f16 (void) {
        return(f2st[1].sl4);
  }

 
 
 


int m3gptr03 (void)
{
  printf("M3GPTR03 START\n");
  fafnc1();                           
  fafnc2();                           
  fafnc3();                           
  fafnc4();                           
  fafnc5();                           
  printf("M3GPTR03 END  \n");
}
int fafnc1 (void)
{
  static  char a[14] ={0,0,0,0,0,
                          0,0,0,0,0,
                          0,0,0,0 };
  static char  *ap[14] ={
     a+0-0    ,                  
     a+2-1    ,                  
     a-1+3     ,                 
     a+(1+2)  ,                  
     a+(5-1)  ,                  
    (a+10)-(1+4)   ,             
    (a+10)-(5-1)   ,             
   (&a[7])+0-0       ,         
   (&a[7])+1-0       ,         
   (&a[7])-0+1+1     ,         
   (&a[7])+(0+2+1)   ,         
   (&a[10])+(1*5-4)   ,        
   (&a[11])+(2/2)     ,        
   (&a[13])-(1*2-2)            
   } ;
  if ( *(ap[0]) !=0 )
            printf("FAFNC1  NO.0 NG  VALUE=%d\n",*(ap[0]) );
  if ( *(ap[1]) !=0 )
            printf("FAFNC1  NO.1 NG  VALUE=%d\n",*(ap[1]) );
  if ( *(ap[2]) !=0 )
            printf("FAFNC1  NO.2 NG  VALUE=%d\n",*(ap[2]) );
  if ( *(ap[3]) !=0 )
            printf("FAFNC1  NO.3 NG  VALUE=%d\n",*(ap[3]) );
  if ( *(ap[4]) !=0 )
            printf("FAFNC1  NO.4 NG  VALUE=%d\n",*(ap[4]) );
  if ( *(ap[5]) !=0 )
            printf("FAFNC1  NO.5 NG  VALUE=%d\n",*(ap[5]) );
  if ( *(ap[6]) !=0 )
            printf("FAFNC1  NO.6 NG  VALUE=%d\n",*(ap[6]) );
  if ( *(ap[7]) !=0 )
            printf("FAFNC1  NO.7 NG  VALUE=%d\n",*(ap[7]) );
  if ( *(ap[8]) !=0 )
            printf("FAFNC1  NO.8 NG  VALUE=%d\n",*(ap[8]) );
  if ( *(ap[9]) !=0 )
            printf("FAFNC1  NO.9 NG  VALUE=%d\n",*(ap[9]) );
  if ( *(ap[10]) !=0 )
            printf("FAFNC1  NO.10 NG  VALUE=%d\n",*(ap[10]) );
  if ( *(ap[11]) !=0 )
            printf("FAFNC1  NO.11 NG  VALUE=%d\n",*(ap[11]) );
  if ( *(ap[12]) !=0 )
            printf("FAFNC1  NO.12 NG  VALUE=%d\n",*(ap[12]) );
  if ( *(ap[13]) !=0 )
            printf("FAFNC1  NO.13 NG  VALUE=%d\n",*(ap[13]) );
}
int fafnc2 (void)
{
  static    signed int a[14] ={0,0,0,0,0,
                                0,0,0,0,0,
                                0,0,0,0   };
  static   signed int  *ap[14] ={
     a+0-0    ,                  
     a+2-1    ,                  
     a-1+3     ,                 
     a+(1+2)  ,                  
     a+(5-1)  ,                  
    (a+10)-(1+4)   ,             
    (a+10)-(5-1)   ,             
   (&a[7])+0-0       ,         
   (&a[7])+1-0       ,         
   (&a[7])-0+1+1     ,         
   (&a[7])+(0+2+1)   ,         
   (&a[10])+(1*5-4)   ,        
   (&a[11])+(2/2)     ,        
   (&a[13])-(1*2-2)            
   } ;
  if ( *(ap[0]) !=0 )
            printf("FAFNC2  NO.0 NG  VALUE=%d\n",*(ap[0]) );
  if ( *(ap[1]) !=0 )
            printf("FAFNC2  NO.1 NG  VALUE=%d\n",*(ap[1]) );
  if ( *(ap[2]) !=0 )
            printf("FAFNC2  NO.2 NG  VALUE=%d\n",*(ap[2]) );
  if ( *(ap[3]) !=0 )
            printf("FAFNC2  NO.3 NG  VALUE=%d\n",*(ap[3]) );
  if ( *(ap[4]) !=0 )
            printf("FAFNC2  NO.4 NG  VALUE=%d\n",*(ap[4]) );
  if ( *(ap[5]) !=0 )
            printf("FAFNC2  NO.5 NG  VALUE=%d\n",*(ap[5]) );
  if ( *(ap[6]) !=0 )
            printf("FAFNC2  NO.6 NG  VALUE=%d\n",*(ap[6]) );
  if ( *(ap[7]) !=0 )
            printf("FAFNC2  NO.7 NG  VALUE=%d\n",*(ap[7]) );
  if ( *(ap[8]) !=0 )
            printf("FAFNC2  NO.8 NG  VALUE=%d\n",*(ap[8]) );
  if ( *(ap[9]) !=0 )
            printf("FAFNC2  NO.9 NG  VALUE=%d\n",*(ap[9]) );
  if ( *(ap[10]) !=0 )
            printf("FAFNC2  NO.10 NG  VALUE=%d\n",*(ap[10]) );
  if ( *(ap[11]) !=0 )
            printf("FAFNC2  NO.11 NG  VALUE=%d\n",*(ap[11]) );
  if ( *(ap[12]) !=0 )
            printf("FAFNC2  NO.12 NG  VALUE=%d\n",*(ap[12]) );
  if ( *(ap[13]) !=0 )
            printf("FAFNC2  NO.13 NG  VALUE=%d\n",*(ap[13]) );
}
int fafnc3 (void)
{
  static  unsigned long int a[14] ={0,0,0,0,0,
                                       0,0,0,0,0,
                                       0,0,0,0   };
  static unsigned long int  *ap[14] ={
     a+0-0    ,                  
     a+2-1    ,                  
     a-1+3     ,                 
     a+(1+2)  ,                  
     a+(5-1)  ,                  
    (a+10)-(1+4)   ,             
    (a+10)-(5-1)   ,             
   (&a[7])+0-0       ,         
   (&a[7])+1-0       ,         
   (&a[7])-0+1+1     ,         
   (&a[7])+(0+2+1)   ,         
   (&a[10])+(1*5-4)   ,        
   (&a[11])+(2/2)     ,        
   (&a[13])-(1*2-2)            
   } ;
  if ( *(ap[0]) !=0 )
            printf("FAFNC3  NO.0 NG  VALUE=%d\n",*(ap[0]) );
  if ( *(ap[1]) !=0 )
            printf("FAFNC3  NO.1 NG  VALUE=%d\n",*(ap[1]) );
  if ( *(ap[2]) !=0 )
            printf("FAFNC3  NO.2 NG  VALUE=%d\n",*(ap[2]) );
  if ( *(ap[3]) !=0 )
            printf("FAFNC3  NO.3 NG  VALUE=%d\n",*(ap[3]) );
  if ( *(ap[4]) !=0 )
            printf("FAFNC3  NO.4 NG  VALUE=%d\n",*(ap[4]) );
  if ( *(ap[5]) !=0 )
            printf("FAFNC3  NO.5 NG  VALUE=%d\n",*(ap[5]) );
  if ( *(ap[6]) !=0 )
            printf("FAFNC3  NO.6 NG  VALUE=%d\n",*(ap[6]) );
  if ( *(ap[7]) !=0 )
            printf("FAFNC3  NO.7 NG  VALUE=%d\n",*(ap[7]) );
  if ( *(ap[8]) !=0 )
            printf("FAFNC3  NO.8 NG  VALUE=%d\n",*(ap[8]) );
  if ( *(ap[9]) !=0 )
            printf("FAFNC3  NO.9 NG  VALUE=%d\n",*(ap[9]) );
  if ( *(ap[10]) !=0 )
            printf("FAFNC3  NO.10 NG  VALUE=%d\n",*(ap[10]) );
  if ( *(ap[11]) !=0 )
            printf("FAFNC3  NO.11 NG  VALUE=%d\n",*(ap[11]) );
  if ( *(ap[12]) !=0 )
            printf("FAFNC3  NO.12 NG  VALUE=%d\n",*(ap[12]) );
  if ( *(ap[13]) !=0 )
            printf("FAFNC3  NO.13 NG  VALUE=%d\n",*(ap[13]) );
}
int fafnc4 (void)
{
  static struct sttag
  { int a ;       } st[14]=
                     {   0,0,0,0,0,
                          0,0,0,0,0,
                          0,0,0,0   };
  static struct sttag *stp[14]= {
    st+0-0                 ,        
    st+2-1                 ,        
    st-1+3                 ,        
    st+(1+2)               ,        
    st+(5-1)               ,        
   (st+10)-(1+4)          ,        
   (st+10)-(5-1)          ,        
   (&st[7])+0-0         ,        
   (&st[7])+2-1         ,        
   (&st[7])-0+1+1       ,        
   (&st[10])+(0+1-1)    ,        
   (&st[10])+(1*4-3)    ,        
   (&st[10])+(6-4*1)    ,        
   (&st[13])-(1*2-2)             
  };
  if (  (*(stp[0])).a != 0 )
    printf("FAFNC4  NO.0 NG  VALUE=%d\n",(*(stp[0])).a) ;
  if (  (*(stp[1])).a != 0 )
    printf("FAFNC4  NO.1 NG  VALUE=%d\n",(*(stp[1])).a) ;
  if (  (*(stp[2])).a != 0 )
    printf("FAFNC4  NO.2 NG  VALUE=%d\n",(*(stp[2])).a) ;
  if (  (*(stp[3])).a != 0 )
    printf("FAFNC4  NO.3 NG  VALUE=%d\n",(*(stp[3])).a) ;
  if (  (*(stp[4])).a != 0 )
    printf("FAFNC4  NO.4 NG  VALUE=%d\n",(*(stp[4])).a) ;
  if (  (*(stp[5])).a != 0 )
    printf("FAFNC4  NO.5 NG  VALUE=%d\n",(*(stp[5])).a) ;
  if (  (*(stp[6])).a != 0 )
    printf("FAFNC4  NO.6 NG  VALUE=%d\n",(*(stp[6])).a) ;
  if (  (*(stp[7])).a != 0 )
    printf("FAFNC4  NO.7 NG  VALUE=%d\n",(*(stp[7])).a) ;
  if (  (*(stp[8])).a != 0 )
    printf("FAFNC4  NO.8 NG  VALUE=%d\n",(*(stp[8])).a) ;
  if (  (*(stp[9])).a != 0 )
    printf("FAFNC4  NO.9 NG  VALUE=%d\n",(*(stp[9])).a) ;
  if (  (*(stp[10])).a != 0 )
    printf("FAFNC4  NO.10 NG  VALUE=%d\n",(*(stp[10])).a) ;
  if (  (*(stp[11])).a != 0 )
    printf("FAFNC4  NO.11 NG  VALUE=%d\n",(*(stp[11])).a) ;
  if (  (*(stp[12])).a != 0 )
    printf("FAFNC4  NO.12 NG  VALUE=%d\n",(*(stp[12])).a) ;
  if (  (*(stp[13])).a != 0 )
    printf("FAFNC4  NO.13 NG  VALUE=%d\n",(*(stp[13])).a) ;
}
int fafnc5 (void)
{
  static union  untag
  { int a ;       } un[14]=
                     {   0,0,0,0,0,
                          0,0,0,0,0,
                          0,0,0,0   };
  static union  untag *unp[14]= {
    un+0-0                 ,        
    un+2-1                 ,        
    un-1+3                 ,        
    un+(1+2)               ,        
    un+(5-1)               ,        
   (un+10)-(1+4)          ,         
   (un+10)-(5-1)          ,         
   (&un[7])+0-0         ,         
   (&un[7])+2-1         ,         
   (&un[7])-0+1+1       ,         
   (&un[10])+(0+1-1)    ,         
   (&un[10])+(1*4-3)    ,         
   (&un[10])+(6-4*1)    ,         
   (&un[13])-(1*2-2)              
  };
  if (  (*(unp[0])).a != 0 )
    printf("FAFNC5  NO.0 NG  VALUE=%d\n",(*(unp[0])).a) ;
  if (  (*(unp[1])).a != 0 )
    printf("FAFNC5  NO.1 NG  VALUE=%d\n",(*(unp[1])).a) ;
  if (  (*(unp[2])).a != 0 )
    printf("FAFNC5  NO.2 NG  VALUE=%d\n",(*(unp[2])).a) ;
  if (  (*(unp[3])).a != 0 )
    printf("FAFNC5  NO.3 NG  VALUE=%d\n",(*(unp[3])).a) ;
  if (  (*(unp[4])).a != 0 )
    printf("FAFNC5  NO.4 NG  VALUE=%d\n",(*(unp[4])).a) ;
  if (  (*(unp[5])).a != 0 )
    printf("FAFNC5  NO.5 NG  VALUE=%d\n",(*(unp[5])).a) ;
  if (  (*(unp[6])).a != 0 )
    printf("FAFNC5  NO.6 NG  VALUE=%d\n",(*(unp[6])).a) ;
  if (  (*(unp[7])).a != 0 )
    printf("FAFNC5  NO.7 NG  VALUE=%d\n",(*(unp[7])).a) ;
  if (  (*(unp[8])).a != 0 )
    printf("FAFNC5  NO.8 NG  VALUE=%d\n",(*(unp[8])).a) ;
  if (  (*(unp[9])).a != 0 )
    printf("FAFNC5  NO.9 NG  VALUE=%d\n",(*(unp[9])).a) ;
  if (  (*(unp[10])).a != 0 )
    printf("FAFNC5  NO.10 NG  VALUE=%d\n",(*(unp[10])).a) ;
  if (  (*(unp[11])).a != 0 )
    printf("FAFNC5  NO.11 NG  VALUE=%d\n",(*(unp[11])).a) ;
  if (  (*(unp[12])).a != 0 )
    printf("FAFNC5  NO.12 NG  VALUE=%d\n",(*(unp[12])).a) ;
  if (  (*(unp[13])).a != 0 )
    printf("FAFNC5  NO.13 NG  VALUE=%d\n",(*(unp[13])).a) ;
}



 
 
 

int m3mptr01 (void)
{
  int flag=0;
  int i=0;
  int c=3;
  int hs=3;
  while(1){
    if(i==2){
      flag=1;
      goto switches ;
    }
    i++;
  }
  switches:;
  flag++;
  switch(c){
    case 0:break;
    case 1:
           break;
    case 2:
           break;
    case 3:
           flag++;
           break;
    }
  if(flag==3)
    printf("***** OK *****\n");
  else
    printf("***** NG *****\n");
}


 
 
 

int mptest13 (void)
     {
      void mperck();
        printf("\n*** MPTEST13 -- START ***\n") ;
        b=400 ;
        aa[0]=&b ;
        mpfunc1(b);
        cc=*aa[0] ;
        if(cc==400) printf("*** OK C = %d ***\n",cc) ;
        else  {   printf("*** NG C = %d ***\n",cc) ;
                   err++;
              }
        mperck();
        printf("\n*** MPTEST13 -- END   ***\n") ;
     }
   int mpfunc1 (int d)
     {
        int e ;
        d=d+200;
        aa[1]=&d ;
        e=*aa[1] ;
        if(e==600) printf("*** OK E = %d ***\n",e) ;
        else  {   printf("*** NG E = %d ***\n",e) ;
                   err++;
              }
     }
 void mperck (void)
 {
      if(err==0)
       {
         printf("***    OK         ***\n");
       }
      else
       {
         printf("***    NG         ***\n");
       }
 }


 
 
 


  int m3mpsi04 (void){
 struct m2tag {
  int mema;
  int memb;
  char memc[4];
  };
 struct m2tag var1,var2,var3,*pint;
 int aa[10];
 int x,y;
 pint=&var3;
 pint->mema=5;
 pint->memb=15;
 aa[4]=5;
 aa[pint->mema]=3;
 pint=&var2;
 pint->memb=4;
 x=pint->memb;
 pint->memb=aa[4];
 x=pint->memb;
 pint=&var3;
 y=x;
 aa[1]=y;
 pint=&var3;
 pint->memc[1]=y+pint->memb;
 if (pint->memc[1]==20) printf("M3MPSI04 OK\n");
 else
 printf("M3MPSI04 NG\n");
 }



 
 
 


int scrna14 (void)
{
  int xxa,b;
  volatile int  t1,t2,t3,k,l;

  for(xxa=0;xxa<5;xxa++)
    {
      t1 = xxa;
      t2 = t1+xxa;
      t3 = t2+t1;
    }
  l = t1 + t2 + t3;
  for(xxa=0,k=0;xxa<5;xxa++)
    {
     for(b=0;b<5;b++)
       {
        t1=xxa+b;
        t2=t1+b;
       }
     t3 = t1+t2+l;
    }
    k = t3+l;
    if( k == 68)
           printf(" OK \n");
    else
           printf(" NG ");
 }

 
 
 


#ifdef v10

#define pr(format,value) printf("value = %format ",(value))
#define nl putchar('\n')
#define print1(f,x1) pr(f,x1); nl
#define print2(f,x1,x2)  pr(f,x1); print1(f,x2)
#define print3(f,x1,x2,x3)  pr(f,x1); print2(f,x2,x3)
#define print4(f,x1,x2,x3,x4)  pr(f,x1); print3(f,x2,x3,x4)

int sclpz11 (void)
{
      int x,y,z;

      x=y=0;
      while(y<10) ++y; x += y;
      print2(d,x,y);

      x=y=0;
      while(y<10) x += ++y;
      print2(d,x,y);

      y=1;
      while(y<10) {
        x = y++; z = ++y;
      }
      print3(d,x,y,z);

      for(y=1;y<10;y++) x=y;
      print2(d,x,y);

      for(y=1;(x=y)<10;y++) ;
      print2(d,x,y);

      for(x=0,y=1000;y>1;x++,y/=10 ) {
        print2(d,x,y);
      }
}
#else

static char *data[] = {
"x = 10",
"y = 10",
"x = 55",
"y = 10",
"x = 9",
"y = 11",
"z = 11",
"x = 9",
"y = 10",
"x = 10",
"y = 10",
"x = 0",
"y = 1000",
"x = 1",
"y = 100",
"x = 2",
"y = 10"
};
int check (char *p)
{
    static int i=0;
    if( strcmp(data[i++],p) != 0 ) puts(" NG ");
}
#define pr(format,value) \
{char buf[10];sprintf(buf,#value" = %"#format,(value));check(buf);}
#define nl printf("\n")
#define print1(f,x1) pr(f,x1); nl
#define print2(f,x1,x2)  pr(f,x1); print1(f,x2)
#define print3(f,x1,x2,x3)  pr(f,x1); print2(f,x2,x3)
#define print4(f,x1,x2,x3,x4)  pr(f,x1); print3(f,x2,x3,x4)

int scrpz11 (void)
{
      int x,y,z;

      x=y=0;
      while(y<10) ++y; x += y;
      print2(d,x,y);

      x=y=0;
      while(y<10) x += ++y;
      print2(d,x,y);

      y=1;
      while(y<10) {
        x = y++; z = ++y;
      }
      print3(d,x,y,z);

      for(y=1;y<10;y++) x=y;
      print2(d,x,y);

      for(y=1;(x=y)<10;y++) ;
      print2(d,x,y);

      for(x=0,y=1000;y>1;x++,y/=10 ) {
        print2(d,x,y);
      }
      puts(" SCRPZ11 PASS ");
}
#endif

 
 
 


struct be1tag {
  int qa;
  int b;
};

struct be1tag be1st1 = { 1,2 };
struct be1tag be1st2[10];
struct be1tag be1st3;

struct be1tag2 {
  struct be1tag be1st4;
  struct be1tag be1st6[10];
  int c;
} be1st5;

int scrsk18 (void)
{
        int i;
        struct be1tag2 *p;
        p=&be1st5;
        for(i=0;i<10;i++)
          be1st2[i] = be1st1;
        be1st3=be1st1;
        be1st3.qa=be1st3.qa+1;
        be1st2[5] = be1st3;
        p->be1st4 = be1st1;
        for(i=0;i<10;i++)
          p->be1st6[i] = be1st3;
        p->be1st6[5] = be1st1;
        be1sub();
        puts(" OK \n");
}
unsigned char adata[] = {
1,2,
2,2,
1,2,
2,2,
1,2,
2,2,
1,2,
2,2,
1,2,
2,2,
2,2,
1,2,
1,2,
2,2,
1,2,
2,2,
1,2,
2,2,
1,2,
2,2
};
int be1sub (void)
{
        static int c=0;
        int i;
        for(i=0;i<10;i++) {
          if( be1st2[i].qa != adata[c++] ) puts(" NG ");
          if( be1st2[i].b != adata[c++] ) puts(" NG ");
          if( be1st5.be1st6[i].qa !=adata[c++] ) puts(" NG ");
          if( be1st5.be1st6[i].b !=adata[c++] ) puts(" NG ");
        }
}

