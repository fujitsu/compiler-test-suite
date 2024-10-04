
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
int ser (int *x, int *y);
int func5 (void);
int func4 (void);
int m3mpjp00 (void);
int mptest08 (void);
int m3mpcm02 (void);
int mptest07 (void);
int m3mpyt01 (void);
int m3mpsi01 (void);
int scrpz04 (void);
int scrna05 (void);
int scrlp23 (void);
int m3glgo01 (void);
int m3gcov01 (void);
int func1 (void);
int func2 (void);
int func3 (void);
int 
main (void)  {

  m3gcov01();   
  m3glgo01();   
  scrlp23();    
  scrna05();    
  scrpz04();    
  m3mpsi01();   
  m3mpyt01();   
  mptest07();   
  m3mpcm02();   
  mptest08();   
  m3mpjp00();   

}


int 
m3gcov01 (void)
{
  char               a;
  int                b;
  short int          c;
  long  int          d;
  signed char        e;
  signed int         f;
  signed short int   g;
  signed long  int   h;
  unsigned char      i;
  unsigned int       j;
  unsigned short int k;
  unsigned long  int l;

  printf("M3GCOV01 START\n");


  a = (char)(char)127;
  if (a == 127)
    printf("--- M3GCOV01 (01-01) OK ---\n");
  else {
    printf("*** M3GCOV01 (01-01) NG ***\n");
    printf("A = %x\n" , a);
  }


  a = (char)(char)0xff;
#if defined(S_CHAR) || defined(__GNUC__)
  if (a == -1)
#else
  if (a == 0xff)
#endif
    printf("--- M3GCOV01 (01-02) OK ---\n");
  else {
    printf("*** M3GCOV01 (01-02) NG ***\n");
    printf("A = %x\n" , a);
  }


  b = (int)(int)1234;
  if (b == 1234)
    printf("--- M3GCOV01 (01-03) OK ---\n");
  else {
    printf("*** M3GCOV01 (01-03) NG ***\n");
    printf("B = %x\n" , b);
  }


  b = (int)(int)-1234;
  if (b == -1234)
    printf("--- M3GCOV01 (01-04) OK ---\n");
  else {
    printf("*** M3GCOV01 (01-04) NG ***\n");
    printf("B = %x\n" , b);
  }


  c = (short int)(short int)1111;
  if (c == 1111)
    printf("--- M3GCOV01 (01-05) OK ---\n");
  else {
    printf("*** M3GCOV01 (01-05) NG ***\n");
    printf("C = %x\n" , c);
  }


  c = (short int)(short int)-32767;
  if (c == -32767)
    printf("--- M3GCOV01 (01-06) OK ---\n");
  else {
    printf("*** M3GCOV01 (01-06) NG ***\n");
    printf("C = %x\n" , c);
  }


  d = (long int)(long int)2147483647;
  if (d == 2147483647)
    printf("--- M3GCOV01 (01-07) OK ---\n");
  else {
    printf("*** M3GCOV01 (01-07) NG ***\n");
    printf("D = %x\n" , d);
  }


  d = (long int)(long int)-2147483648;
  if (d == -2147483648)
    printf("--- M3GCOV01 (01-08) OK ---\n");
  else {
    printf("*** M3GCOV01 (01-08) NG ***\n");
    printf("D = %x\n" , d);
  }


  e = (signed char)(signed char)99;
  if (e == 99)
    printf("--- M3GCOV01 (01-09) OK ---\n");
  else {
    printf("*** M3GCOV01 (01-09) NG ***\n");
    printf("E = %x\n" , e);
  }


  e = (signed char)(signed char)-10;
  if (e == -10)
    printf("--- M3GCOV01 (01-10) OK ---\n");
  else {
    printf("*** M3GCOV01 (01-10) NG ***\n");
    printf("E = %x\n" , e);
  }


  f = (signed int)(signed int)11;
  if (f == 11)
    printf("--- M3GCOV01 (01-11) OK ---\n");
  else {
    printf("*** M3GCOV01 (01-11) NG ***\n");
    printf("F = %x\n" , f);
  }


  f = (signed int)(signed int)-12;
  if (f == -12)
    printf("--- M3GCOV01 (01-12) OK ---\n");
  else {
    printf("*** M3GCOV01 (01-12) NG ***\n");
    printf("F = %x\n" , f);
  }


  g = (signed short int)(signed short int)13;
  if (g == 13)
    printf("--- M3GCOV01 (01-13) OK ---\n");
  else {
    printf("*** M3GCOV01 (01-13) NG ***\n");
    printf("G = %x\n" , g);
  }


  g = (signed short int)(signed short int)0xffff;
  if (g == -1)
    printf("--- M3GCOV01 (01-14) OK ---\n");
  else {
    printf("*** M3GCOV01 (01-14) NG ***\n");
    printf("G = %x\n" , g);
  }


  h = (signed long int)(signed long int)15;
  if (h == 15)
    printf("--- M3GCOV01 (01-15) OK ---\n");
  else {
    printf("*** M3GCOV01 (01-15) NG ***\n");
    printf("H = %x\n" , h);
  }


#if INT64||LONG64 || __x86_64__ || __aarch64__
  h = (signed long int)(signed long int)0xffffffffffffffff;
#else
  h = (signed long int)(signed long int)0xffffffff;
#endif
  if (h == -1)
    printf("--- M3GCOV01 (01-16) OK ---\n");
  else {
    printf("*** M3GCOV01 (01-16) NG ***\n");
    printf("H = %x\n" , h);
  }


  i = (unsigned char)(unsigned char)255;
  if (i == 255)
    printf("--- M3GCOV01 (01-17) OK ---\n");
  else {
    printf("*** M3GCOV01 (01-17) NG ***\n");
    printf("I = %x\n" , i);
  }


  j = (unsigned int)(unsigned int)4294967295;
  if (j == 4294967295)
    printf("--- M3GCOV01 (01-18) OK ---\n");
  else {
    printf("*** M3GCOV01 (01-18) NG ***\n");
    printf("J = %x\n" , j);
  }


  k = (unsigned short int)(unsigned short int)19;
  if (k == 19)
    printf("--- M3GCOV01 (01-19) OK ---\n");
  else {
    printf("*** M3GCOV01 (01-19) NG ***\n");
    printf("K = %x\n" , k);
  }


  l = (unsigned long int)(unsigned long int)20;
  if (l == 20)
    printf("--- M3GCOV01 (01-20) OK ---\n");
  else {
    printf("*** M3GCOV01 (01-20) NG ***\n");
    printf("L = %x\n" , l);
  }


  printf("M3GCOV01 END  \n");
}


