
#include <stdio.h>
#include <string.h>
int mptest26 (void);
int m3ecns06 (void);
int mptest32 (void);
int mptest31 (void);
int scood02 (void);
int m3ecns03 (void);
int mptest25 (void);
int scood01 (void);
int m3ecns02 (void);
int mptest23 (void);
int scoprl1 (void);
int m3ecns01 (void);

#if __aarch64__ || __x86_64__
#define ARCHI_64
#endif
int main()
{
   m3ecns01();  
   scoprl1();   
   mptest23();  
   m3ecns02();  
   scood01();   
   mptest25();  
   m3ecns03();  
   scood02();   
   mptest31();  
   mptest32();  
   m3ecns06();  
   mptest26();  

}


int 
m3ecns01 (void)
{
  static int array[5] = { 1, 2, 3, 4, 5 };
  int fefnc();
  struct tag {
               int t1;
               int t2;
             };
  static struct tag tag1 = { 1, 2 };
  static struct tag *tag2 = &tag1;
  int one = 1;
  int four = 4;
  int *point = &one;

  int a = array[2];
  int b = fefnc();
  int c = tag1.t1;
  int d = tag2->t2;
  int e = one++;
  int f = one--;
  int g = *point;
  int h = +one;
  int i = -one;
  int j = ~one;
  int k = !one;
  int m = 2*3;
  int n = 8/2;
  int o = 8%3;
  int p = 1+2;
  int q = 5-3;
  int r = one<<3;
  int s = four>>1;
  int t = one<5;
  int u = four<=4;
  int v = four>2;
  int w = one>=1;



    printf("************* \n");



  if ( a==3 )
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");

  if ( b==3 )
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");

  if ( c==1 )
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");

  if ( d==2 )
    printf("TEST04 --> OK \n");
  else
    printf("TEST04 --> NG \n");

  if ( e==1 )
    printf("TEST05 --> OK \n");
  else
    printf("TEST05 --> NG \n");

  if ( f==2 )
    printf("TEST06 --> OK \n");
  else
    printf("TEST06 --> NG \n");

  if ( g==1 )
    printf("TEST07 --> OK \n");
  else
    printf("TEST07 --> NG \n");

  if ( h==1 )
    printf("TEST08 --> OK \n");
  else
    printf("TEST08 --> NG \n");

  if ( i==-1 )
    printf("TEST09 --> OK \n");
  else
    printf("TEST09 --> NG \n");

  if ( j==-2 )
    printf("TEST10 --> OK \n");
  else
    printf("TEST10 --> NG \n");

  if ( k==0 )
    printf("TEST11 --> OK \n");
  else
    printf("TEST11 --> NG \n");

  if ( m==6 )
    printf("TEST12 --> OK \n");
  else
    printf("TEST12 --> NG \n");

  if ( n==4 )
    printf("TEST13 --> OK \n");
  else
    printf("TEST13 --> NG \n");

  if ( o==2 )
    printf("TEST14 --> OK \n");
  else
    printf("TEST14 --> NG \n");

  if ( p==3 )
    printf("TEST15 --> OK \n");
  else
    printf("TEST15 --> NG \n");

  if ( q==2 )
    printf("TEST16 --> OK \n");
  else
    printf("TEST16 --> NG \n");

  if ( r==8 )
    printf("TEST17 --> OK \n");
  else
    printf("TEST17 --> NG \n");

  if ( s==2 )
    printf("TEST18 --> OK \n");
  else
    printf("TEST18 --> NG \n");

  if ( t==1 )
    printf("TEST19 --> OK \n");
  else
    printf("TEST19 --> NG \n");

  if ( u==1 )
    printf("TEST20 --> OK \n");
  else
    printf("TEST20 --> NG \n");

  if ( v==1 )
    printf("TEST21 --> OK \n");
  else
    printf("TEST21 --> NG \n");

  if ( w==1 )
    printf("TEST22 --> OK \n");
  else
    printf("TEST22 --> NG \n");


    printf("************* \n");



}

int 
fefnc (void)
{
  return 3;
}


