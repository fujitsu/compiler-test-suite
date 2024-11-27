#include <stdlib.h>
#include <math.h>
#include <string.h>
  
 
 
 
 
 
 


#include <setjmp.h>
#include <stdio.h>
int workover (int i);
int reset (int i);
int b1sub (unsigned short int *s, unsigned short int *t);
int sub1 (int i_dum, int *m1i1, int *m1j1);
int mpsub (void);
int m3gmeb22 (void);
int m3mpjp01 (void);
int scrpz15 (void);
int m3eva289 (void);
int m3grtn02 (void);
int m3mpsi05 (void);
int scrpz07 (void);
int m3eva260 (void);
int m3mpyt02 (void);
int scrna16 (void);
int m3ccnt03 (void);
int mptest27 (void);
int m3eva228 (void);
int main()
{

   printf("*** \n\n");

   m3eva228();   
   mptest27();   
   m3ccnt03();   
   scrna16();    
   m3mpyt02();   
   m3eva260();   
   scrpz07();    
   m3mpsi05();   
   m3grtn02();   
   m3eva289();   
   scrpz15();    
   m3mpjp01();   
   m3gmeb22();   

   printf("\n*** \n");

exit (0);
   }



 
 
 


int f1f (void)
{
  {
    int f1a;
    f1a=10;
    if( f1a==10 )
        return 1;
      else
        return 0;
  }
}

extern int f1a;

int m3eva228 (void)
{
  if( f1a==0 && f1f() )
      printf("M3EVA228 TEST OK \n");
    else
      printf("M3EVA228 TEST NG = %d \n",f1a);
  return 0;
}
int f1a=0;

 
 
 


int f2f (void)
{
  {
    extern int f2a;
    if( f2a==20 )
        return 1;
      else
        return 0;
  }
}

extern int f2a=20;

int m3eva260 (void)
{
  if( f2a==20 && f2f() )
      printf("M3EVA260 TEST OK \n");
    else
      printf("M3EVA260 TEST NG = %d \n",f2a);
  return 0;
}

 
 
 


int m3eva289 (void)
{
  struct {
    int a;
    int b;
  } f3st;
  int f3f( register int a );
  f3st.a = 10;
  if( f3f(f3st.a) )
      printf("M3EVA289 TEST OK \n");
    else
      printf("M3EVA289 TEST NG = %d \n",f3st.a);
  return 0;
}

int f3f( register int a )
{
  if( a==10 )
      return 1;
    else
      return 0;
}

 
 
 


  static struct f5tag1 {
      int   f5arr[3];
      }f5cx ={1,2,3};

int m3gmeb22 (void)
{
  printf("*** M3GMEB22 TEST * START ***\n");

 

  {
  int   x1 = 0;
  x1 = f5cx.f5arr[1&&1];
  if(x1 == 2)
    printf("*** M3EMEB22-01 *** O   K ***\n");
  else
    printf("*** M3EMEB22-01 *** N   G ***\n");
  }

 

  {
  int   x2 = 0;
  x2 = f5cx.f5arr[1||0];
  if(x2 == 2)
    printf("*** M3EMEB22-02 *** O   K ***\n");
  else
    printf("*** M3EMEB22-02 *** N   G ***\n");
  }

 

  {
  int   x3 = 0;
  x3 = f5cx.f5arr[1<<1];
  if(x3 == 3)
    printf("*** M3EMEB22-03 *** O   K ***\n");
  else
    printf("*** M3EMEB22-03 *** N   G ***\n");
  }

 

  {
  int   x4 = 0;
  x4 = f5cx.f5arr[2>>1];
  if(x4 == 2)
    printf("*** M3EMEB22-04 *** O   K ***\n");
  else
    printf("*** M3EMEB22-04 *** N   G ***\n");
  }

 

  {
  int   x5 = 0;
  x5 = f5cx.f5arr[2==2];
  if(x5 == 2)
    printf("*** M3EMEB22-05 *** O   K ***\n");
  else
    printf("*** M3EMEB22-05 *** N   G ***\n");
  }

 

  {
  int   x6 = 0;
  x6 = f5cx.f5arr[1!=2];
  if(x6 == 2)
    printf("*** M3EMEB22-06 *** O   K ***\n");
  else
    printf("*** M3EMEB22-06 *** N   G ***\n");
  }

 

  {
  int   x7 = 0;
  x7 = f5cx.f5arr[1<2];
  if(x7 == 2)
    printf("*** M3EMEB22-07 *** O   K ***\n");
  else
    printf("*** M3EMEB22-07 *** N   G ***\n");
  }

 

  {
  int   x8 = 0;
  x8 = f5cx.f5arr[2>1];
  if(x8 == 2)
    printf("*** M3EMEB22-08 *** O   K ***\n");
  else
    printf("*** M3EMEB22-08 *** N   G ***\n");
  }

 

  {
  int   x9 = 0;
  x9 = f5cx.f5arr[2<=2];
  if(x9 == 2)
    printf("*** M3EMEB22-09 *** O   K ***\n");
  else
    printf("*** M3EMEB22-09 *** N   G ***\n");
  }

 

  {
  int   x0 = 0;
  x0 = f5cx.f5arr[2>=2];
  if(x0 == 2)
    printf("*** M3EMEB22-10 *** O   K ***\n");
  else
    printf("*** M3EMEB22-10 *** N   G ***\n");
  }
  printf("*** M3EMEB22 TEST *** END ***\n");
  return 0;
}

 
 
 



     struct f6tag {
                int  i1 :1;
       unsigned int  ui1:2;
                long l1 :3;
       unsigned long ul1:4;
                int  i2 :5;
       unsigned int  ui2:6;
                long l2 :7;
       unsigned long ul2:8;
                int  i3 :1;
       unsigned int  ui3:2;
                long l3 :3;
       unsigned long ul3:4;
                int  i4 :5;
       unsigned int  ui4:6;
                long l4 :7;
       unsigned long ul4:8;
     } f6st;

