#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <string.h>
#include <time.h>
int b1sb2 (void);
int b1sb (void);
int mptest37 (void);
int scrlp17 (void);
int m3gmeb06 (void);
int scrpz21 (void);
int m3gswh06 (void);
int m3eva276 (void);
int scrna12 (void);
int mptest34 (void);
int m3ccnl03 (void);
int m3eva233 (void);
  
 
 
 
 
 
 

int main (void)
{

   printf("*** \n\n");

   m3eva233();   
   m3ccnl03();   
   mptest34();   
   scrna12();    
   m3eva276();   
   m3gswh06();   
   scrpz21();    
   m3gmeb06();   
   scrlp17();    
   mptest37();   

   printf("\n*** \n");

exit (0);
   }


 
 
 


int m3eva233 (void)
{
  {
    int a;
    int f1f( register int a );
    a=10;
    if( f1f(a) )
        printf("M3EVA233 TEST OK \n");
      else
        printf("M3EVA233 TEST NG = %d \n",a);
  }
  return 0;
}

int f1f( register int a )
{
  if( a==10 )
      return 1;
    else
      return 0;
}

 
 
 


int f2f (void)
{
  struct {
    int f2a;
    int b;
  } st;
  st.f2a = 10;
  if( st.f2a==10 )
      return 1;
    else
      return 0;
}

static int f2a;

int m3eva276 (void)
{
  if( f2a==0 && f2f() )
      printf("M3EVA276 TEST OK \n");
    else
      printf("M3EVA276 TEST NG = %d \n",f2a);
  return 0;
}

 
 
 


  static int   f3ar[5] ={1,2,3,4,5};
int m3gmeb06 (void)
{
  printf("*** M3GMEB06 TEST *** START ***\n");

 

  {
  int   x1 = 0;
  int   y  = 1;
  x1 = (f3ar+1)[y];
  if(x1 == 3)
    printf("*** M3EMEB06-01 *** O   K ***\n");
  else
    printf("*** M3EMEB06-01 *** N   G ***\n");
  }

 

  {
  int   x2 = 0;
  x2 = (f3ar+1)[1];
  if(x2 == 3)
    printf("*** M3EMEB06-02 *** O   K ***\n");
  else
    printf("*** M3EMEB06-02 *** N   G ***\n");
  }

 

  {
  int   x3 = 0;
  x3 = (f3ar+1)[2/2];
  if(x3 == 3)
    printf("*** M3EMEB06-03 *** O   K ***\n");
  else
    printf("*** M3EMEB06-03 *** N   G ***\n");
  }

 

  {
  int   x4 = 0;
  x4 = (f3ar+1)[1*1];
  if(x4 == 3)
    printf("*** M3EMEB06-04 *** O   K ***\n");
  else
    printf("*** M3EMEB06-04 *** N   G ***\n");
  }

 

  {
  int   x5 = 0;
  x5 = (f3ar+1)[3%2];
  if(x5 == 3)
    printf("*** M3EMEB06-05 *** O   K ***\n");
  else
    printf("*** M3EMEB06-05 *** N   G ***\n");
  }

 

  {
  int   x6 = 0;
  x6 = (f3ar+1)[1+1];
  if(x6 == 4)
    printf("*** M3EMEB06-06 *** O   K ***\n");
  else
    printf("*** M3EMEB06-06 *** N   G ***\n");
  }

 

  {
  int   x7 = 0;
  x7 = (f3ar+1)[2-1];
  if(x7 == 3)
    printf("*** M3EMEB06-07 *** O   K ***\n");
  else
    printf("*** M3EMEB06-07 *** N   G ***\n");
  }

 

  {
  int   x8 = 0;
  x8 = (f3ar+1)[1&1];
  if(x8 == 3)
    printf("*** M3EMEB06-08 *** O   K ***\n");
  else
    printf("*** M3EMEB06-08 *** N   G ***\n");
  }

 

  {
  int   x9 = 0;
  x9 = (f3ar+1)[1|0];
  if(x9 == 3)
    printf("*** M3EMEB06-09 *** O   K ***\n");
  else
    printf("*** M3EMEB06-09 *** N   G ***\n");
  }

 

  {
  int   x0 = 0;
  x0 = (f3ar+1)[1^0];
  if(x0 == 3)
    printf("*** M3EMEB06-10 *** O   K ***\n");
  else
    printf("*** M3EMEB06-10 *** N   G ***\n");
  }
  printf("*** M3EMEB06 TEST FOR ***  END  ***\n");
  return 0;
}

 
 
 