int 
m3glgo01 (void)
{
  printf("M3GLGO01 START\n");
  func1();
  func2();
  func3();
  func4();
  func5();
  printf("M3GLGO01 END  \n");
}
int 
func1 (void){
  static int *p,i=1;
  static short int *sp,si=2;
  static char  *cp,c=3;
  static unsigned int *uip,ui=4;
  static unsigned short int *usp,us=5;
  static unsigned char      *ucp,uc=6;

  p=&i;
  sp=&si;
  cp=&c;
  uip=&ui;
  usp=&us;
  ucp=&uc;

  if (*p==1  &&  *sp==2 && *cp==3 && *uip==4 && *usp==5 && *ucp==6)
    printf("M3GLGO01 FUNC1 OK\n");
  else
    printf("M3GLGO01 FUNC1 NG\n");
}
int 
func2 (void){
  struct stag { int sa; char sb; } st,*stp;
  union  utag { int ua; char ub; } ut,*utp;
  st.sb=1;
  ut.ub=2;

  stp=&st;
  utp=&ut;

  if ((*stp).sb==1 && (*utp).ub==2)
    printf("M3GLGO01 FUNC2 OK\n");
  else
    printf("M3GLGO01 FUNC2 NG\n");
}
int 
func3 (void){
  int (*fp)(),f();
  int ar[3],*arp;
  ar[0]=1;ar[1]=2;ar[2]=3;

  fp=f;
  arp=ar;

  if ((*fp)()==1 && *(arp+2)==3)
    printf("M3GLGO01 FUNC3 OK\n");
  else
    printf("M3GLGO01 FUNC3 NG\n");
}
int 
f (void)
{
   return 1;
}
int 
func4 (void){
  int  *ap[2],i;
  char *cp,c;
  unsigned char *ucp,uc;
  i=1;c=1;uc=1;

  ap[1]=&i;
  cp=&c+1;
  ucp=&uc+(i&&i);

  if (*ap[1]==1 && *(cp-1)==1 && *(ucp-1)==1)
    printf("M3GLGO01 FUNC4 OK\n");
  else
    printf("M3GLGO01 FUNC4 NG\n");
}
int 
func5 (void){
  int  ar[3],*ap;
  char **cpp,*cp,*p,c;
  unsigned char *ucp;
  c=1;ar[2]=2;
  p=&c;
  cpp=&p;
  ap=&ar[2];
  cp=&(**cpp);

  if (*ap==2 && *cp==1)
    printf("M3GLGO01 FUNC5 OK\n");
  else
    printf("M3GLGO01 FUNC5 NG\n");
}