int m3grtn02 (void)  {


     int  a1,a2,a3,a4,b1,b2,b3,b4;
     int  c1,c2,c3,c4,d1,d2,d3,d4;

              int    f6f1(),f6f2(),f6f3(),f6f4();
     unsigned int    f6f5(),f6f6(),f6f7(),f6f8();
              long   f6f9(),f6f10(),f6f11(),f6f12();
     unsigned long   f6f13(),f6f14(),f6f15(),f6f16();

  printf("M3GRTN02 TEST-START \n");

     a1=f6f1();

#if defined (__GNUC__)
     printf("M3GRTN02 1-1 TEST -O  K- \n");
#else
     if(a1==1)
        printf("M3GRTN02 1-1 TEST -O  K- \n");
     else
        printf("M3GRTN02 1-1 TEST - NG - \n");
#endif

     a2=f6f2();
     if(a2==1)
        printf("M3GRTN02 1-2 TEST -O  K- \n");
     else
        printf("M3GRTN02 1-2 TEST - NG - \n");

     a3=f6f3();
     if(a3==1)
        printf("M3GRTN02 1-3 TEST -O  K- \n");
     else
        printf("M3GRTN02 1-3 TEST - NG - \n");

     a4=f6f4();
     if(a4==1)
        printf("M3GRTN02 1-4 TEST -O  K- \n");
     else
        printf("M3GRTN02 1-4 TEST - NG - \n");

     b1=f6f5();
     if(b1==2)
        printf("M3GRTN02 2-1 TEST -O  K- \n");
     else
        printf("M3GRTN02 2-1 TEST - NG - \n");

     b2=f6f6();
     if(b2==2)
        printf("M3GRTN02 2-2 TEST -O  K- \n");
     else
        printf("M3GRTN02 2-2 TEST - NG - \n");

     b3=f6f7();
     if(b3==2)
        printf("M3GRTN02 2-3 TEST -O  K- \n");
     else
        printf("M3GRTN02 2-3 TEST - NG - \n");

     b4=f6f8();
     if(b4==2)
        printf("M3GRTN02 2-4 TEST -O  K- \n");
     else
        printf("M3GRTN02 2-4 TEST - NG - \n");

     c1=f6f9();

#if defined (__GNUC__)
     printf("M3GRTN02 3-1 TEST -O  K- \n");
#else
     if(c1==1)
        printf("M3GRTN02 3-1 TEST -O  K- \n");
     else
        printf("M3GRTN02 3-1 TEST - NG - \n");
#endif

     c2=f6f10();
     if(c2==3)
        printf("M3GRTN02 3-2 TEST -O  K- \n");
     else
        printf("M3GRTN02 3-2 TEST - NG - \n");

     c3=f6f11();
     if(c3==3)
        printf("M3GRTN02 3-3 TEST -O  K- \n");
     else
        printf("M3GRTN02 3-3 TEST - NG - \n");

     c4=f6f12();
     if(c4==4)
        printf("M3GRTN02 3-4 TEST -O  K- \n");
     else
        printf("M3GRTN02 3-4 TEST - NG - \n");

     d1=f6f13();
     if(d1==1)
        printf("M3GRTN02 4-1 TEST -O  K- \n");
     else
        printf("M3GRTN02 4-1 TEST - NG - \n");

     d2=f6f14();
     if(d2==3)
        printf("M3GRTN02 4-2 TEST -O  K- \n");
     else
        printf("M3GRTN02 4-2 TEST - NG - \n");

     d3=f6f15();
     if(d3==4)
        printf("M3GRTN02 4-3 TEST -O  K- \n");
     else
        printf("M3GRTN02 4-3 TEST - NG - \n");

     d4=f6f16();
     if(d4==4)
        printf("M3GRTN02 4-4 TEST -O  K- \n");
     else
        printf("M3GRTN02 4-4 TEST - NG - \n");

  printf("M3GRTN02 TEST-END \n");
  return 0;
}

  int f6f1 (void) {
        f6st.i1=1;
        return(f6st.i1);
  }

  int f6f2 (void) {
        f6st.ui1=1;
        return(f6st.ui1);
  }

  int f6f3 (void) {
        f6st.l1=1;
        return(f6st.l1);
  }

  int f6f4 (void) {
        f6st.ul1=1;
        return(f6st.ul1);
  }

  unsigned int f6f5 (void) {
        f6st.i2=2;
        return(f6st.i2);
  }

  unsigned int f6f6 (void) {
        f6st.ui2=2;
        return(f6st.ui2);
  }

  unsigned int f6f7 (void) {
        f6st.l2=2;
        return(f6st.l2);
  }

  unsigned int f6f8 (void) {
        f6st.ul2=2;
        return(f6st.ul2);
  }

  long 