int m3gswh06 (void)  {

   struct f4tg {
              char  c1 :1;
              char  c2 :2;
              char  c3 :3;
              char  c4 :4;
              char  c5 :5;
              char  c6 :6;
              char  c7 :7;
              char  c8 :8;
    unsigned  char  uc1:1;
    unsigned  char  uc2:2;
    unsigned  char  uc3:3;
    unsigned  char  uc4:4;
    unsigned  char  uc5:5;
    unsigned  char  uc6:6;
    unsigned  char  uc7:7;
    unsigned  char  uc8:8;
   } st;

   int a1,a2,a3,a4,a5,a6,a7,a8;
   int b1,b2,b3,b4,b5,b6,b7,b8;

   st.c1=1,st.c2=2,st.c3=3,st.c4=4;
   st.c5=5,st.c6=6,st.c7=10,st.c8=20;

   st.uc1=1,st.uc2=2,st.uc3=3,st.uc4=4;
   st.uc5=5,st.uc6=6,st.uc7=10,st.uc8=20;

  printf("M3GSWH06 TEST-START \n");

#if defined (__GNUC__)
  printf("M3GSWH06 1-1 TEST -O  K- \n");
#else
   switch(st.c1)  {
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
    printf("M3GSWH06 1-1 TEST -O  K- \n");
  else
    printf("M3GSWH06 1-1 TEST - NG - \n");
#endif

   switch(st.c2)  {
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
    printf("M3GSWH06 1-2 TEST -O  K- \n");
  else
    printf("M3GSWH06 1-2 TEST - NG - \n");

   switch(st.c3)  {
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
    printf("M3GSWH06 1-3 TEST -O  K- \n");
  else
    printf("M3GSWH06 1-3 TEST - NG - \n");

   switch(st.c4)  {
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
    printf("M3GSWH06 1-4 TEST -O  K- \n");
  else
    printf("M3GSWH06 1-4 TEST - NG - \n");

   switch(st.c5)  {
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
    printf("M3GSWH06 1-5 TEST -O  K- \n");
  else
    printf("M3GSWH06 1-5 TEST - NG - \n");

   switch(st.c6)  {
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
    printf("M3GSWH06 1-6 TEST -O  K- \n");
  else
    printf("M3GSWH06 1-6 TEST - NG - \n");

   switch(st.c7)  {
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
    printf("M3GSWH06 1-7 TEST -O  K- \n");
  else
    printf("M3GSWH06 1-7 TEST - NG - \n");

   switch(st.c8)  {
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
    printf("M3GSWH06 1-8 TEST -O  K- \n");
  else
    printf("M3GSWH06 1-8 TEST - NG - \n");

   switch(st.uc1)  {
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
    printf("M3GSWH06 2-1 TEST -O  K- \n");
  else
    printf("M3GSWH06 2-1 TEST - NG - \n");

   switch(st.uc2)  {
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
    printf("M3GSWH06 2-2 TEST -O  K- \n");
  else
    printf("M3GSWH06 2-2 TEST - NG - \n");

   switch(st.uc3)  {
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
    printf("M3GSWH06 2-3 TEST -O  K- \n");
  else
    printf("M3GSWH06 2-3 TEST - NG - \n");

   switch(st.uc4)  {
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
    printf("M3GSWH06 2-4 TEST -O  K- \n");
  else
    printf("M3GSWH06 2-4 TEST - NG - \n");

   switch(st.uc5)  {
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
    printf("M3GSWH06 2-5 TEST -O  K- \n");
  else
    printf("M3GSWH06 2-5 TEST - NG - \n");

   switch(st.uc6)  {
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
    printf("M3GSWH06 2-6 TEST -O  K- \n");
  else
    printf("M3GSWH06 2-6 TEST - NG - \n");

   switch(st.uc7)  {
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
    printf("M3GSWH06 2-7 TEST -O  K- \n");
  else
    printf("M3GSWH06 2-7 TEST - NG - \n");

   switch(st.uc8)  {
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
    printf("M3GSWH06 2-8 TEST -O  K- \n");
  else
    printf("M3GSWH06 2-8 TEST - NG - \n");

  printf("M3GSWH06 TEST-END \n");
  return 0;
}

 
 
 



int m3ccnl03 (void)
{

   int a = 0;

   printf("M3CCNL03   TEST START \n");

   #define d 1

   #ifdef d
      printf(" *** O K (17-01) *** \n");
   #else
      printf(" *** N G (17-01) *** \n");
   #endif

#if -1
   a = 2;
#endif

   if (a == 2)
      printf(" *** O K (17-02) *** \n");
   else
      printf(" *** N G (17-02) *** \n");

#if 1
   a = 3;
#endif

   if (a == 3)
      printf(" *** O K (17-03) *** \n");
   else
      printf(" *** N G (17-03) *** \n");

#if 0x7fffffff
   a = 4;
#endif

   if (a == 4)
      printf(" *** O K (17-04) *** \n");
   else
      printf(" *** N G (17-04) *** \n");


a = 0;
#undef  d

   #define d 7

 #ifdef d
   if (a == 0)
      printf(" *** O K (17-07) *** \n");
   else
      printf(" *** N G (17-07)A*** \n");
 #else
      printf(" *** N G (17-07)B*** \n");
 #endif

   printf("M3CCNL03   TEST END \n");
   return 0;
}


 
 
 


int mptest34 (void)
{
   int  mp2fnc01(int);
   int  mp2fnc02(int);

   int a1,a2,a3,a4,a5;
   a1=a2=2;
   a4 = mp2fnc01(a1);
   a5 = mp2fnc02(a2);
   a3=a4-a5;
   if(a3==0)
     printf("***** MPTEST34 OK *****\n");
   else
     printf("***** MPTEST34 NG ***** a3=%d \n",a3);
   return 0;
}

int mp2fnc01(int i)
{
   static int rv=0;
   static int s=0;
   s++;
   if(i>=1) rv=mp2fnc01(--i);
   return(s);
}

int mp2fnc02(int i)
{
  int mp2fnc03(int);
  int rv02;

  rv02=mp2fnc03(i);
  if(rv02==3) return(rv02);
  return(0);
}

int mp2fnc03(int i)
{
  int mp2fnc04(int);
  int rv03;

  if(i<3){
    rv03 = mp2fnc04(++i);
    return(rv03);
  }
  return(i);
}

int mp2fnc04(int i)
{
  int mp2fnc02(int);
  int rv04;

  rv04=mp2fnc02(i);
  return(rv04);
}

 
 
 


 int mptest37 (void)
 {
   int tbl01[8][8],tbl02[8][8],tbl03[8][8];
   int tbl04[8][8],tbl05[8][8],tbl06[8][8];
   int tbl07[8][8];
   int count,a1,a2,a3,a4,a5,a6,a7,a8,a9,b1,b2,b3;
   long int time;
   printf("      \n");
   printf("    MPTEST37 START \n");
   clock();
   count=0;

    

   for(a2=0;a2<8;a2++)
    for(a1=1;a1<8;a1++)
     tbl01[a1][a2]=0;

    

   for(a1=0;a1<8;a1++) {                 
    for(a2=1;a2<8;a2++)
     tbl01[a2][a1]=1;

    for(a2=1;a2<8;a2++) {
     b1=0+a2;
     b2=a1+a2;
     b3=a1-a2;
     if(b2<=7) tbl01[b1][b2]=1;
     if(b3>=0) tbl01[b1][b3]=1;
    }

    for(a3=0;a3<8;a3++)
     for(a2=1;a2<8;a2++)
      tbl02[a2][a3]=tbl01[a2][a3];

     

    for(a2=0;a2<8;a2++) {                
     if(tbl02[1][a2]==0) {
      for(a3=2;a3<8;a3++)
       tbl02[a3][a2]=1;

      for(a3=1;a3<7;a3++) {
       b1=1+a3;
       b2=a2+a3;
       b3=a2-a3;
       if(b2<=7)tbl02[b1][b2]=1;
       if(b3>=0)tbl02[b1][b3]=1;
      }

      for(a4=0;a4<8;a4++)
       for(a3=2;a3<8;a3++)
        tbl03[a3][a4]=tbl02[a3][a4];

       

      for(a3=0;a3<8;a3++) {              
       if(tbl03[2][a3]==0) {
        for(a4=3;a4<8;a4++)
         tbl03[a4][a3]=1;
        for(a4=1;a4<6;a4++) {
         b1=2+a4;
         b2=a3+a4;
         b3=a3-a4;
         if(b2<=7)tbl03[b1][b2]=1;
         if(b3>=0)tbl03[b1][b3]=1;
        }

       for(a5=0;a5<8;a5++)
        for(a4=3;a4<8;a4++)
         tbl04[a4][a5]=tbl03[a4][a5];

        

       for(a4=0;a4<8;a4++) {             
        if(tbl04[3][a4]==0) {
         for(a5=4;a5<8;a5++)
          tbl04[a5][a4]=1;
         for(a5=1;a5<5;a5++) {
          b1=3+a5;
          b2=a4+a5;
          b3=a4-a5;
          if(b2<=7)tbl04[b1][b2]=1;
          if(b3>=0)tbl04[b1][b3]=1;
         }

         for(a6=0;a6<8;a6++)
          for(a5=4;a5<8;a5++)
           tbl05[a5][a6]=tbl04[a5][a6];

          

         for(a5=0;a5<8;a5++) {           
          if(tbl05[4][a5]==0) {
           for(a6=5;a6<8;a6++)
            tbl05[a6][a5]=1;
           for(a6=1;a6<4;a6++) {
            b1=4+a6;
            b2=a5+a6;
            b3=a5-a6;
            if(b2<=7)tbl05[b1][b2]=1;
            if(b3>=0)tbl05[b1][b3]=1;
           }

           for(a7=0;a7<8;a7++)
            for(a6=5;a6<8;a6++)
             tbl06[a6][a7]=tbl05[a6][a7];

            

           for(a6=0;a6<8;a6++) {         
            if(tbl06[5][a6]==0) {
             tbl06[6][a6]=1;
             tbl06[7][a6]=1;
             for(a7=1;a7<3;a7++) {
              b1=5+a7;
              b2=a6+a7;
              b3=a6-a7;
              if(b2<=7)tbl06[b1][b2]=1;
              if(b3>=0)tbl06[b1][b3]=1;
             }

             for(a8=0;a8<8;a8++)
              for(a7=6;a7<8;a7++)
               tbl07[a7][a8]=tbl06[a7][a8];

              

             for(a7=0;a7<8;a7++) {      
              if(tbl07[6][a7]==0) {
               tbl07[7][a7]=1;
               if(a7+1<=7)tbl07[7][a7+1]=1;
               if(a7-1>=0)tbl07[7][a7-1]=1;

                

               for(a8=0;a8<8;a8++) {
                if(tbl07[7][a8]==0)
                 count=count+1;
               }

               for(a9=0;a9<8;a9++)
                for(a8=6;a8<8;a8++)
                 tbl07[a8][a9]=tbl06[a8][a9];

              }                         
             }                          
             for(a8=0;a8<8;a8++)
              for(a7=5;a7<8;a7++)
               tbl06[a7][a8]=tbl05[a7][a8];

            }                           
           }                            
           for(a7=0;a7<8;a7++)
            for(a6=4;a6<8;a6++)
             tbl05[a6][a7]=tbl04[a6][a7];

          }                             
         }                              
         for(a6=0;a6<8;a6++)
          for(a5=3;a5<8;a5++)
           tbl04[a5][a6]=tbl03[a5][a6];

        }                               
       }                                
       for(a5=0;a5<8;a5++)
        for(a4=2;a4<8;a4++)
         tbl03[a4][a5]=tbl02[a4][a5];

       }                                
      }                                 
      for(a4=0;a4<8;a4++)
       for(a3=1;a3<8;a3++)
        tbl02[a3][a4]=tbl01[a3][a4];

     }                                  
    }                                   

    for(a3=0;a3<8;a3++)
     for(a2=1;a2<8;a2++)
      tbl01[a2][a3]=0;

   }                                    

   time=clock();
   printf("      \n");
   printf("    EIGHT QUEEN PATTERN  = %d \n",count);
   printf("      \n");
 if(count==92) {
    printf("      \n");
    printf("    MPTEST37 OK \n");  }
   else          {
    printf("      \n");
    printf("    MPTEST37 NG \n");  }
   printf("      \n");
   printf("    MPTEST37 END \n");
   printf("      \n");
   return 0;
 }


 
 
 



  struct b1tg {
    int a,b,c;
    int dd1,e,f;
  } ;

  struct b1tg *global;
  struct b1tg gst;

int scrlp17 (void)
{
  struct b1tg st;
  st.a = 1;
  st.b = 1;
  st.c = 1;
  gst.a = 2;
  gst.b = 2;
  gst.c = 2;
  global = &st;
  b1sb();
  return 0;
}

int b1sb (void)
{
   int sum,i,sum1,sum2;
   global->a = 1;
   for(sum=0,i=1;i<10;i++) {
     sum = sum + global->b;
     if( global->c == 1  ||
         global->c == 2  ||
         global->c == 3  ||
         global->c == 4 ) {
          sum = sum + global->a;
     }
   }
   sum1 = sum;
   for(sum=0,i=1;i<10;i++) {
     sum = sum + global->b;
     if( global->c == 1  ||
         global->c == 2  ||
         global->c == 3  ||
         global->c == 4 ) {
          sum = sum + global->a;
          b1sb2();
          sum = sum + global->a;
     }
   }
   sum2 = sum;
   if( sum1 == 18 && sum2 == 52 ) {
     printf(" OK \n");
   }
   else {
     printf(" NG \n");
   }
   return 0;
}

int b1sb2 (void)
{
    global = &gst;
    return 0;
}


 
 
 



int scrna12 (void)
{
       int i,j,k,l=1,a[10],b[10],c[10],m;
       int sum1,sum2,sum3;

       sum1=1;
       sum2=2;
       sum3=3;
       for(i=0; i <= 9 ; i++){
             if((i%2) == 0){
                   a[i] = i;
                   b[i] = 2;
             }
             else{
                   a[i] = 2;
                   b[i] = i;
             }
             c[i] = a[i]-b[i];
       }
       for(j=0; j <= 9 ; j++){
              k = a[j];
              i = b[j];
              sum1 = sum1 >> k;
              sum2 = sum2 >> l;
              m = c[i] - (k+l);
              if(m >= 0 )
                   sum3 = sum3 >> m;
       }
       if(sum1 == 0 && sum2 == 0 && sum3 == 3)
                   printf(" TEST ==> OK");
       else        printf(" TEST ==> NG");
       return 0;
}


 
 
 


#ifdef v10
 

#define pr(format,value) printf("value = %format ",(value))
#define nl putchar('\n')
#define print1(f,x1) pr(f,x1); nl
#define print2(f,x1,x2)  pr(f,x1); print1(f,x2)
#define print3(f,x1,x2,x3)  pr(f,x1); print2(f,x2,x3)
#define print4(f,x1,x2,x3,x4)  pr(f,x1); print3(f,x2,x3,x4)

int scrpz21 (void)
{
      static struct s1  {
            char c[4!, *s;
      } s1 = { "abc","def" };

      static struct s2 {
            char *cp;
            struct s1 ss1;
      } s2 = { "ghi",{ "jkl","mno" } };

      print2(c,s1.c[0!,*s1.s);
      print2(s,s1.c,s1.s);

      print2(s,s2.cp,s2.ss1.s);
      print2(s,++s2.cp,++s2.ss1.s);
}
#else
 

#define pr(format,value) \
 {                                           \
     sprintf(buf,#value" = %"#format" ",(value)); \
     if( strcmp(buf,ans[cont++]) != 0 ) {     \
        puts(" NG ");                      \
        printf("%s<<<<\n",buf);              \
        printf("%s<<<<\n",ans[cont-1]);       \
        exit(1);                              \
     }                                       \
 }
#define nl printf("\n")
#define print1(f,x1) pr(f,x1); nl
#define print2(f,x1,x2)  pr(f,x1); print1(f,x2)
#define print3(f,x1,x2,x3)  pr(f,x1); print2(f,x2,x3)
#define print4(f,x1,x2,x3,x4)  pr(f,x1); print3(f,x2,x3,x4)

int scrpz21 (void)
{
      char buf[30]; int cont=0;
      static char *ans[] = {
      "s1.c[0] = a ",
      "*s1.s = d ",
      "s1.c = abc ",
      "s1.s = def ",
      "s2.cp = ghi ",
      "s2.ss1.s = mno ",
      "++s2.cp = hi ",
      "++s2.ss1.s = no " };

      static struct s1  {
            char c[4], *s;
      } s1 = { "abc","def" };

      static struct s2 {
            char *cp;
            struct s1 ss1;
      } s2 = { "ghi",{ "jkl","mno" } };

      print2(c,s1.c[0],*s1.s);
      print2(s,s1.c,s1.s);

      print2(s,s2.cp,s2.ss1.s);
      print2(s,++s2.cp,++s2.ss1.s);
      puts(" SCRPZ21 PASS ");
      return 0;
}
#endif

