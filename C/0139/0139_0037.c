#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <string.h>
int scs000 (void);
int f1fnc1 (void);
int f1fnc2 (void);
int swap (unsigned short int a, unsigned short int b);
int m3cmap02 (void);
int scrna10 (void);
int m3mpsi09 (void);
int m3cuns02 (void);
int m3mptr02 (void);
int m3gunr05 (void);
int m3gswh08 (void);
int m3ccnl06 (void);
int scrpz06 (void);
  
 
 
 
 
 
 

int main (void)
{

   printf("*** \n\n");

   scrpz06();    
   m3ccnl06();   
   scs000() ;    
   m3gswh08();   
   m3gunr05();   
   m3mptr02();   
   m3cuns02();   
   m3mpsi09();   
   scrna10();    
   m3cmap02();   

   printf("\n*** \n");

exit (0);
}





 
 
 


#ifndef v10
 
#define print30(x,y,z,a,b,c) \
        if( x != a || y != b || z != c ) puts(" NG ");

int scrpz06 (void)
{
      int x,y,z;

      x = y = z = 1;
      ++x || ++y && ++z; print30(x,y,z,2,1,1);

      x = y = z = 1;
      ++x && ++y || ++z; print30(x,y,z,2,2,1);

      x = y = z = 1;
      ++x && ++y && ++z; print30(x,y,z,2,2,2);

      x = y = z = -1;
      ++x && ++y || ++z; print30(x,y,z,0,-1,0);

      x = y = z = -1;
      ++x || ++y && ++z; print30(x,y,z,0,0,-1);

      x = y = z = -1;
      ++x && ++y && ++z; print30(x,y,z,0,-1,-1);
      puts(" SCRPZ06 PASS");
      return 0;
}
#else
#define print30(x,y,z) printf("x=%d  y=%d  z=%d \n",x,y,z)

int scrpz06 (void)
{
      int x,y,z;

      x = y = z = 1;
      ++x || ++y && ++z; print30(x,y,z);

      x = y = z = 1;
      ++x && ++y || ++z; print30(x,y,z);

      x = y = z = 1;
      ++x && ++y && ++z; print30(x,y,z);

      x = y = z = -1;
      ++x && ++y || ++z; print30(x,y,z);

      x = y = z = -1;
      ++x || ++y && ++z; print30(x,y,z);

      x = y = z = -1;
      ++x && ++y && ++z; print30(x,y,z);

}
#endif


 
 
 



 
 int scs000 (void)
 {
#if defined (__GNUC__)
   printf("*** SCS001 *** OK ***\n") ;
#else
   struct bittag {
            char         a11: 4;
            char         a12: 4;
   } ;
   struct bittag bitdata={0xf,0xf};
   if (bitdata.a11==0xf&&bitdata.a12==0xf)
     printf("*** SCS001 *** OK ***\n") ;
   else if(bitdata.a11!=0xff)
     printf("### scs001 ### error ###\n") ;
   else if(bitdata.a12==0x00)
     printf("### scs001 ### error ###\n") ;
   else if(bitdata.a12!=0x00)
     printf("### scs001 ### error ###\n") ;
#endif
   return 0;
 }


 
 
 


#define  mask1   0x0000
#define  mask2   0x0001
struct t1 {
     unsigned short int as:2;
     unsigned short int bs:14;
} *pq,x;
int scrna10 (void)
{
    pq     = &x;
    pq->as = 0x0001;
    pq->bs = 0x0002;
    swap(pq->as,pq->bs);
    if( pq->as == mask1)
           printf(" test ==> ng");
    else
           printf(" TEST ==> OK\n");
    return 0;
}
int swap (unsigned short int a, unsigned short int b)
{
      return 0;
}




 
 
 