f6f9 (void) {
        f6st.i3=1;
        return(f6st.i3);
  }

  long 
f6f10 (void) {
        f6st.ui3=3;
        return(f6st.ui3);
  }

  long 
f6f11 (void) {
        f6st.l3=3;
        return(f6st.l3);
  }

  long 
f6f12 (void) {
        f6st.ul3=4;
        return(f6st.ul3);
  }

  unsigned long 
f6f13 (void) {
        f6st.i4=1;
        return(f6st.i4);
  }

  unsigned long 
f6f14 (void) {
        f6st.ui4=3;
        return(f6st.ui4);
  }

  unsigned long 
f6f15 (void) {
        f6st.l4=4;
        return(f6st.l4);
  }

  unsigned long 
f6f16 (void) {
        f6st.ul4=4;
        return(f6st.ul4);
  }

 
 
 



int m3ccnt03 (void) {

   printf("M3CCNT03   TEST START \n");

#if  + 1
   printf(" *** O K (38-01) *** \n");
#else
   printf(" *** N G (38-01) *** \n");
#endif

#if  - 1
   printf(" *** O K (38-03) *** \n");
#else
   printf(" *** N G (38-03) *** \n");
#endif

#if  ~ 1
   printf(" *** O K (38-06) *** \n");
#else
   printf(" *** N G (38-06) *** \n");
#endif

#if  ! 1
   printf(" *** N G (38-08) *** \n");
#else
   printf(" *** O K (38-08) *** \n");
#endif

#if  (1)
   printf(" *** O K (39-02) *** \n");
#else
   printf(" *** N G (39-02) *** \n");
#endif

#if  1
   printf(" *** O K (39-05) *** \n");
#else
   printf(" *** N G (39-05) *** \n");
#endif

   printf("M3CCNT03   TEST END \n   ");
   return 0;
}


 
 
 


    int    mp1err=0;
    void   mp1errck();
int mptest27 (void)
    {
           int *mp1fnc1(int),*c,mp1fnc2(int *),*mp1fnc3();
           printf("******** MPTEST27 START **************\n");
           c=mp1fnc1(mp1fnc2(mp1fnc3()));
           if(*c!=6)
             mp1err++;
           mp1errck();
           printf("******** MPTEST27 END ****************\n");
	   return 0;
    }
    int    *mp1fnc1(int d)
    {
           static int *a,b=5;
           b=b+d;
           a=&b;
           if(*a!=6)
             mp1err++;
           else
            {
              printf("******** MPTEST27 MP1FNC1 RUN **********\n");
            }
           return(a);
    }
    int    mp1fnc2(int *e)
    {
           if(*e==10)
            {
             printf("******** MPTEST27 MP1FNC2 RUN **********\n");
             return(1);
            }
           else
            {
             mp1err++;
             return(0);
            }
    }
    int *