int 
m3ecns02 (void)
{
  int one = 1;
  int two = 2;
  int four = 4;
  int j;

  int a = one==1;
  int b = one!=1;
  int c = one&two;
  int d = one^two;
  int e = one|two;
  int f = one&&2;
  int g = one||2;
  int h = one?1:0;
  int i = j=one;
  int k = j*=8;
  int l = j/=2;
  int m = j%=3;
  int n = j+=4;
  int o = j-=3;
  int p = j<<=2;
  int q = j>>=3;
  int r = j&=two;
  int s = j^=one;
  int t = j|=two;
  int u = (1+2,3+4);



    printf("************* \n");




  if ( a==1 )
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");

  if ( b==0 )
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");

  if ( c==0 )
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");

  if ( d==3 )
    printf("TEST04 --> OK \n");
  else
    printf("TEST04 --> NG \n");

  if ( e==3 )
    printf("TEST05 --> OK \n");
  else
    printf("TEST05 --> NG \n");

  if ( f==1 )
    printf("TEST06 --> OK \n");
  else
    printf("TEST06 --> NG \n");

  if ( g==1 )
    printf("TEST07 --> OK \n");
  else
    printf("TEST07 --> NG \n");

  if ( h==1 )
    printf("TEST08 --> OK \n");
  else
    printf("TEST08 --> NG \n");

  if ( i==1 )
    printf("TEST09 --> OK \n");
  else
    printf("TEST09 --> NG \n");

  if ( k==8 )
    printf("TEST10 --> OK \n");
  else
    printf("TEST10 --> NG \n");

  if ( l==4 )
    printf("TEST11 --> OK \n");
  else
    printf("TEST11 --> NG \n");

  if ( m==1 )
    printf("TEST12 --> OK \n");
  else
    printf("TEST12 --> NG \n");

  if ( n==5 )
    printf("TEST13 --> OK \n");
  else
    printf("TEST13 --> NG \n");

  if ( o==2 )
    printf("TEST14 --> OK \n");
  else
    printf("TEST14 --> NG \n");

  if ( p==8 )
    printf("TEST15 --> OK \n");
  else
    printf("TEST15 --> NG \n");

  if ( q==1 )
    printf("TEST16 --> OK \n");
  else
    printf("TEST16 --> NG \n");

  if ( r==0 )
    printf("TEST17 --> OK \n");
  else
    printf("TEST17 --> NG \n");

  if ( s==1 )
    printf("TEST18 --> OK \n");
  else
    printf("TEST18 --> NG \n");

  if ( t==3 )
    printf("TEST19 --> OK \n");
  else
    printf("TEST19 --> NG \n");

  if ( u==7 )
    printf("TEST20 --> OK \n");
  else
    printf("TEST20 --> NG \n");




    printf("************* \n");



}


int 
m3ecns03 (void)
{
  enum tag { e1, e2=10, e3, e4 } etag;

  int   a = 1;
  int   b = e3;
  char  c = 'a';
  int   d = sizeof a;
  int  *p = &a;
  int  *f = p;



    printf("************* \n");




  if ( a==1 )
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");

  if ( b==11 )
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");

  if ( c=='a' )
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");

#if INT64 
  if ( d==8 )
#else
  if ( d==4 )
#endif
    printf("TEST04 --> OK \n");
  else
    printf("TEST04 --> NG \n");

  if ( f==&a )
    printf("TEST05 --> OK \n");
  else
    printf("TEST05 --> NG \n");




    printf("************* \n");



}