int m3mpsi09 (void)
{
 int a;
 char c;
 signed char sc;
 unsigned char usc;
 short int shi;
 signed short int sshi;
 unsigned short int usshi;
 int i;
 signed int si;
 unsigned int usi;
 long int li;
 signed long int sli;
 unsigned long int usli;

   printf("**************\n");


 
 a = sizeof sc;
 if ( a==1 )
 printf("TEST01 --> OK \n");
 else
 printf("TEST01 --> NG \n");

 
 a = sizeof sshi;
 if ( a==2 )
 printf("TEST02 --> OK \n");
 else
 printf("TEST02 --> NG \n");

 
 a = sizeof si;
#if ILP
 if ( a==8 )
#else (A32 || I64 || LLP || LP || A64)
 if ( a==4 )
#endif
 printf("TEST03 --> OK \n");
 else
 printf("TEST03 --> NG \n");

 
 a = sizeof sli;
#if (A32 || I64 || LLP )  
 if ( a==4 )
#else A64
 if ( a==8 )
#endif
 printf("TEST04 --> OK \n");
 else
 printf("TEST04 --> NG \n");

 
 a = sizeof c;
 if ( a==1 )
 printf("TEST05 --> OK \n");
 else
 printf("TEST05 --> NG \n");

 
 a = sizeof shi;
 if ( a==2 )
 printf("TEST06 --> OK \n");
 else
 printf("TEST06 --> NG \n");

 
 a = sizeof i;
#if ILP
 if ( a==8 )
#else (A32 || I64 || LLP || LP || A64)
 if ( a==4 )
#endif
 printf("TEST07 --> OK \n");
 else
 printf("TEST07 --> NG \n");

 
 a = sizeof li;
#if (A32 || I64 || LLP )  
 if ( a==4 )
#else A64
 if ( a==8 )
#endif
 printf("TEST08 --> OK \n");
 else
 printf("TEST08 --> NG \n");

 
 a = sizeof usc;
 if ( a==1 )
 printf("TEST09 --> OK \n");
 else
 printf("TEST09 --> NG \n");

 
 a = sizeof usshi;
 if ( a==2 )
 printf("TEST10 --> OK \n");
 else
 printf("TEST10 --> NG \n");

 
 a = sizeof usi;
#if ILP
 if ( a==8 )
#else (A32 || I64 || LLP || LP || A64)
 if ( a==4 )
#endif
 printf("TEST11 --> OK \n");
 else
 printf("TEST11 --> NG \n");

 
 a = sizeof usli;
#if (A32 || I64 || LLP )  
 if ( a==4 )
#else A64
 if ( a==8 )
#endif
 printf("TEST12 --> OK \n");
 else
 printf("TEST12 --> NG \n");
 return 0;
}

 
 
 


int m3mptr02 (void)
{
  int a,b=0,c,d,e,f,flag;
  c=25;
  a=10;
  c=35;
  a=5;
  d=100;
  d=200;
  e=300;
  e=400;
  f=60;
  f=80;
  flag=0;
  if(a!=c){
    flag=1;
  }
  if(b<=b){
    if(c>=a){
    b=e;
    flag++;
    }
  }
  if(b==b){
    b=f;
    flag++;
  }
  a=2000;
  b=5000;
  c=10000;
  d=100;
  e=300;
  f=60;
  if(flag==3){
    printf("*****  OK  *****\n");
  }
  else {
    printf("*****  NG  *****\n");
  }
  return 0;
}




 
 
 



int m3cuns02 (void) {

   printf("M3CUNS02   TEST START \n");

#if  +4294967295U
  #if  +2147483648U
     printf(" *** O K (02-01) *** \n");
  #else
     printf(" *** N G (02-01)A *** \n");
  #endif
#else
   printf(" *** N G (02-01)B *** \n");
#endif

#if  -4141414141u
  #if  -0u
     printf(" *** N G (02-02)A *** \n");
  #else
     printf(" *** O K (02-02) *** \n");
  #endif
#else
   printf(" *** N G (02-02)B *** \n");
#endif

#if  ~ 3333333333u
   printf(" *** O K (02-03) *** \n");
#else
   printf(" *** N G (02-03) *** \n");
#endif

#if  ! 4294967295u
   printf(" *** N G (02-04) *** \n");
#else
   printf(" *** O K (02-04) *** \n");
#endif

#if  (2147483648u)
   printf(" *** O K (02-05) *** \n");
#else
   printf(" *** N G (02-05) *** \n");
#endif

#if  1u
   printf(" *** O K (02-06) *** \n");
#else
   printf(" *** N G (02-06) *** \n");
#endif

#if  -2147483648u
   printf(" *** O K (02-07) *** \n");
#else
   printf(" *** N G (02-07) *** \n");
#endif

   printf("M3CUNS02   TEST END \n   ");
   return 0;
}

 
 
 