mp1fnc3 (void)
    {
           static int f=10;
           printf("******** MPTEST27 MP1FNC3 RUN **********\n");
           return(&f);
    }
 
 int mptest30 (void)
 {
 int    mp1err=0;
        void          mp1fnc(int *),mp1errck();
        static int    b;
        int          *a;
        printf("******** MPTEST27 START **************\n");
        b=5;
        a=&b;
        mp1fnc(a);
        mp1errck();
        printf("******** MPTEST27 END ****************\n");
	return 0;
 }
 void 
mp1fnc (int *c)
 {
        int           d;
        d=5;
        d=d+*c;
        if(d!=10)
          mp1err++;
 }
 void 
mp1errck (void)
    {
           if(mp1err==0)
            {
             printf("***    OK                       ***\n");
            }
           else
            {
             printf("***    NG                       ***\n");
            }
 }




 
 
 


 int y;
 int m3mpsi05 (void) {
 struct mptag {
  int mema;
  int memb;
  char memc[4];
  };
 struct mptag var1,var2,var3,*pint;
 int a[10];
 int x;
 pint=&var3;
 pint->mema=5;
 pint->memb=15;
 a[4]=5;
 a[pint->mema]=3;
 pint=&var2;
 pint->memb=4;
 x=pint->memb;
 pint->memb=a[4];
 x=pint->memb;
 pint=&var3;
 y=x;
 a[1]=y;
 pint=&var3;
 mpsub();
 x=a[1];
 pint->memc[1]=y+pint->memb;
 if (pint->memc[1]==37) printf("M3MPSI05 OK\n");
 else
 printf("%d\n",pint->memc[1]);
 return 0;
 }
 int mpsub (void)
 {
 y=22;
 return 0;
 }



 
 
 


  
 jmp_buf  env_area;
 int      m1int1,m1int2,err_cnt,m1i,m1j,m1k;
 int      int_mr1[10] = {0,1,2,3,4,5,6,7,8,9};
 int      int_mr2[10];                             
 int      int_mns[10] = {0,1,2,3,4,8,6,7,8,9};  

 int m3mpjp01 (void)
 {
   printf("*** M3MPJP01 START ***\n");
   for (m1i=0,m1j=0;m1j<10;m1i++,m1j++)
   {
     m1int1=int_mr1[m1i];
     m1int2=setjmp(env_area);
     int_mr2[m1j]=int_mr1[m1i];
     if (m1int2 == 1)
     {
       goto l1;
     }
   }
   sub1(m1int1,&m1i,&m1j);
 l1:;
   err_cnt=0;
   for (m1k=0;m1k<10;m1k++)
   {
     if (int_mr2[m1k] != int_mns[m1k])
     {
       printf("***ng*** int_mr2(%d)=%d, right_value=%d\n",
              m1k,int_mr2[m1k],int_mns[m1k]);
       err_cnt++;
     }
   }
   if (err_cnt == 0)
   {
     printf("**** OK ****\n");
   }
   printf("*** M3MPJP01 END ***\n");
   return 0;
 }

 int sub1 (int i_dum, int *m1i1, int *m1j1)
 {
   *m1i1=8;
   *m1j1=5;
   longjmp(env_area,1);
 }




 
 
 


struct numlist
  {
   int number ;
   struct numlist *benum ;
   struct numlist *afnum ;
  } ;
   int mpdata[10];
   int mpn ;
int putdata (struct numlist *justnum, struct numlist *updatad);
int dataout (struct numlist *justnum);
int m3mpyt02 (void)
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
   return 0;
}
int putdata (struct numlist *justnum, struct numlist *updatad)
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
   return 0;
}
int dataout (struct numlist *justnum)
{
if (justnum->benum!=0)
    dataout (justnum->benum);
printf ("value:- %d -\n",justnum->number);
mpdata[mpn] = justnum->number ;
mpn++ ;
if (justnum->afnum!=0)
    dataout (justnum->afnum);
 return 0;
}



 
 
 


unsigned short int b1a,b1b,b1c,b1d,b1e;

int scrna16 (void)
{
unsigned short int b1a,b1b,b1c,b1d,b1e;
    b1b = 5;
    b1c = 2;
    b1sub(&b1b,&b1c);
    b1a = b1b + b1c;
    b1d = b1a + b1c;
    b1sub(&b1a,&b1c);
    b1e = b1a +b1c ;
    if( b1e == 12)
          printf( " TEST ==> OK \n");
    else
          printf( " TEST ==> NG \n");
    return 0;
 }