int 
m3ecns06 (void)
{
  static int    i1 = 1;
  static int    i2 = 2;
  static int   *pi1 = &i1;
  static int   *pi2 = &i2;
  int   *p1 = &i1;
  int   *p2 = &i2;
  int   *r;
  int  **pp = &pi1;
  static int array[2][2] = { 1, 2, 3, 4 };
  struct tag {
               int *t1;
               int *t2;
             };
  static struct tag tag1 = { &i1, &i2 };
  static struct tag *tag2 = &tag1;
  int fe6fnc();

  int *a = array[1];
  int (*b)() = fe6fnc;
  int *c = tag1.t1;
  int *d = tag2->t2;
  int *e = p1++;
  int *f = p2--;
  int *g = &i1;
  int *h = *pp;
  int *j = pi1+0;
  int *k = pi1-0;
  int *l = i1?pi1:pi2;
  int *m = r=pi1;
  int *n = r+=0;
  int *o = r-=0;
  int *p = (pi1+0,pi2+0);




    printf("************* \n");



  if ( *a==3 )
    printf("TEST01 --> OK \n");
  else
    printf("TEST01 --> NG \n");

  if ( (*b)()==3 )
    printf("TEST02 --> OK \n");
  else
    printf("TEST02 --> NG \n");

  if ( *c==1 )
    printf("TEST03 --> OK \n");
  else
    printf("TEST03 --> NG \n");

  if ( *d==2 )
    printf("TEST04 --> OK \n");
  else
    printf("TEST04 --> NG \n");

  if ( *e==1 )
    printf("TEST05 --> OK \n");
  else
    printf("TEST05 --> NG \n");

  if ( *f==2 )
    printf("TEST06 --> OK \n");
  else
    printf("TEST06 --> NG \n");

  if ( *g==1 )
    printf("TEST07 --> OK \n");
  else
    printf("TEST07 --> NG \n");

  if ( *h==1 )
    printf("TEST08 --> OK \n");
  else
    printf("TEST08 --> NG \n");

  if ( *j==1 )
    printf("TEST09 --> OK \n");
  else
    printf("TEST09 --> NG \n");

  if ( *k==1 )
    printf("TEST10 --> OK \n");
  else
    printf("TEST10 --> NG \n");

  if ( *l==1 )
    printf("TEST11 --> OK \n");
  else
    printf("TEST11 --> NG \n");

  if ( *m==1 )
    printf("TEST12 --> OK \n");
  else
    printf("TEST12 --> NG \n");

  if ( *n==1 )
    printf("TEST13 --> OK \n");
  else
    printf("TEST13 --> NG \n");

  if ( *o==1 )
    printf("TEST14 --> OK \n");
  else
    printf("TEST14 --> NG \n");

  if ( *p==2 )
    printf("TEST15 --> OK \n");
  else
    printf("TEST15 --> NG \n");

}

int 
fe6fnc (void)
{
  return 3;
}


#define PRINTANG printf("** NG ** M.A=%d,TT.A=%d\n",m.a,tt.a)
#define PRINTBNG printf("** NG ** M.B=%d,TT.B=%d\n",m.b,tt.b)
#define PRINTOK  printf("** OK ** \n")
 struct be1t {
            int a;
            int b;
          } tt;
int 
mptest23 (void)
{
#if defined(ARCHI_64)
   struct be1t be1fnc(long);
   long      p;
#else
   struct be1t be1fnc(int);
   int      p;
#endif
   struct be1t m;

     printf("*** MPTEST23 START *** \n");
     tt.a=0;
     tt.b=1;
#if defined(ARCHI_64)
     p=(long)&tt;
#else
     p=(int)&tt;
#endif
     m=be1fnc(p);  
     m.a!=tt.a ? PRINTANG : PRINTOK ;
     m.b!=tt.b ? PRINTBNG : PRINTOK ;
     printf("*** MPTEST23  END  *** \n");
}
struct be1t
#if defined(ARCHI_64)
be1fnc (long s)
#else
be1fnc (int s)
#endif
{
   struct be1t *p,st;
   p=(struct be1t *)s;
   s=0;
   st.a=p->a;
   st.b=p->b;
   return(st);
}

int 
fnc (int *p1, int *p2, int *i3)
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
   if((k=fnc(mp,mp2,&i))!=6)
     printf("*** MPTEST32 NG *** K=%d \n",k);
   else
     printf("*** MPTEST32 OK ***\n");
   if((k=fnc(0,mp2,&j))!=6)
     printf("*** MPTEST32 NG *** K=%d \n",k);
   else
     printf("*** MPTEST32 OK ***\n");
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
}




