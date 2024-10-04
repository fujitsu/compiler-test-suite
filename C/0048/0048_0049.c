#include <stdio.h>
#include <signal.h>
#include <setjmp.h>
#include <time.h>
int m3eva159 (void);
int m3eva158 (void);
int m3eva157 (void);
int m3eva156 (void);
int m3eva155 (void);
int m3eva154 (void);
int m3eva153 (void);
int m3eva152 (void);
int m3eva151 (void);
int m3eva150 (void);
int m3eva149 (void);
int m3eva148 (void);
int m3eva147 (void);
int m3eva146 (void);
int m3eva145 (void);
int m3eva141 (void);
int m3eva140 (void);
int mptest38 (void);
int mptest37 (void);
int mptest36 (void);
int mptest34 (void);
int mptest33 (void);
int mptest32 (void);
int mptest31 (void);
int scrlc02 (void);
int scrlc01 (void);
int scrgb09 (void);
int scrlc11 (void);
int 
main (void)
{
    printf("***  *** TEST FOR COMMON *** STARTED ***\n");
    scrlc11();
    scrgb09();
    scrlc01();
    scrlc02();
    mptest31();
    mptest32();
    mptest33();
    mptest34();
    mptest36();
    mptest37();
    mptest38();
    m3eva140();
    m3eva141();
    m3eva145();
    m3eva146();
    m3eva147();
    m3eva148();
    m3eva149();
    m3eva150();
    m3eva151();
    m3eva152();
    m3eva153();
    m3eva154();
    m3eva155();
    m3eva156();
    m3eva157();
    m3eva158();
    m3eva159();
    printf("\n***  *** TEST FOR COMMON *** ENDED ***\n");
}

struct tag {
             int a;
             short int b;
           };

int glb;

int 
scrlc11 (void)
{
  struct tag x,subs();
  int i,j;

for(i=0;i<4;i++)
{
  x.a=i+1;
  x.b=x.a+2;
  j=x.a+glb;
  x=subs();

  if(x.a==3 && x.b==2) printf(" ----- ok ----- \n");
  else                 printf(" ----- ng ----- \n");

  j=x.a+i;
  x.a=x.b+1;
}
 return 0;
}

struct tag 
subs (void)
{
struct tag str;

str.a=3;
str.b=2;

return(str);
}
int 
scrgb09 (void)
{
      unsigned long int u4;
               long int i4;
      u4=0;
      for( i4=0;i4<10;i4++ ) {
        if(u4=u4+1)break;
      }
      if( u4 != 1 ) puts(" ng ");
      for( i4=0;i4<10;i4++ ) {
        if((u4=u4+1)>0)break;
      }
      if( u4 != 2 ) puts(" ng ");
      else          puts(" OK ");
      return 0;
}

int 
scrlc01 (void)
{
register int i;
register float j;
register short int k;
i=1;
j=2;
k=3;
i=i+1;
j=j+1;
k=k+1;
i=i+i;
if(i==4 && j==3 && k==4) printf(" ----- ok ----- \n");
else                     printf(" ----- ng ----- \n");
 return 0;
}
int  a;
int 
scrlc02 (void)
{
        int  b,*p1;
        int  i,j=0;

  for(i=0;i<3;i++)
    {
          b=i+3;
          a=i+b;
          j=i+a;

          p1=&b;
         *p1=j-i;
          if(b==*p1) printf("--------- ok -------- \n");
          else       printf("--------- ng -------- \n");
          j=a+b;

    }
  return 0;
}

int 
subfun (int *p1, int *p2)
{
    int a;
    a=10;
    if(p1!=0){
      a=*p1;
    } else {
      *p2=a;
    }
    return(a);
}
int 
mptest31 (void)
{
   static int i,j;
          int *mp,*mp2,k;
   i=1;
   j=5;
   mp=&i;
   mp2=&j;
   if((k=subfun(mp,mp2))!=1)
     printf("*** MPTEST31 NG *** K=%d \n",k);
   else
     printf("*** MPTEST31 OK ***\n");
   if((k=subfun(0,mp2))!=10)
     printf("*** MPTEST31 NG *** K=%d \n",k);
   else
     printf("*** MPTEST31 OK ***\n");
   return 0;
}