int 
scrlp23 (void)
{
    struct tag {
      unsigned int a:4;
      unsigned int b:4;
    } st;
    st.a=0;
    for(st.b=0;st.b<3;st.b++)
      st.a+=st.b;
    if( st.a != 3 ) puts(" NG ");
    else            puts(" OK ");
}


struct tag1{
      unsigned int  a :4;
      unsigned int  b :4;
};
struct tag2{
      unsigned int  c :4;
      unsigned int  d :4;
};
int 
scrna05 (void)
{
     struct tag1 *p,x;
     struct tag2 *q,y;

     p = &x;
     q = &y;
     p->a = 1;
     p->b = 5;
     q->c = 1;
     q->d = 5;
     if(p->b == q->d)
         printf(" test(no.1) ==> ok");
     else if(p->a == q->c)
         printf(" test(no.1) ==> ok");
     else
         printf(" test       ==> ng");
}


#ifdef v10
#define print(int) printf("int = %d\n",int)

int 
scrpz04 (void)
{
      int x,y,z;

      x = 03;y = 02; z = 01;
      print( x | y & z );
      print( x | y & ^ z );
      print( x ~ y & ^ z );
      print( x & y && z );
      x = 1; y = -1;
      print( | x | x );
      print( ^ x | x );
      print( x ~ x);
      x <<= 3; print(x);
      y <<= 3; print(y);
      y >>= 3; print(y);
}
#else
#define print(int,y)  if( (int) != y ) printf(" NG %d \n",int);

int 
scrpz04 (void)
{
      int x,y,z;

      x = 03;y = 02; z = 01;
      print( x | y & z ,3);
      print( x | y & ~ z ,3);
      print( x ^ y & ~ z ,1);
      print( x & y && z,1 );
      x = 1; y = -1;
      print( ! x | x ,1);
      print( ~ x | x ,-1);
      print( x ^ x,0 );
      x <<= 3; print(x,8);
      y <<= 3; print(y,-8);
      y >>= 3; print(y,-1);
      puts(" SCRPZ04 PASS ");
}
#endif


 int 
m3mpsi01 (void)
 {
 float *p,a;
 a=1.23;
 p=&a;
 *p=100.0;
 if (*p==100.0) printf("%4s\n","ok-1");
 else           printf("%4s\n","ng-1");
 }


int 
m3mpyt01 (void)
{
  static int b[10]={1,2,3,4,5,6,7,8,9,10};
  int a[10];
  int i,j;
  printf("                                      \n");
  a[0]=2;
  a[1]=9;
  a[2]=1;
  a[3]=5;
  a[4]=6;
  a[5]=8;
  a[6]=4;
  a[7]=10;
  a[8]=3;
  a[9]=7;
  i=0;
  while(i<=9){
    j=i+1;
    while(j<=9){
      ser(&a[i],&a[j]);
      j++;
    }
    i++;
  }
  printf(" the smallest  is %d    \n",a[0]);
  printf(" the second    is %d    \n",a[1]);
  printf(" the third     is %d    \n",a[2]);
  printf(" the forth     is %d  \n",a[3]);
  printf(" the fifth     is %d    \n",a[4]);
  printf(" the sixth     is %d    \n",a[5]);
  printf(" the seventh   is %d    \n",a[6]);
  printf(" the eigth     is %d    \n",a[7]);
  printf(" the nineth    is %d    \n",a[8]);
  printf(" the biggest   is %d    \n",a[9]);
  if(memcmp(a,b,40)==0)
       printf("ok\n");
  else printf("ng\n");
}
int ser(x,y)
int *x,*y;
{
  int demo;
    if(*x>*y){
      demo=*x;
      *x=*y;
      *y=demo;
    }
  return 0;
}


   struct  st1  {
      int  st_a;
      int  st_b;
      int  st_c;
      struct st1 *st_nxt;
   };
   int  vt(struct st1 *,char);
   int  ut(struct st1 *);
   int  ht(struct st1 *);
   void errpr(int);

 int 