struct mp2tag
{
        int       a ;
        int       b ;
        char      c ;
        char      d ;
        short int e ;
        char      x ;
} ;
        static void   mp2fnc1(struct mp2tag *x,struct mp2tag *y) ;
        static int    mp2fnc2(struct mp2tag *x,struct mp2tag *y) ;


int 
mptest25 (void)
{
        struct mp2tag  aa ;
        struct mp2tag  bb ;
        struct mp2tag *cc ;
        int            aaa,bbb ;
        cc    = &aa ;
        cc->a = 1 ;
        cc->b = 2 ;
        cc->c = 3 ;
        cc->d = 0 ;
        memset(cc,0,sizeof(struct mp2tag)) ;
        if (cc->a != 0) {
         printf("*** MPTEST25 NG *** %d \n",cc->a) ;
         }
        bb.a = cc->a++ ;
        bb.b = cc->b+2 ;
        bb.c = cc->c+3 ;
        bb.d = cc->d   ;
        aa.d = 4 ;
        aa.e = 5 ;
        mp2fnc1(&aa,&bb) ;
        aaa = mp2fnc2(&bb,&aa) ;
        if (aaa==strlen(&bb)
        && (bbb=memcmp(&bb,&aa,sizeof(struct mp2tag)))==0) {
         printf("*** MPTEST25 OK ***\n") ;
        } else {
         printf("*** MPTEST25 NG *** %d \n",aaa) ;
         printf("                    %d \n",bbb) ;
        }
}
static void 
mp2fnc1 (struct mp2tag *x, struct mp2tag *y)
{
        x->a=1 ;
        strcpy (x,y);
        x->a+=1 ;
}
static int 
mp2fnc2 (struct mp2tag *x, struct mp2tag *y)
{
        y->a=x->a ;
        memcpy (y,x,sizeof(struct mp2tag));
        x->a=y->a ;
        return strlen(y) ;
}

 int mp4w;
 struct mp4t {
            int  a;
            int *b;
            char c[10];
          } mp4t1,mp4t2;



 int 
mptest26 (void)
 {
    int mp4fnc(int);
    static int ma=0;
    static char mc[]="123456789",*ok="OK",*ng="NG";
    int i; char cc[3][3];
    struct mp4t *p;
    memset(cc,'\0',9);
    mp4t1.a=1;
    mp4t1.b=&ma;
    i=*mp4t1.b+1;
    if(!strcpy(mp4t1.c,mc)) printf("** strcpy err **\n");
    i=*mp4t1.b+1;
    p=&mp4t2;
    memset(p,'\0',sizeof(struct mp4t));
    i=mp4fnc(i);
    if(mp4t1.a!=mp4t2.a) memcpy(cc[0],ng,2);
    else           memcpy(cc[0],ok,2);
    if(mp4t1.b!=mp4t2.b) memcpy(cc[1],ng,2);
    else           memcpy(cc[1],ok,2);
    if(memcmp(mp4t1.c,mp4t2.c,10)) memcpy(cc[2],ng,2);
    else                     memcpy(cc[2],ok,2);
    for(i=0;i<3;i++){
        printf("*** %2s * %d ***\n",cc[i],i);
    }
    printf("***** MPTEST26 END *****\n");
}
  int mp4fnc(int i)
{
   struct mp4t *p1,*p2;
   int ii;
   p1=&mp4t1;
   p2=&mp4t2;
   i=sizeof(struct mp4t);
   if(i<1) return(-1);
   mp4w = p2->a;
   ii=(int)memcpy(p2,p1,i);
   mp4w = p2->a;
   return(mp4w+ii);
}


int 
scoprl1 (void)
{
    int i1,i2,i3,i4,*pi,ii                                      ;
    short int *p1,*p2                                           ;

    printf("********** SCOPRL1 STARTED *********\n")  ;

    i1     = 1                                                  ;
    i2     = 2                                                  ;

    p1     =  (short int*) &i1                                  ;
    p2     =  (short int*) &i2                                  ;
    pi     =  &i1                                               ;

    i3     = *(int *)p1                                         ;
    i4     = *(int *)p2                                         ;
    ii     = *pi                                                ;

    if (i3 == 1 )
        printf("********** SCOPRL1 -01 OK **********\n")    ;
    else
        printf("********** SCOPRL1 -01 NG **********\n")    ;

    if (ii == 1 )
        printf("********** SCOPRL1 -01.5 OK **********\n")  ;
    else
        printf("********** SCOPRL1 -01.5 NG **********\n")  ;

    if (i4 == 2 )
        printf("********** SCOPRL1 -02 OK **********\n")    ;
    else
        printf("********** SCOPRL1 -02 NG **********\n")    ;

    printf("********** SCOPRL1 ENDED **********\n")    ;

}


