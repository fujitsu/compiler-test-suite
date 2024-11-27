#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sun10 (void);
int sun9 (void);
int sun8 (void);
int sun7 (void);
int sun6 (void);
int sun5 (void);
int sun4 (void);
int sun3 (void);
int sun2 (void);
int sun1 (void);
int sub4 (int *pp, float yy);
int sub3 (int bb);
int sub1 (int *pp, float yy);
int befunc (void);
int m3esad72 (void);
int m3esad54 (void);
int mptest02 (void);
int m3eain01 (void);
int scood02 (void);
int m3mpdg02 (void);
int m3ermv11 (void);
int scobe18 (void);
int m3edc314 (void);
  
 
 
 
 
 
 

int 
main (void)
{

   printf("*** \n");

   m3edc314();   
   scobe18();    
   m3ermv11();   
   m3mpdg02();   
   scood02();    
   m3esad54();   
   m3eain01();   
   mptest02();   
   m3esad72();   

   printf("*** \n");

exit (0);
}

 
 
 


void fe1f3(volatile const unsigned long int);
void fe1f2(volatile const unsigned int);
void fe1f1(volatile const int);
void fe1f0(volatile const int );

int 
m3edc314 (void)
{
  fe1f3(1ul);
  fe1f2(1u);
  fe1f1(1);
  fe1f0(1);
  return 0;
}

void 
fe1f3 (volatile const unsigned long int a)
{
  if (a == 1ul)
      printf("***** M3EDC314 - 01 ***** O K *****\n");
    else
      printf("***** M3EDC314 - 01 ***** N G *****\n");
}

void 
fe1f2 (volatile const unsigned int a)
{
  if (a == 1u)
      printf("***** M3EDC314 - 02 ***** O K *****\n");
    else
      printf("***** M3EDC314 - 02 ***** N G *****\n");
}

void 
fe1f1 (volatile const int a)
{
  if (a == 1)
      printf("***** M3EDC314 - 03 ***** O K *****\n");
    else
      printf("***** M3EDC314 - 03 ***** N G *****\n");
}

void 
fe1f0 (volatile const  int a)
{
  if (a == 1)
      printf("***** M3EDC314 - 04 ***** O K *****\n");
    else
      printf("***** M3EDC314 - 04 ***** N G *****\n");
}

 
 
 