int 
subfun32 (int *p1, int *p2, int *i3)
{
    if(p1!=0){
      *i3=*p1+1;
      *p1=*i3+3;
    } else {
      *p2=*i3;
      return(*p2);
    }
    *p2=*p1+1;
    return(*p2);
}
int 
mptest32 (void)
{
   static int i,j;
          int *mp,*mp2,k;
   i=1;
   j=5;
   mp=&i;
   mp2=&j;
   if((k=subfun32(mp,mp2,&i))!=6)
     printf("*** MPTEST32 NG *** K=%d \n",k);
   else
     printf("*** MPTEST32 OK ***\n");
   if((k=subfun32(0,mp2,&j))!=6)
     printf("*** MPTEST32 NG *** K=%d \n",k);
   else
     printf("*** MPTEST32 OK ***\n");
   return 0;
}

int 
mptest33 (void)
 {
    int a,b,c,d,e=0,f=0;
    a=c=d=10;
    b=a+5;
    goto l11;
l00:
    c=0;
    d=1;
    e=c+d;
    goto l02;
l01:
    c++;
    e=++d+c;
    goto l01;
l02:
    a++;
    if(a==0) goto l02;
l03:
    b++;
l04:
    goto l00;
l11:
    if(a!=10){printf("*** a  NG ** a=%d ***\n",a);f++;}
    if(b!=15){printf("*** b  NG ** b=%d ***\n",b);f++;}
    if(c!=10){printf("*** c  NG ** c=%d ***\n",c);f++;}
    if(d!=10){printf("*** d  NG ** d=%d ***\n",d);f++;}
    if(e!=0) {printf("*** e  NG ** e=%d ***\n",e);f++;}
    if(f==0) printf("*** MPTEST33  OK ***\n");
    else     printf("*** MPTEST33  NG ***\n");
    return 0;
}

int 
mptest34 (void)
{
   int  func01(int);
   int  func02(int);

   int a1,a2,a3,a4,a5;
   a1=a2=2;
   a4 = func01(a1);
   a5 = func02(a2);
   a3=a4-a5;
   if(a3==0)
     printf("***** MPTEST34 OK *****\n");
   else
     printf("***** MPTEST34 NG ***** a3=%d \n",a3);
   return 0;
}

 int func01(int i)
{
   static int rv=0;
   static int s=0;
   s++;
   if(i>=1) rv=func01(--i);
   return(s);
}

 int func02(int i)
{
  int func03(int);
  int rv02;

  rv02=func03(i);
  if(rv02==3) return(rv02);
  return(0);
}

 int func03(int i)
{
  int func04(int);
  int rv03;

  if(i<3){
    rv03 = func04(++i);
    return(rv03);
  }
  return(i);
}

 int func04(int i)
{
  int func02(int);
  int rv04;

  rv04=func02(i);
  return(rv04);
}

int 
mptest36 (void)
{ int func36();
   if(func36()!=0) printf("***** MPTEST36 NG *****\n");
   else          printf("***** MPTEST36 OK *****\n");
   return 0;
}
int 
func36 (void)
{
  int f_fr(int),f_wl(int),f_if(int),f_rn(int),f_dw(int);
  int i1,i2,i3,i4;
  int r1,r3,r4,r5;

     i1=1;i2=2;i3=3;i4=4;
     for(r1=f_fr(i1);f_fr(i2);f_fr(i3))
        r4=f_fr(i4);
     while(f_wl(i1))
        f_wl(i2);
     do { r5=f_dw(i1); }
     while(f_dw(i2));
     if(f_if(i1)!=1) printf("*** MPTEST36 NG ***\n");
     else if(f_if(i2)!=2) printf("*** MPTEST36 NG ***\n");
     else r3=f_if(i3);
     return(f_rn(r3));
}
int 
f_fr (int i)
{
   switch(i){ case 1 : return(1);
               case 2 : return(0);
               default: printf(
                        "*** MPTEST36 NG > IN F_FR *** = %d\n",i);
                        return(i);
   }
}
int 
f_wl (int i)
{ switch(i){ case 1 : return(0);
               default: printf("*** MPTEST36 NG > IN F_WL ***\n");
                        return(i);
            }
}
int 
f_dw (int i)
{ switch(i){ case 1 : return(1);
               case 2 : return(0);
               default: printf("*** MPTEST36 NG > IN F_DW ***\n");
                        return(i);
            }
}
int 
f_if (int i)
{ switch(i){ case 1 : return(1);
               case 2 : return(2);
               case 3 : return(3);
               default: printf("*** MPTEST36 NG > IN F_IF ***\n");
                        return(i);
            }
}
int 
f_rn (int i)
{ switch(i){ case 3 : return(0);
               default: printf("*** MPTEST36 NG > IN F_RN ***\n");
                        return(i);
            }
}
int 
mptest37 (void)
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
 jmp_buf env;