int m3cmap02 (void) {

   printf("M3CMAP02   TEST START \n");


#define  f() 100
   #if (f() == 100)
      printf(" *** O K (45-01) ***  \n");
   #else
      printf(" === N G (45-01) ===  \n");
   #endif

#define  x(x)  # x
#define  y(y)  x(y)

#undef  f
#define  f(x)  x
   if (!memcmp(y(f( 123
456 )),"123 456",7))
      printf(" *** O K (45-03) ***  \n");
   else
      printf(" === N G (45-03) ===  \n");

   if (!memcmp(y(f( 123 456 )) , "123 456" ,7))
      printf(" *** O K (45-04) ***  \n");
   else
      printf(" === N G (45-04) ===  \n");

   if (!memcmp(y(f( 123           456 )) , "123 456" ,7))
      printf(" *** O K (45-05) ***  \n");
   else
      printf(" === N G (45-05) ===  \n");


#if  f(123456) == 123456
      printf(" *** O K (45-06) ***  \n");
#else
      printf(" === N G (45-06) ===  \n");
#endif

#define  ff(x,y)  x + y
#if  ff(123,456) == 579
      printf(" *** O K (45-07) ***  \n");
#else
      printf(" === N G (45-07) ===  \n");
#endif

#define  f100(\
f1 ,f2 ,f3 ,f4 ,f5 ,f6 ,f7 ,f8 ,f9 ,f10,\
f11,f12,f13,f14,f15,f16,f17,f18,f19,f20,\
f21,f22,f23,f24,f25,f26,f27,f28,f29,f30,\
f31,f32,f33,f34,f35,f36,f37,f38,f39,f40,\
f41,f42,f43,f44,f45,f46,f47,f48,f49,f50,\
f51,f52,f53,f54,f55,f56,f57,f58,f59,f60,\
f61,f62,f63,f64,f65,f66,f67,f68,f69,f70,\
f71,f72,f73,f74,f75,f76,f77,f78,f79,f80,\
f81,f82,f83,f84,f85,f86,f87,f88,f89,f90,\
f91,f92,f93,f94,f95,f96,f97,f98,f99,f100) \
 f1 +f2 +f3 +f4 +f5 +f6 +f7 +f8 +f9 +f10+\
 f11+f12+f13+f14+f15+f16+f17+f18+f19+f20+\
 f21+f22+f23+f24+f25+f26+f27+f28+f29+f30+\
 f31+f32+f33+f34+f35+f36+f37+f38+f39+f40+\
 f41+f42+f43+f44+f45+f46+f47+f48+f49+f50+\
 f51+f52+f53+f54+f55+f56+f57+f58+f59+f60+\
 f61+f62+f63+f64+f65+f66+f67+f68+f69+f70+\
 f71+f72+f73+f74+f75+f76+f77+f78+f79+f80+\
 f81+f82+f83+f84+f85+f86+f87+f88+f89+f90+\
 f91+f92+f93+f94+f95+f96+f97+f98+f99+f100
#if  f100(\
1,1,1,1,1,1,1,1,1,1,\
2,2,2,2,2,2,2,2,2,2,\
3,3,3,3,3,3,3,3,3,3,\
4,4,4,4,4,4,4,4,4,4,\
5,5,5,5,5,5,5,5,5,5,\
6,6,6,6,6,6,6,6,6,6,\
7,7,7,7,7,7,7,7,7,7,\
8,8,8,8,8,8,8,8,8,8,\
9,9,9,9,9,9,9,9,9,9,\
0,0,0,0,0,0,0,0,0,0) == 450
      printf(" *** O K (45-08) ***  \n");
#else
      printf(" === N G (45-08) ===  \n");
#endif

   printf("M3CMAP02   TEST END \n");
   return 0;
}

 
 
 