mptest07 (void)
 {
    struct  st1  st[10], *stp;
    int          i,totlv,totlva,totlvb,totlvc,totlu,totlh;

    printf("\n***** MPTEST07  START *****\n");
    for( i=0 ; i<10 ; i++ ){
       st[i].st_a = i;
       st[i].st_b = i+10;
       st[i].st_c = i*i;
       if(i==9)
         st[i].st_nxt = 0;
       else
         st[i].st_nxt = &st[i+1];
    }
    stp = st;
    totlva = vt(stp,'a');
    totlvb = vt(stp,'b');
    totlvc = vt(stp,'c');
    totlv  = totlva + totlvb + totlvc;
    totlu = 0;
    for( i=0 ; i<10 ; i++)
        totlu =totlu + ut(&st[i]);
    totlh = ht(st);

    if((totlv == totlu) && (totlu == totlh)){
       printf("     TOTLV = %d \n",totlv);
       printf("          TOTLVA = %d \n",totlva);
       printf("          TOTLVB = %d \n",totlvb);
       printf("          TOTLVC = %d \n",totlvc);
       printf("     TOTLU = %d \n",totlu);
       printf("     TOTLH = %d \n",totlh);
       printf("***** MPTEST07  OK *****\n");
    } else {
       printf("   ** NG! NG! NG! **\n");
       printf("     TOTLV = %d \n",totlv);
       printf("          TOTLVA = %d \n",totlva);
       printf("          TOTLVB = %d \n",totlvb);
       printf("          TOTLVC = %d \n",totlvc);
       printf("     TOTLU = %d \n",totlu);
       printf("     TOTLH = %d \n",totlh);
       printf("***** MPTEST07  NG *****\n");
    }
}

  int vt(struct st1 *ptr,char c)
 {
    int h;

     if(ptr == 0) errpr(1);
     switch(c){
       case 'a':
         for( h = 0 ; ptr != 0 ; ptr = ptr->st_nxt )
            h = h + ptr->st_a;
         return(h);
       case 'b':
         for( h = 0 ; ptr != 0 ; ptr = ptr->st_nxt )
            h = h + ptr->st_b;
         return(h);
       case 'c':
         for( h = 0 ; ptr != 0 ; ptr = ptr->st_nxt )
            h = h + ptr->st_c;
         return(h);
       default:
         errpr(2);
     }
 }

 int 
ut (struct st1 *st)
{
    int total;

       if(st == 0) errpr(3);
       total = st->st_a + st->st_b + st->st_c;
       return(total);
}

 int 
ht (struct st1 *st)
{
   int total,wt;
   struct st1 *pp;

   if(st == 0) errpr(4);
   total = 0;
   for(pp=st ; pp != 0 ; pp = pp->st_nxt){
      wt = pp->st_a + pp->st_b + pp->st_c;
      total = total + wt;
   }
   return(total);
}

 void 
errpr (int cd)
 {
      switch(cd){
        case 1:
        case 2:
          printf("  *** NG  IN 'vt'''\n");
          break;
        case 3:
          printf("  *** NG  IN 'ut'''\n");
          break;
        case 4:
          printf("  *** NG  IN 'ht'''\n");
          break;
        default:
          cd = -1;
      }
      printf("***** MPTEST07 NG ***** code = %d",cd);
      exit(0);
 }


#if INT64
#define int __int32
#endif

 int   outi1,outi2;
 float outf1,outf2;
 int 