int mptest38 (void)
 {
    int rtncd,*p1,p2,p3,s1;
    void func1();
    signal(SIGSEGV,func1);
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
    s1=s1+20;    
l1: s1=s1*10;
    goto l2;
l3: if(s1==0)
      printf("_____ CHECK 1 OK ____________\n");
    else {
      printf("_____ CHECK 1 NG ____________\n");
      printf("_____ S1 = %d ______________\n",s1);
      }
    return 0;
 }
 void 
func1 (void)
 {
    longjmp(env,999);
 }
int 
f140 (void)
{
  int a140;
  a140=10;
  if( a140==10 )
   return 1;
  else
   return 0;
}

extern int a140=20;

int 
m3eva140 (void)
{
  if( a140==20 && f140() )
    printf("\nM3EVA140 TEST OK \n");
  else
    printf("M3EVA140 TEST NG = %d \n",a140);
  return 0;
}
int 
f141 (void)
{
  int a141;
  a141=10;
  if( a141==10 )
   return 1;
  else
   return 0;
}

extern int a141;

int 
m3eva141 (void)
{
  if( a141==5 && f141() )
    printf("\nM3EVA141 TEST OK \n");
  else
    printf("M3EVA141 TEST NG = %d \n",a141);
  return 0;
}
int a141=5;
int 
m3eva145 (void)
{
  int a;
  int i=0;
  a=10;
  {
    register int a=1;
    if( a==1 )
      i = 1;
    else
      printf("M3EVA145 TEST NG = %d \n",a);
  }
  if( a==10 && i==1 )
    printf("\nM3EVA145 TEST OK \n");
  else
    printf("M3EVA145 TEST NG = %d \n",a);
  return 0;
}
int 
m3eva146 (void)
{
  int a;
  int i=0;
  a=10;
  {
    register int a;
    a =1 ;
    if( a==1 )
      i = 1;
    else
      printf("M3EVA146 TEST NG = %d \n",a);
  }
  if( a==10 && i==1 )
    printf("\nM3EVA146 TEST OK \n");
  else
    printf("M3EVA146 TEST NG = %d \n",a);
  return 0;
}
int 
m3eva147 (void)
{
  int a;
  int f147( register int a );
  a=10;
  if( f147(a) )
    printf("\nM3EVA147 TEST OK \n");
  else
    printf("M3EVA147 TEST NG = %d \n",a);
  return 0;
}
 int f147( register int a )
{
  if( a==10 )
   return 1;
  else
   return 0;
}
int 
f148 (void)
{
  static int a148;
  a148=10;
  if( a148==10 )
   return 1;
  else
   return 0;
}

int a148=20;

int 
m3eva148 (void)
{
  if( a148==20 && f148() )
    printf("\nM3EVA148 TEST OK \n");
  else
    printf("M3EVA148 TEST NG = %d \n",a148);
  return 0;
}
int 
f149 (void)
{
  static int a149;
  a149=10;
  if( a149==10 )
   return 1;
  else
   return 0;
}

int a149;