int m3ccnl06 (void) {

   int a = 0;

   printf("M3CCNL06   TEST START \n");

#if 1
   a++;
#endif
  if (a == 1)
   printf(" *** O K (20-01) *** \n");
  else
   printf(" *** N G (20-01) *** \n");


a = 0;
#if 1
                          a++;      
 #if 1
                          a++;      
  #if 1
                          a++;      
   #if 1
                          a++;      
    #if 1
                          a++;      
     #if 1
                          a++;      
      #if 1
                          a++;      
       #if 1
                          a++;      
        #if 1
                          a++;      
         #if 1
                          a++;      
          #if 1
                          a++;      
           #if 1
                          a++;      
            #if 1
                          a++;      
             #if 1
                          a++;      
              #if 1
                          a++;      
               #if 1
                          a++;      
                #if 1
                          a++;      
                #endif
               #endif
              #endif
             #endif
            #endif
           #endif
          #endif
         #endif
        #endif
       #endif
      #endif
     #endif
    #endif
   #endif
  #endif
 #endif
#endif
  if (a == 17)
   printf(" *** O K (20-02) *** \n");
  else
   printf(" *** N G (20-02) *** \n");


a = 0;

#if 1
#if 1
#if 1
#if 1
#if 1
#if 1
#if 1
#if 1
#if 1
#if 1
            a++;      
 #if 1
 #if 1
 #if 1
 #if 1
 #if 1
 #if 1
 #if 1
 #if 1
 #if 1
 #if 1
            a++;      
  #if 1
  #if 1
  #if 1
  #if 1
  #if 1
  #if 1
  #if 1
  #if 1
  #if 1
  #if 1
            a++;      
   #if 1
   #if 1
   #if 1
   #if 1
   #if 1
   #if 1
   #if 1
   #if 1
   #if 1
   #if 1
            a++;      
    #if 1
    #if 1
    #if 1
    #if 1
    #if 1
    #if 1
    #if 1
    #if 1
    #if 1
    #if 1
            a++;      
     #if 1
     #if 1
     #if 1
     #if 1
     #if 1
     #if 1
     #if 1
     #if 1
     #if 1
     #if 1
            a++;      
      #if 1
      #if 1
      #if 1
      #if 1
      #if 1
      #if 1
      #if 1
      #if 1
      #if 1
      #if 1
            a++;      
       #if 1
       #if 1
       #if 1
       #if 1
       #if 1
       #if 1
       #if 1
       #if 1
       #if 1
       #if 1
            a++;      
        #if 1
        #if 1
        #if 1
        #if 1
        #if 1
        #if 1
        #if 1
        #if 1
        #if 1
        #if 1
            a++;      
         #if 1
         #if 1
         #if 1
         #if 1
         #if 1
         #if 1
         #if 1
         #if 1
         #if 1
         #if 1
            a++;      
         #endif
         #endif
         #endif
         #endif
         #endif
         #endif
         #endif
         #endif
         #endif
         #endif
                      
        #endif
        #endif
        #endif
        #endif
        #endif
        #endif
        #endif
        #endif
        #endif
        #endif
                      
       #endif
       #endif
       #endif
       #endif
       #endif
       #endif
       #endif
       #endif
       #endif
       #endif
                      
      #endif
      #endif
      #endif
      #endif
      #endif
      #endif
      #endif
      #endif
      #endif
      #endif
                      
     #endif
     #endif
     #endif
     #endif
     #endif
     #endif
     #endif
     #endif
     #endif
     #endif
                      
    #endif
    #endif
    #endif
    #endif
    #endif
    #endif
    #endif
    #endif
    #endif
    #endif
                      
   #endif
   #endif
   #endif
   #endif
   #endif
   #endif
   #endif
   #endif
   #endif
   #endif
                      
  #endif
  #endif
  #endif
  #endif
  #endif
  #endif
  #endif
  #endif
  #endif
  #endif
                      
 #endif
 #endif
 #endif
 #endif
 #endif
 #endif
 #endif
 #endif
 #endif
 #endif
                      
#endif
#endif
#endif
#endif
#endif
#endif
#endif
#endif
#endif
#endif

  if (a == 10)
   printf(" *** O K (20-03) *** \n");
  else
   printf(" *** N G (20-03) *** \n");

   printf("M3CCNL06   TEST END \n");
   return 0;
}


 
 
 


int m3gunr05 (void)
{
  printf("M3GUNR05 START\n");
  f1fnc1();
  f1fnc2();
  printf("M3GUNR05 END  \n");
  return 0;
}
 
static int f1fnc11();
int f1fnc1 (void){
  int a=0,b=0,c=0,d=0,x=0;
  int ar[3];
  int *ap,(*fp)(),*arp;
  struct { int sta;}st[2],*stp;
  ar[0]=1;
  ar[1]=1;
  ar[2]=1;
  st[1].sta =1;
  ap=&a;
  fp=f1fnc11;
  arp=ar;
  stp=st;

  x=*ap;
  x+=*(arp+1);
  x+=*(arp+2);
  x+=(*fp)();

  if (x==3)
    printf("M3GUNR05 F1FNC1 OK\n");
  else {
    printf("M3GUNR05 F1FNC1 NG\n");
    printf("X=%d\n",x);
  }
  return 0;
}
 
int f1fnc11 (void){ return 1;}
 
int f1fnc2 (void)
{
  int (*p)[2];
  int ar[2];
  int arr[1][1];
  int *arp;
  int x=0;
  struct { int sta;} st,*stp;
  arp=ar;
  stp=&st;
  st.sta=1;
  p=arr      ;
  (*p)[0]=1;
  ar[0]=1;

  x  = (*p)[0];
  x += arp[0];
  x += (*stp).sta;

  if (x==3)
    printf("M3GUNR05 F1FNC2 OK\n");
  else {
    printf("M3GUNR05 F1FNC2 NG\n");
    printf("X=%d\n",x);
  }
  return 0;
}

 
 
 