m3mpcm02 (void)
 {
   int *pi,*qi;
   int ai,bi,ci,di,ei,fi,gi;
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
       printf("ok of b-1-1\n");
     }
   }
   ai=10;
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   pu->xi=200;
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
   ei=pu->as.aa[0];
   if(ei==fi)
   {
     ai=pu->xf+bi;
     printf("error of b-1-3 at first : ei = %d\n",ei);
   }
   else
   {
     if(ei!=0x42c80000)   
     {
       printf("error of b-1-3 at second : ei = %d\n",ei);
     }
     else
     {
       printf("ok of b-1-3\n");
     }
   }
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   xu.xf=200.0;
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
       printf("ok of b-1-4\n");
     }
   }
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   xu.cc[0]=200;
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
       printf("ok of b-1-5\n");
     }
   }
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   pu->cc[0]=200;
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
       printf("ok of b-1-6\n");
     }
   }
   pu->as.aa[0]=10;

   fi=pu->as.aa[0];
   xu.xi=200;
   ei=pu->as.aa[0];
   if(ei!=200) {
     printf("error                 \n");
   }
 }

#if INT64
#undef int
#endif


 static char *okng ="OK";

 int 
mptest08 (void)
 {
   char *func10(int *),*func20(int *),*func30(int *);

   static int exi=0;
   char      *str;

     printf("\n***** MPTEST08 START *****\n");
     printf("    * CALL func1 *\n");
     str = func10(&exi);
     if(!strcmp(str,"    * OUT func10 *")){
        if(exi==1){
           printf("     +++ OK exi=%d +++\n",exi);
        } else {
           printf("     +++ NG exi=%d +++\n",exi);
           strcpy(okng,"NG");
        }
     } else {
        printf("     +++ NG func10 STRING str=%s\n",str);
     }
     printf("    * CALL func20 *\n");
     str = func20(&exi);
     if(!strcmp(str,"    * OUT func20 *")){
        if(exi==3){
           printf("     +++ OK exi=%d +++\n",exi);
        } else {
           printf("     +++ NG exi=%d +++\n",exi);
           strcpy(okng,"NG");
        }
     } else {
        printf("     +++ NG func20 STRING str=%s\n",str);
     }
     printf("    * CALL func30 *\n");
     str = func30(&exi);
     if(!strcmp(str,"    * OUT func30 *")){
        if(exi==6){
           printf("     +++ OK exi=%d +++\n",exi);
        } else {
           printf("     +++ NG exi=%d +++\n",exi);
           strcpy(okng,"NG");
        }
     } else {
        printf("     +++ NG func30 STRING str=%s\n",str);
     }

     printf("   ** MPTEST08 %s %s %s ** \n",okng,okng,okng);
     printf("***** MPTEST08 END *****\n\n");
 }

 char *
func10 (int *p)
 {
     *p = *p+1;
     return("    * OUT func10 *");
 }

 char *
func20 (int *p)
 {
    static int i=0;

     if(++i <= 2){
        *p = *p+1;
        func20(p);
     }
     return("    * OUT func20 *");
 }

 char *
func30 (int *p)
 {
    static int i=0;

     if(++i <= 3){
        *p = *p+1;
        func30(p);
     }
     return("    * OUT func30 *");
 }


#include  <setjmp.h>
 int sub2 (void);
 int sub1 (void);
 int ser (int *x, int *y);
 jmp_buf  env_area;
 int      int1,int2;

 int 
m3mpjp00 (void)
 {
   int1=1;
   int2=2;
   switch (setjmp(env_area)) {
     case 0: if((int1==1)&&(int2==2))
             {
               printf("test-1 ok \n");
             }
             else
             {
               printf("test-1 ng. int1=%d,int2=%d\n",int1,int2);
             }
             goto l1;
     case 1: if((int1==10)&&(int2==20))
             {
               printf("test-2 ok \n");
             }
             else
             {
               printf("test-2 ng. int1=%d,int2=%d\n",int1,int2);
             }
             goto l2;
     case 2: if((int1==100)&&(int2==200))
             {
               printf("test-3 ok \n");
             }
             else
             {
               printf("test-3 ng. int1=%d,int2=%d\n",int1,int2);
             }
             return 0;
     }
 l1: ;
   sub1();
 l2: ;
   sub2();
 }

 int 
sub1 (void)
 {
   int1=10;
   int2=20;
   longjmp(env_area,1);
 }

 int 
sub2 (void)
 {
   int1=100;
   int2=200;
   longjmp(env_area,2);
 }