int 
m3eva149 (void)
{
  if( a149==0 && f149() )
    printf("\nM3EVA149 TEST OK \n");
  else
    printf("M3EVA149 TEST NG = %d \n",a149);
  return 0;
}
int 
m3eva150 (void)
{
  static int a;
  int i=0;
  a=10;
  {
    int a=20;
    if( a==20 )
      i = 1;
    else
      printf("M3EVA150 TEST NG = %d \n",a);
  }
  if( a==10 && i==1 )
    printf("\nM3EVA150 TEST OK \n");
  else
    printf("M3EVA150 TEST NG = %d \n",a);
  return 0;
}
int 
m3eva151 (void)
{
  static int a;
  int i=0;
  a=10;
  {
    int a;
    a = 20;
    if( a==20 )
      i = 1;
    else
      printf("M3EVA151 TEST NG = %d \n",a);
  }
  if( a==10 && i==1 )
    printf("\nM3EVA151 TEST OK \n");
  else
    printf("M3EVA151 TEST NG = %d \n",a);
  return 0;
}
int 
m3eva152 (void)
{
  static int a;
  struct {
           int a;
           int b;
         }st;
  st.a=20;
  a=10;
  if( a==10 && st.a==20 )
    printf("\nM3EVA152 TEST OK \n");
  else
    printf("M3EVA152 TEST NG = %d \n",a);
  return 0;
}
int 
m3eva153 (void)
{
  static int a;
  int f153( int a );
  a=10;
  if( f153(a) )
    printf("\nM3EVA153 TEST OK \n");
  else
    printf("M3EVA153 TEST NG = %d \n",a);
  return 0;
}
 int f153( int a )
{
  if( a==10 )
   return 1;
  else
   return 0;
}
int 
f154 (void)
{
  static int a154;
  a154=10;
  if( a154==10 )
   return 1;
  else
   return 0;
}

static int a154=20;

int 
m3eva154 (void)
{
  if( a154==20 && f154() )
    printf("\nM3EVA154 TEST OK \n");
  else
    printf("M3EVA154 TEST NG = %d \n",a154);
  return 0;
}
int 
f155 (void)
{
  static int a155;
  a155=10;
  if( a155==10 )
   return 1;
  else
   return 0;
}

static int a155;

int 
m3eva155 (void)
{
  if( a155==0 && f155() )
    printf("\nM3EVA155 TEST OK \n");
  else
    printf("M3EVA155 TEST NG = %d \n",a155);
  return 0;
}
int 
m3eva156 (void)
{
  static int a;
  int i=0;
  a=10;
  {
    static int a=20;
    if( a==20 )
      i = 1;
    else
      printf("M3EVA156 TEST NG = %d \n",a);
  }
  if( a==10 && i==1 )
    printf("\nM3EVA156 TEST OK \n");
  else
    printf("M3EVA156 TEST NG = %d \n",a);
  return 0;
}
int 
m3eva157 (void)
{
  static int a;
  int i=0;
  a=10;
  {
    static int a;
    a = 20;
    if( a==20 )
      i = 1;
    else
      printf("M3EVA157 TEST NG = %d \n",a);
  }
  if( a==10 && i==1 )
    printf("\nM3EVA157 TEST OK \n");
  else
    printf("M3EVA157 TEST NG = %d \n",a);
  return 0;
}
int 
f158 (void)
{
  static int a158;
  a158=10;
  if( a158==10 )
   return 1;
  else
   return 0;
}

extern int a158=20;

int 
m3eva158 (void)
{
  if( a158==20 && f158() )
    printf("\nM3EVA158 TEST OK \n");
  else
    printf("M3EVA158 TEST NG = %d \n",a158);
  return 0;
}
int 
f159 (void)
{
  static int a159;
  a159=10;
  if( a159==10 )
   return 1;
  else
   return 0;
}

extern int a159;

int 
m3eva159 (void)
{
  if( a159==5 && f159() )
    printf("\nM3EVA159 TEST OK \n");
  else
    printf("M3EVA159 TEST NG = %d \n",a159);
  return 0;
}
int a159=5;