int m3gswh08 (void)  {

   struct f2tg {
              long int  li1 :1;
              long int  li2 :2;
              long int  li3 :3;
              long int  li4 :4;
              long int  li5 :5;
              long int  li6 :6;
              long int  li7 :7;
              long int  li8 :8;
     unsigned long int  uli1:1;
     unsigned long int  uli2:2;
     unsigned long int  uli3:3;
     unsigned long int  uli4:4;
     unsigned long int  uli5:5;
     unsigned long int  uli6:6;
     unsigned long int  uli7:7;
     unsigned long int  uli8:8;
   } st;

   int a1,a2,a3,a4,a5,a6,a7,a8;
   int b1,b2,b3,b4,b5,b6,b7,b8;

   st.li1=1,st.li2=2,st.li3=3,st.li4=4;
   st.li5=5,st.li6=6,st.li7=10,st.li8=20;

   st.uli1=1,st.uli2=2,st.uli3=3,st.uli4=4;
   st.uli5=5,st.uli6=6,st.uli7=10,st.uli8=20;

  printf("M3GSWH08 TEST-START \n");

#if defined (__GNUC__)
  printf("M3GSWH08 1-1 TEST -O  K- \n");
#else
   switch(st.li1)  {
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
    printf("M3GSWH08 1-1 TEST -O  K- \n");
  else
    printf("M3GSWH08 1-1 TEST - NG - \n");
#endif

   switch(st.li2)  {
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
    printf("M3GSWH08 1-2 TEST -O  K- \n");
  else
    printf("M3GSWH08 1-2 TEST - NG - \n");

   switch(st.li3)  {
     case (short)5:
       a3=5;
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
  if(a3==0)
    printf("M3GSWH08 1-3 TEST -O  K- \n");
  else
    printf("M3GSWH08 1-3 TEST - NG - \n");

   switch(st.li4)  {
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
    printf("M3GSWH08 1-4 TEST -O  K- \n");
  else
    printf("M3GSWH08 1-4 TEST - NG - \n");

   switch(st.li5)  {
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
    printf("M3GSWH08 1-5 TEST -O  K- \n");
  else
    printf("M3GSWH08 1-5 TEST - NG - \n");

   switch(st.li6)  {
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
    printf("M3GSWH08 1-6 TEST -O  K- \n");
  else
    printf("M3GSWH08 1-6 TEST - NG - \n");

   switch(st.li7)  {
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
    printf("M3GSWH08 1-7 TEST -O  K- \n");
  else
    printf("M3GSWH08 1-7 TEST - NG - \n");

   switch(st.li8)  {
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
    printf("M3GSWH08 1-8 TEST -O  K- \n");
  else
    printf("M3GSWH08 1-8 TEST - NG - \n");

   switch(st.uli1)  {
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
    printf("M3GSWH08 2-1 TEST -O  K- \n");
  else
    printf("M3GSWH08 2-1 TEST - NG - \n");

   switch(st.uli2)  {
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
    printf("M3GSWH08 2-2 TEST -O  K- \n");
  else
    printf("M3GSWH08 2-2 TEST - NG - \n");

   switch(st.uli3)  {
     case (short)5:
       b3=5;
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
  if(b3==0)
    printf("M3GSWH08 2-3 TEST -O  K- \n");
  else
    printf("M3GSWH08 2-3 TEST - NG - \n");

   switch(st.uli4)  {
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
    printf("M3GSWH08 2-4 TEST -O  K- \n");
  else
    printf("M3GSWH08 2-4 TEST - NG - \n");

   switch(st.uli5)  {
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
    printf("M3GSWH08 2-5 TEST -O  K- \n");
  else
    printf("M3GSWH08 2-5 TEST - NG - \n");

   switch(st.uli6)  {
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
    printf("M3GSWH08 2-6 TEST -O  K- \n");
  else
    printf("M3GSWH08 2-6 TEST - NG - \n");

   switch(st.uli7)  {
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
    printf("M3GSWH08 2-7 TEST -O  K- \n");
  else
    printf("M3GSWH08 2-7 TEST - NG - \n");

   switch(st.uli8)  {
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
    printf("M3GSWH08 2-8 TEST -O  K- \n");
  else
    printf("M3GSWH08 2-8 TEST - NG - \n");

  printf("M3GSWH08 TEST-END \n");
  return 0;
}