int b1sub (unsigned short int *s, unsigned short int *t)
{
      unsigned short int w;

      w = *s;
      *s = *t;
      *t = w;
      return 0;
}


 
 
 


#ifdef v10

#define b2pr(format,value) printf("value = %format ",(value))
#define nl putchar('\n')
#define b2prnt1(f,x1) b2pr(f,x1); nl
#define b2prnt2(f,x1,x2) b2pr(f,x1); b2prnt1(f,x2)
#define b2prnt3(f,x1,x2,x3) b2pr(f,x1); b2prnt2(f,x2,x3)
#define b2prnt4(f,x1,x2,x3,x4) b2pr(f,x1); b2prnt3(f,x2,x3,x4)

#define low 0
#define high 5
#define change 2

int i=low;

int scrpz15 (void)
{
    auto int i=high;
    reset(i/2); b2prnt1(d,i);
    reset(i=i/2); b2prnt1(d,i);
    i = reset(i/2); b2prnt1(d,i);

    workover(i); b2prnt1(d,i);
}
int workover (int i)
{
      i = (i%i) * ((i*i)/(2*i) + 4 );
      b2prnt1(d,i);
      return(i);
}
int reset (int i)
{
      i = i<=change ? high : low;
      return (i);
}
#else
 
 
int b2sub (int j)
{
    static int i=0;
    static int data[] = { 5,2,5,0,5 };
    if( j != data[i++] ) {
      puts(" NG ");
      exit(0);
    }
    return 0;
}

#define b2pr(format,value) \
  printf(#value" = %"#format" ",(value)); b2sub(value)
#define nl printf("\n")
#define b2prnt1(f,x1) b2pr(f,x1); nl
#define b2prnt2(f,x1,x2) b2pr(f,x1); b2prnt1(f,x2)
#define b2prnt3(f,x1,x2,x3) b2pr(f,x1); b2prnt2(f,x2,x3)
#define b2prnt4(f,x1,x2,x3,x4) b2pr(f,x1); b2prnt3(f,x2,x3,x4)

#define low 0
#define high 5
#define change 2

int i=low;

int scrpz15 (void)
{
    auto int i=high;
    reset(i/2); b2prnt1(d,i);
    reset(i=i/2); b2prnt1(d,i);
    i = reset(i/2); b2prnt1(d,i);

    workover(i); b2prnt1(d,i);
    puts(" SCRPZ15 PASS ");
    return 0;
}
int workover (int i)
{
      i = (i%i) * ((i*i)/(2*i) + 4 );
      b2prnt1(d,i);
      return(i);
}
int reset (int i)
{
      i = i<=change ? high : low;
      return (i);
}
#endif

 
 
 


  
#ifndef v10
 

#define print(format,x)    \
 { char buf[10]; sprintf(buf,"%"#format,x); bchk(buf); }

static char *bdata[] = {
"53" ,
"5" ,
"5" ,
"5" ,
"1" ,
"37777777770" ,
"37777777770" ,
"37777777777" ,
"3777777777" ,
"-1" ,
"536870911"
} ;
int bchk (char *p)
{
      static int i=0;
      if( strcmp(bdata[i++],p) != 0 ) {
        puts(" NG ");
        printf("%s<<<",p);
        printf("%s<<<",bdata[i]);
      }
      return 0;
}

int integer = 5;
char chrctr = '5';
char *string = "5";

int scrpz07 (void)
{
 
      print(d,chrctr); print(d,integer);
      print(s,string); print(c,chrctr); 
      print(d,( '5'>5 ));

      printf(" SCRPZ07 START\n");
      {
            int sx = -8;
            unsigned ux = -8;

            print(o,sx); print(o,ux);
            print(o, sx>>3 ); print(o, ux>>3 );
            print(d, sx>>3 ); print(d, ux>>3 );
      }
      puts(" SCRPZ07 PASS ");
      return 0;
}
#else
 

#define print(format,x) printf("x = %format\n",x)

int integer = 5;
char character = '5';
char *string = "5";

int scrpz07 (void)
{
      print(d,string); print(d,character); print(d,integer);
      print(s,string); print(c,character); print(c,integer=53);
      print(d,( '5'>5 ));


      {
            int sx = -8;
            unsigned ux = -8;

            print(o,sx); print(o,ux);
            print(o, sx>>3 ); print(o, ux>>3 );
            print(d, sx>>3 ); print(d, ux>>3 );
      }
}
#endif