int 
scood01 (void)
{
    int    i,k                                                ;



    printf("********** SCOOD01 STARTED *********\n");

    i = 1                                                     ;
    k = 2                                                     ;

    switch (i) {
    case 1:
        printf("********** SCOOD01 -01 OK **********\n")  ;
        break                                                 ;
    case 2:
        printf("********** SCOOD01 -01 NG **********\n")  ;
        break                                                 ;
    case 3:
        printf("********** SCOOD01 -01 NG **********\n")  ;
        break                                                 ;
    case 4:
        printf("********** SCOOD01 -01 NG **********\n")  ;
        break                                                 ;
    case 5:
        printf("********** SCOOD01 -01 NG **********\n")  ;
        break                                                 ;
    default:
        printf("********** SCOOD01 -01 NG **********\n")  ;
        break                                                 ;
    }



    if ( i<k || ((k>i)==(i<k)) )
        printf("********** SCOOD01 -02 OK **********\n")  ;
    else
        printf("********** SCOOD01 -02 NG **********\n")  ;

    printf("********** SCOOD01 ENDED **********\n")  ;

}


int 
scood02 (void)
{
    int    i,k                                                ;



    printf("********** SCOOD02 STARTED *********\n");

    i = 1                                                     ;
    k = 2                                                     ;

    switch (i) {
    case 1:
        printf("********** SCOOD02 -01 OK **********\n")  ;
        break                                                 ;
    default:
        printf("********** SCOOD02 -01 NG **********\n")  ;
        break                                                 ;
    }

    switch (i) {
    case 1:
        printf("********** SCOOD02 -02 OK **********\n")  ;
        break                                                 ;
    case 2:
        printf("********** SCOOD02 -02 NG **********\n")  ;
        break                                                 ;
    default:
        printf("********** SCOOD02 -02 NG **********\n")  ;
        break                                                 ;
    }

    switch (i) {
    case 1:
        printf("********** SCOOD02 -03 OK **********\n")  ;
        break                                                 ;
    case 2:
        printf("********** SCOOD02 -03 NG **********\n")  ;
        break                                                 ;
    case 3:
        printf("********** SCOOD02 -03 NG **********\n")  ;
        break                                                 ;
    default:
        printf("********** SCOOD02 -03 NG **********\n")  ;
        break                                                 ;
    }

    switch (i) {
    case 1:
        printf("********** SCOOD02 -04 OK **********\n")  ;
        break                                                 ;
    case 2:
        printf("********** SCOOD02 -04 NG **********\n")  ;
        break                                                 ;
    case 3:
        printf("********** SCOOD02 -04 NG **********\n")  ;
        break                                                 ;
    case 4:
        printf("********** SCOOD02 -04 NG **********\n")  ;
        break                                                 ;
    default:
        printf("********** SCOOD02 -04 NG **********\n")  ;
        break                                                 ;
    }

    switch (i) {
    case 1:
        printf("********** SCOOD02 -05 OK **********\n")  ;
        break                                                 ;
    case 2:
        printf("********** SCOOD02 -05 NG **********\n")  ;
        break                                                 ;
    case 3:
        printf("********** SCOOD02 -05 NG **********\n")  ;
        break                                                 ;
    case 4:
        printf("********** SCOOD02 -05 NG **********\n")  ;
        break                                                 ;
    case 5:
        printf("********** SCOOD02 -05 NG **********\n")  ;
        break                                                 ;
    default:
        printf("********** SCOOD02 -05 NG **********\n")  ;
        break                                                 ;
    }


}