int 
m3ermv11 (void)
{
  printf("********** M3ERMV11 TEST START **********\n");
  {
    int a,b = 1,c = 2;

    a = b * ( c * 1 );
    if (a == 2)
        printf("***** M3ERMV11 - 01 ***** O K *****\n");
      else
        printf("***** M3ERMV11 - 01 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 3;

    a = b & ( c & 5 );
    if (a == 1)
        printf("***** M3ERMV11 - 02 ***** O K *****\n");
      else
        printf("***** M3ERMV11 - 02 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b ^ ( c ^ 1 );
    if (a == 2)
        printf("***** M3ERMV11 - 03 ***** O K *****\n");
      else
        printf("***** M3ERMV11 - 03 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b | ( c | 4 );
    if (a == 7)
        printf("***** M3ERMV11 - 04 ***** O K *****\n");
      else
        printf("***** M3ERMV11 - 04 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2,d = 3;

    a = b + c * ( d * 1 );
    if (a == 7)
        printf("***** M3ERMV11 - 05 ***** O K *****\n");
      else
        printf("***** M3ERMV11 - 05 ***** N G *****\n");
  }
  {
    int a,b = 2,c = 1,d = 3;

    a = b - c & ( d & 1 );
    if (a == 1)
        printf("***** M3ERMV11 - 06 ***** O K *****\n");
      else
        printf("***** M3ERMV11 - 06 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b * 2 ^ ( c ^ 1 );
    if (a == 1)
        printf("***** M3ERMV11 - 07 ***** O K *****\n");
      else
        printf("***** M3ERMV11 - 07 ***** N G *****\n");
  }
  {
    int a,b = 1;

    a = 4 / 2 | ( b | 3 );
    if (a == 3)
        printf("***** M3ERMV11 - 08 ***** O K *****\n");
      else
        printf("***** M3ERMV11 - 08 ***** N G *****\n");
  }
  printf("********** M3ERMV11 TEST  END  **********\n");
  return 0;
}

 
 
 


int 
m3esad54 (void)
  {
printf("*** M3ESAD54 ** **** START *** \n");
 
 
 
{
  int i=2;
  int volatile const   p=1;
  int volatile const   q=2;
  i=p<q;
  if(i==1)
    printf("*** M3ESAD54-01 *****     O    K     *****\n");
  else
    printf("*** M3ESAD54-01 *** N G ********** N G ***\n");
}
 
 
 
{
  int i=2;
  int    const   p=1;
  int    const   q=2;
  i=p<q;
  if(i==1)
    printf("*** M3ESAD54-02 *****     O    K     *****\n");
  else
    printf("*** M3ESAD54-02 *** N G ********** N G ***\n");
}
 
 
 
{
  struct fe2tag {int a;int b;}fe2st;
  int i=0;
  int *    const volatile   p=&(fe2st.a);
  int *    const volatile   q=&(fe2st.b);
  i=p<q;
  if(i==1)
    printf("*** M3ESAD54-03 *****     O    K     *****\n");
  else
    printf("*** M3ESAD54-03 *** N G ********** N G ***\n");
}
 
 
 
{
  int i=2,a=3;
  struct fe2tag {int a;int b;}fe2st;
  struct fe2tag * const volatile   p=&fe2st;
  struct fe2tag * const volatile   q=&fe2st;
  i=p<q;
  if(i==0)
    printf("*** M3ESAD54-04 *****     O    K     *****\n");
  else
    printf("*** M3ESAD54-04 *** N G ********** N G ***\n");
}
 
 
 
{
  int i=2;
  int    const volatile   p=1;
  int    const volatile   q=2;
  i=p<q;
  if(i==1)
    printf("*** M3ESAD54-05 *****     O    K     *****\n");
  else
    printf("*** M3ESAD54-05 *** N G ********** N G ***\n");
}
 
 
 
{
  int i=2;
  int    const volatile   p=1;
  int    const volatile   q=2;
  i=p<q;
  if(i==1)
    printf("*** M3ESAD54-06 *****     O    K     *****\n");
  else
    printf("*** M3ESAD54-06 *** N G ********** N G ***\n");
}
printf("*** M3ESAD54 **  **** END *** \n");
 return 0;
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


 
 
 
 

    return 0;
}
 
 
 


int 
m3esad72 (void)
  {
   printf("*** M3ESAD01 ** ** START ***\n");
 
 
 
{
     printf("*** M3ESAD72-01 *** O K ***\n");
}
 
 
 
{
   int i=1;
   struct featag {int a;int b;}st,**x;
   struct featag *arr[2];
   struct featag ayy[2][2];
   st.a=9;
   arr[0]=&st;
   x=i==1?arr:arr;
   if((&(**x))->a==9)
     printf("*** M3ESAD72-02 *** O K ***\n");
   else
     printf("*** M3ESAD72-02 ***    N G    ***\n");
}
 
 
 
{
     printf("*** M3ESAD72-03 *** O K ***\n");
}
 
 
 
{
   int i=1;
   struct featag {int a;int b;}st,**x;
   struct featag *arr[2];
   struct featag ayy[2][2];
   st.a=9;
   arr[0]=&st;
   x=i==0?arr:arr;
   if((&(**x))->a==9)
     printf("*** M3ESAD72-04 *** O K ***\n");
   else
     printf("*** M3ESAD72-04 ***    N G    ***\n");
}
printf("*** M3ESAD72 ***  *** END ***\n");
 return 0;
  }

 
 
 

int 
m3eain01 (void)
{
    printf("*** M3EAIN01 TEST FOR E_AINIEX *** STARTED ***\n");

 
 
 
     {
     int   ia = { 1 };
     if(ia == 1)
         printf("*** M3EAIN01-01 *** O   K ***\n");
     else
         printf("*** M3EAIN01-01 ***  ERR  ***\n");
     }
 
 
 
     {
     static int   ib[] = { { 2147483647 } };
     if(ib[0] == 2147483647)
         printf("*** M3EAIN01-02 *** O   K ***\n");
     else
         printf("*** M3EAIN01-02 ***  ERR  ***\n");
     }
 
 
 
     {
     static int   ic[][1] = { { {255} } };
     if(ic[0][0] == 255)
         printf("*** M3EAIN01-03 *** O   K ***\n");
     else
         printf("*** M3EAIN01-03 ***  ERR  ***\n");
     }
 
 
 
     {
     enum tag1 { ena,enb,enc } en1;

     int   id = {  ena  };
     if(id == ena)
         printf("*** M3EAIN01-04 *** O   K ***\n");
     else
         printf("*** M3EAIN01-04 ***  ERR  ***\n");
     }
 
 
 
     {
     enum tag2 { ena,enb,enc } en2;

     static int   ie[] = { { enb } };
     if(ie[0] == enb)
         printf("*** M3EAIN01-05 *** O   K ***\n");
     else
         printf("*** M3EAIN01-05 ***  ERR  ***\n");
     }
 
 
 
     {
     enum tag3 { ena,enb,enc } en3;

     static int   ig[][1][1][1][1][1]
                       = { { { { { { { enc } } } } } } };
     if(ig[0][0][0][0][0][0] == enc)
         printf("*** M3EAIN01-06 *** O   K ***\n");
     else
         printf("*** M3EAIN01-06 ***  ERR  ***\n");
     }
 
 
 
     {
     static int   ih[]  = { 1,11 };
     if(ih[0]  ==  1)
         printf("*** M3EAIN01-07 *** O   K ***\n");
     else
         printf("*** M3EAIN01-07 ***  ERR  ***\n");
     }
 
 
 
     {
     static int   ii[][1]  = { {1},{11},{111} };
     if(ii[1][0]  == 11)
         printf("*** M3EAIN01-08 *** O   K ***\n");
     else
         printf("*** M3EAIN01-08 ***  ERR  ***\n");
     }
 
 
 
     {
     static int ij[][4]= { { {1},{11},{111},{1111} } };
     if(ij[0][3]  == 1111)
         printf("*** M3EAIN01-09 *** O   K ***\n");
     else
         printf("*** M3EAIN01-09 ***  ERR  ***\n");
     }
 
 
 
     {
     enum tag4 { ena,enb,enc } en4;

     static int   ik[] = {  ena,enb  };
     if(ik[0] == ena)
         printf("*** M3EAIN01-10 *** O   K ***\n");
     else
         printf("*** M3EAIN01-10 ***  ERR  ***\n");
     }
 
 
 
     {
     enum tag5 { ena,enb,enc } en5;

     static int   ie[][3] = { { ena,enc,enb } };
     if(ie[0][2] == enb)
         printf("*** M3EAIN01-11 *** O   K ***\n");
     else
         printf("*** M3EAIN01-11 ***  ERR  ***\n");
     }
 
 
 
     {
     enum tag6 { ena,enb,enc } en6;

     static int   ig[][1][1][1][1][3]
      =  { { { { { { {ena},{enb},{enc} } } } } } };
     if(ig[0][0][0][0][0][2] == enc)
         printf("*** M3EAIN01-12 *** O   K ***\n");
     else
         printf("*** M3EAIN01-12 ***  ERR  ***\n");
     }
    printf("*** M3EAIN01 TEST FOR E_AINIEX *** ENDED ***\n");
    return 0;
}
 
 
 
int     ga;
int 
mptest02 (void)
{
  int   a,b,c,d,i;
  int   mpfff(),(*mpfp)(),ii;

  mpfp=mpfff;i=0;
  ii=(*mpfp)(i);

  ga=1;
  printf("START MPTEST02\n");
  i=0;
  while(i<1)
  {
    b=ga-1;
    c=ga+1;
                    
    a=b+c;          
    if(i<1)
    {
      i=befunc();     
      d=b+c;        
    }
  }
  if(a==2&&d==2)
    printf("      MPTEST02 OK\n");
  else {
    printf("      MPTEST02 NG A=%d(0)\n",a);
    printf("                  D=%d(0)\n",d);
  }
  printf("END   MPTEST02\n");
  return 0;
}
int 
befunc (void)
{
  return 1;
}
int 
mpfff (void)
{
  return 1;
}
 
 
 


 struct estr {
 int ea;
 int eb;
 int ec;
 };
 struct estr *epp;
 struct ustr {
 unsigned int ea;
 unsigned int eb;
 unsigned int ec;
 };
 struct fstr {
 float  ea;
 double eb;
 int    ec;
 };
 int 
m3mpdg02 (void)
 {
 sun1();
 sun2();
 sun3();
 sun4();
 sun5();
 sun6();
 sun7();
 sun8();
 sun9();
 sun10();
 return 0;
 }
  
  
  
 int sun1 (void)
 {
 int *p,a;
 float y=0.0;
 a=1;
 p=&a;
 sub1(p,y);
 return 0;
 }
 int sub1 (int *pp, float yy)
 {
 int  b,c;
 b=*pp;             
 yy=1;              
 c=*pp;             
 if (b==c) printf(" *OK-1*  \n");
 else      printf(" *NG-1*   %d\n",c);
 return 0;
 }
  
  
  
 int 
sun2 (void)
 {
 struct estr *ep;
 int b;
 b=1;
 sub3(b);
 return 0;
 }
 int 
sub3 (int bb)
 {
 struct estr  epa;
 struct estr *ep;
 int  a,c;
 epp=&epa;
 ep=epp;
 a=1;
 epp->ea=bb;       
 ep->eb=1;
 epp->eb=1;
 c=epp->ea;        
 if (c==bb) printf(" *OK-2* \n");
 else       printf(" **NG-2** %d\n",c);
 return 0;
 }
  
  
  
  
  
  
  
 int 
sun3 (void)
 {
 int  i,j,d[10],*ip;
 unsigned char *q[10],*p;
 unsigned char a[10],b,c,ab[10];
 a[0]=0xf8;
 ip=&j;
 p=&a[0];
 q[6]=ab;
   for(i=0;i<10;i++)
   {
  
     *q[6]=a[0];           
     d[5]=1;
     *ip=1;
     c=*q[6];                
     if (c==0xf8) printf(" *OK-3* \n");
     else         printf(" *NG-3* %c\n",c);
  
     d[5]=10;                
     *p='a';
     i=d[5];                 
     if (i==10) printf(" *OK-4* \n");
     else       printf(" *NG-4* %d\n",i);
   }
   return 0;
 }
  
  
  
 int 
sun4 (void)
 {
 int *p,a;
 float y=0.0;
 a=1;
 p=&a;
 sub4(p,y);
 return 0;
 }
 int sub4 (int *pp, float yy)
 {
 int  b,c,d;
 float x=0.0,z=0.0;
 yy=x+z;             
 b=*pp;              
 yy=1;               
 c=*pp;              
 if (c==1) printf(" *OK-5* \n");
 else      printf(" *NG-5* %d\n",c);
 return 0;
 }
  
  
  
 int 
sun5 (void)
 {
 struct estr *ep;
 struct ustr *up;
 struct ustr  upa;
 int         *eq;
 struct estr  epa;
 int  a,b=0,c=0,d,e;
 char *cc,cca;
 epp=&epa;
 up=&upa;
 ep=epp;
 cc=&cca;
 eq=&e;
 a=1;
  
 epp->ea=b;        
 ep->eb=1;
 *eq=1;            
 d=epp->ea;        
 if (d==b) printf(" *OK-6* \n");
 else      printf(" *NG-6* \n");
  
 epp->eb=b;        
 up->eb=1;         
                   
 c=epp->eb;        
 if (c==b) printf(" *OK-7* \n");
 else      printf(" *NG-7* \n");
  
 epp->ec=1;        
 *cc='a';          
                   
 e=epp->ec;        
 if (e==1) printf(" *OK-8* \n");
 else      printf(" *NG-8* \n");
 return 0;
 }
  
  
  
 int 
sun6 (void)
 {
 struct estr *ep;
 struct fstr fpa;
 int         *eq;
 struct estr  epa;
 struct fstr *fpp;
 int  a,b,c;
 b=8;
 epp=&epa;
 fpp=&fpa;
 ep=epp;
 a=1;
 epp->ea=b;        
 epp->eb=1;
 fpp->ea=1.0;
 c=epp->ea;        
 if (c==8) printf(" *OK-8*\n");
 else      printf(" *NG-8* %d\n",c);
 return 0;
 }
  
  
  
  
 int 
sun7 (void)
 {
 struct s1
 {
    float     *si;
    double    *sp;
    struct s1 *ss1;
 };
 struct s1 *s;
 struct s1  ss1a;
 double c1,*c2;
 float  f1;
 struct s1  sa;
  
 c1=8.0;
 s=&sa;
 s->si=&f1;
 s->ss1=&ss1a;
 s->ss1->sp=&c1;
 *(s->si)=1.0;            
 *(s->ss1->sp)=2.0;
 f1=*(s->si);             
 if (f1==1.0) printf(" *OK-9* \n");
 else         printf(" *NG-9* C1 = %e\n",f1);
  
 s->sp=&c1;               
 s->ss1->si=&f1;
 c2=s->sp;                
 if (*c2==2.0) printf(" *OK-10*  \n");
 else          printf(" *NG-10* *C2 = %e\n",*c2);
 return 0;
 }
  
  
  
  
 int 
sun8 (void)
 {
 struct s1
 {
    float     si[5];
    unsigned char      *sp;
    struct s1 *ss1;
 };
 struct s1 *s;
 struct s1  sa;
 struct s1  ssa;
 unsigned char   c1,*c2;
  
 c1=0xf7;                 
 s=&sa;                   
 s->ss1=&ssa;             
 s->sp=&c1;               
 s->si[2]=1.0;
 c2=s->sp;                
 if (*c2==0xf7) printf(" *OK-11*  \n");
 else           printf(" *NG-11* *C2 = %c\n",*c2);
 return 0;
 }
  
  
  
  
 int 
sun9 (void)
 {
 struct s1
 {
    float     si[5];
    char      *sp;
    struct s1 *ss1;
 };
 struct s1 *s;
 struct s1  sa;
 float  c1;
 char   spa;
 s=&sa;
 s->sp=&spa;
 s->ss1=&sa;
  
 s->si[1]=1.0;          
 s->si[2]=2.0;
 c1=s->si[1];           
 if (c1==1.0) printf(" *OK-12* \n");
 else         printf(" *NG-12* C1 = %e\n",c1);
 return 0;
 }
  
  
  
  
  
  
  
  
  
  
 int 
sun10 (void)
 {
 struct s1
 {
    float     si[5];
    char      *sp;
    int        it;
    struct s1 *ss1;
 };
 struct s1 *s;
 struct s1 sa;
 float  c1,c2,c3,c4,c5,c6;
 int    *i1;
 char   spa;
 s=&sa;
 s->sp=&spa;
 s->ss1=s;
 i1=&(s->it);
  
 c1=1.0;
 c4=c1;
 *i1=1;                   
 c2=c1;
 if (c2==1.0) printf(" *OK-13* \n");
 else         printf(" *NG-13* \n");
  
 c3=c4;
 s->it=2;                 
 c5=c3;
 if (c5==1.0) printf(" *OK-14* \n");
 else         printf(" *NG-14* \n");
 return 0;
 }

 
 
 

int 
scobe18 (void)
{
   static long int a[6]={ 1,1,1,1,1,1 };
   static float    b[2]={ 1.0,1.0 };

   long int c;
   long int d;
   double      e;
   long double f;

   c = a[0] <  2;
   if (c==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   c = a[1] <= 1;
   if (c==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   c = a[2] == 1;
   if (c==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   c = a[3] >  0;
   if (c==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   c = a[4] >= 1;
   if (c==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   c = a[5] != 0;
   if (c==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");

      if (a[0]< 2)
         goto y1;
      else
         printf ("***** NG *****\n");
   x1:
      if (a[1]<=1)
         goto y2;
      else
         printf ("***** NG *****\n");
   x2:
      if (a[2]==1)
         goto y3;
      else
         printf ("***** NG *****\n");
   x3:
      if (a[3]> 0)
         goto y4;
      else
         printf ("***** NG *****\n");
   x4:
      if (a[4]>=1)
         goto y5;
      else
         printf ("***** NG *****\n");
   x5:
      if (a[5]!=0)
         goto y6;
      else
         printf ("***** NG *****\n");
         goto end;

   y1:
      printf ("***** OK *****\n");
      goto x1;
   y2:
      printf ("***** OK *****\n");
      goto x2;
   y3:
      printf ("***** OK *****\n");
      goto x3;
   y4:
      printf ("***** OK *****\n");
      goto x4;
   y5:
      printf ("***** OK *****\n");
      goto x5;
   y6:
      printf ("***** OK *****\n");

   end:
      printf ("***** END *****\n");
      return 0;
}
