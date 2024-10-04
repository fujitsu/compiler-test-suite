

#include<stdio.h>
#include<string.h>
int sub (int *x);
int ank (void);
int mpsub (void);
int scobe12 (void);
int m3esad01 (void);
int m3ermv07 (void);
int m3mpyt04 (void);
int m3edc302 (void);
int m3edc193 (void);
int m3edc188 (void);
int scohdi2 (void);
int m3edc316 (void);
int m3edc185 (void);
int m3mprd08 (void);
int m3edc312 (void);
int m3edc176 (void);
int m3edc308 (void);
int m3edc168 (void);
int m3mpsi05 (void);
int main()
{

   printf("***  **** START ***\n");

   m3edc168();  
   m3edc308();  
   m3edc176();  
   m3edc312();  
   m3mprd08();  
   m3edc185();  
   m3edc316();  
   scohdi2();   
   m3edc188();  
   m3edc193();  
   m3edc302();  
   m3mpyt04();  
   m3ermv07();  
   m3esad01();  
   m3edc308();  
   scobe12();   
   m3mpsi05();  

   printf("***  **** END ***\n");

}



 volatile struct f2stag1 {
       short  s;
       long   l;
 } f1exst1;
 const union f1utag1 {
       int    i;
       long   l;
 } f1exun1,f1exun12;

int 
m3edc168 (void)
{
   printf("*** M3EDC168 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto volatile struct f2stag1 st1,*st1p;
     auto const struct f2stag2 {
           char  c;
           int   i;
     } st2 = {0x7f,0x7fffffff};
     register volatile enum entag2 {
           f1enx=-1, f1eny,f1enz=100
     } f1en1 = f1enz;
     static const union f1utag2 {
           signed  s;
           unsigned u;
     } f1un2[2] = { { -1 }, { 0 } };

     extern volatile struct f2stag1 f1exst1;
     extern const union f1utag1 f1exun1,f1exun12;

     typedef volatile enum tagf1en1 {
           f1ena, f1enb, f1enc
     } typeen;
     typeen  f1en2;

     st1.s = -1;  st1.l = 0x7fffffff;
     if (st1.s!=-1 || st1.l!=2147483647)
         printf(" *** M3EDC168 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC168 TEST-01 OK ***\n");

     if (st2.c!=127 || st2.i!=2147483647)
         printf(" *** M3EDC168 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC168 TEST-02 OK ***\n");

     if (f1en1!=100 || f1enx!=-1 || f1eny!=0 || f1enz!=100)
         printf(" *** M3EDC168 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC168 TEST-03 OK ***\n");

#if INT64
	 if (f1un2[0].s!=-1 || f1un2[0].u!=18446744073709551615 ||
			  f1un2[1].s!=0 || f1un2[1].u!=0)
#else
     if (f1un2[0].s!=-1 || f1un2[0].u!=4294967295 ||
         f1un2[1].s!=0 || f1un2[1].u!=0)
#endif
         printf(" *** M3EDC168 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC168 TEST-04 OK ***\n");

     if (f1exst1.s || f1exst1.l)
         printf(" *** M3EDC168 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC168 TEST-05 OK ***\n");

     if (f1exun1.i || f1exun1.l || f1exun12.i || f1exun12.l)
         printf(" *** M3EDC168 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC168 TEST-06 OK ***\n");

     f1en2 = f1enb;
     if (f1en2!=1 || f1ena!=0 || f1enb!=1 || f1enc!=2)
         printf(" *** M3EDC168 TEST-07 ERROR ***\n");
     else
         printf(" *** M3EDC168 TEST-07 OK ***\n");
   }

   printf("*** M3EDC168 TEST ENDED ***\n");
   return 0;
}



int 
m3edc176 (void)
{
   printf("*** M3EDC176 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     struct f2stag1 {
           short  s;
           long   l;
     } st1={0, 0};
     union f2utag1 {
           int    i;
           long   l;
     } un1={0},un12={0};
     enum f2etag1 {
           f2ena, f2enb, f2enc
     } en1=f2enc,*en1p=NULL;

     static struct f2stag2 {
           char  c;
           int   i;
     } st2 = { 0x7f, 0x7fffffff };
     enum entag2 {
           f2enx=-1, f2eny, f2enz=100
     } en2 = f2enz;
     static union f2utag2 {
           signed  s;
           unsigned u;
     } un2[2] = { { -1 }, { 0 } };


     st1.s = 0;  st1.l = st1.s;
     if (st1.s!=0 || st1.l!=0)
         printf(" *** M3EDC176 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC176 TEST-01 OK ***\n");

     un12 = un1;
     if (un1.i!=un12.i || un1.l!=un12.l)
         printf(" *** M3EDC176 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC176 TEST-02 OK ***\n");

     en1p = &en1;
     if (en1!=*en1p || f2ena!=0 || f2enb!=1 || f2enc!=2)
         printf(" *** M3EDC176 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC176 TEST-03 OK ***\n");

     if (st2.c!=127 || st2.i!=2147483647)
         printf(" *** M3EDC176 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC176 TEST-04 OK ***\n");

     if (en2!=100 || f2enx!=-1 || f2eny!=0 || f2enz!=100)
         printf(" *** M3EDC176 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC176 TEST-05 OK ***\n");

#if INT64
	 if (un2[0].s!=-1 || un2[0].u!=18446744073709551615 ||
			  un2[1].s!=0 || un2[1].u!=0)
#else
     if (un2[0].s!=-1 || un2[0].u!=4294967295 ||
         un2[1].s!=0 || un2[1].u!=0)
#endif
         printf(" *** M3EDC176 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC176 TEST-06 OK ***\n");
   }

   printf("*** M3EDC176 TEST ENDED ***\n");
   return 0;
}



 typedef int inttype;


int 
m3edc185 (void)
{
   const int  *addrc1=NULL,*addrc2=NULL;
   volatile int  *addrv1=NULL,*addrv2=NULL;

   volatile inttype  a1=0;
   const inttype  a2=0, b2=0;
   volatile inttype  a3=0;
   static const inttype  a4[2]={-1,0x7fffffff};

   printf("*** M3EDC185 ** MK3 TEST FOR DCL ** STARTED ***\n");

   addrv1 = &a1;
   if (a1!=*addrv1)
       printf(" *** M3EDC185 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC185 TEST-01 OK ***\n");

   addrc1 = &a2;  addrc2 = &b2;
   if (a2!=*addrc1 || b2!=*addrc2)
       printf(" *** M3EDC185 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC185 TEST-02 OK ***\n");

   if (a3!=0)
       printf(" *** M3EDC185 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC185 TEST-03 OK ***\n");

   if (a4[0]!=-1 || a4[1]!=2147483647)
       printf(" *** M3EDC185 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC185 TEST-04 OK ***\n");

   printf("*** M3EDC185 TEST ENDED ***\n");
   return 0;
}



int 
m3edc188 (void)
{
   printf("*** M3EDC188 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     inttype  a1;
     inttype  a2,b2;
     inttype  a3=0;
     inttype  a4[2]={-1,0x7fffffff};
     a4[0]=-1;
     a4[1]=0x7fffffff;

     a1 = -1;
     if (a1!=-1)
         printf(" *** M3EDC188 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC188 TEST-01 OK ***\n");

     a2 = b2 = 1;
     if (a2!=1 || b2!=1)
         printf(" *** M3EDC188 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC188 TEST-02 OK ***\n");

     if (a3!=0)
         printf(" *** M3EDC188 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC188 TEST-03 OK ***\n");

     if (a4[0]!=-1 || a4[1]!=2147483647)
         printf(" *** M3EDC188 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC188 TEST-04 OK ***\n");
   }

   printf("*** M3EDC188 TEST ENDED ***\n");
   return 0;
}



 int 
m3edc193 (void)
 {

   auto volatile const char  fe1c,fe1c2;
   volatile const short fe1s;
   volatile int   fe1i;
   long  fe1l;

   printf("*** M3EDC193 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {

     printf("*** M3EDC193 TEST OK ***\n");

   }

   printf("*** M3EDC193 TEST ENDED ***\n");
   return 0;
}



void fe2fnc3(register volatile const unsigned long int);
void fe2fnc2(register volatile const unsigned int);
void fe2fnc1(register volatile const int);
void fe2fnc0(register volatile const int );
#if defined(__EDG__)
void fe2g();
#else
void fe2g(int,int);
#endif

int 
m3edc302 (void)
{
  fe2fnc3(1ul);
  fe2fnc2(1u);
  fe2fnc1(1);
  fe2fnc0(1);
  fe2g(3,4);
  return 0;
}

void fe2fnc3(register volatile const unsigned long int a)
{
  if (a == 1ul)
      printf("***** M3EDC302 - 01 ***** O K *****\n");
    else
      printf("***** M3EDC302 - 01 ***** N G *****\n");
}

void fe2fnc2(register volatile const unsigned int a)
{
  if (a == 1u)
      printf("***** M3EDC302 - 02 ***** O K *****\n");
    else
      printf("***** M3EDC302 - 02 ***** N G *****\n");
}

void fe2fnc1(register volatile const int a)
{
  if (a == 1)
      printf("***** M3EDC302 - 03 ***** O K *****\n");
    else
      printf("***** M3EDC302 - 03 ***** N G *****\n");
}

void fe2fnc0(register volatile const  int a)
{
  if (a == 1)
      printf("***** M3EDC302 - 04 ***** O K *****\n");
    else
      printf("***** M3EDC302 - 04 ***** N G *****\n");
}

void 
fe2g (int a, int b)
{
  if (a == 3)
      printf("***** M3EDC302 - 05 ***** O K *****\n");
    else
      printf("***** M3EDC302 - 05 ***** N G *****\n");

  if (b == 4)
      printf("***** M2EDC302 - 06 ***** O K *****\n");
    else
      printf("***** M2EDC302 - 06 ***** N G *****\n");
}



struct tag
{
  int a;
  int b;
} ;

void fe3fnc1(register volatile const struct tag *,
        register const volatile struct tag *);
void fe3fnc2(register volatile struct tag *);
void fe3fnc3(register struct tag *);
void fe3fnc4(volatile const struct tag *);
void fe3fnc5(volatile struct tag);
void fe3fnc6(struct tag);

int 
m3edc308 (void)
{

    volatile const struct tag a = { 1,2 };
    const volatile struct tag b = { 3,4 };
    volatile struct tag c = { 1,2 };
    struct tag d = { 1,2 };

    fe3fnc1(&a,&b);
    fe3fnc2(&c);
    fe3fnc3(&d);
    fe3fnc4(&a);
    fe3fnc5(c);
    fe3fnc6(d);
    return 0;
}

void fe3fnc1(register volatile const struct tag *a,
        register const volatile struct tag *b)
{
  if (a->a == 1 && a->b == 2)
      printf("***** M3EDC308 - 01 ***** O K *****\n");
    else
      printf("***** M3EDC308 - 01 ***** N G *****\n");

  if (b->a == 3 && b->b == 4)
      printf("***** M3EDC308 - 02 ***** O K *****\n");
    else
      printf("***** M3EDC308 - 02 ***** N G *****\n");
}

void fe3fnc2(register volatile struct tag *a)
{
  if (a->a == 1 && a->b == 2)
      printf("***** M3EDC308 - 03 ***** O K *****\n");
    else
      printf("***** M3EDC308 - 03 ***** N G *****\n");
}

void fe3fnc3(register struct tag *a)
{
  if (a->a == 1 && a->b == 2)
      printf("***** M3EDC308 - 04 ***** O K *****\n");
    else
      printf("***** M3EDC308 - 04 ***** N G *****\n");
}

void fe3fnc4(volatile const struct tag *a)
{
  if (a->a == 1 && a->b == 2)
      printf("***** M3EDC308 - 05 ***** O K *****\n");
    else
      printf("***** M3EDC308 - 05 ***** N G *****\n");
}

void fe3fnc5(volatile struct tag a)
{
  if (a.a == 1 && a.b == 2)
      printf("***** M3EDC308 - 06 ***** O K *****\n");
    else
      printf("***** M3EDC308 - 06 ***** N G *****\n");
}

void fe3fnc6(struct tag a)
{
  if (a.a == 1 && a.b == 2)
      printf("***** M3EDC308 - 07 ***** O K *****\n");
    else
      printf("***** M3EDC308 - 07 ***** N G *****\n");
}



void f3(register volatile unsigned long int);
void f2(register volatile unsigned int);
void f1(register volatile int);
void f0(register volatile int );

int 
m3edc312 (void)
{
  f3(1ul);
  f2(1u);
  f1(1);
  f0(1);
  return 0;
}

void 
f3 (register volatile unsigned long int a)
{
  if (a == 1ul)
      printf("***** M3EDC312 - 01 ***** O K *****\n");
    else
      printf("***** M3EDC312 - 01 ***** N G *****\n");
}

void 
f2 (register volatile unsigned int a)
{
  if (a == 1u)
      printf("***** M3EDC312 - 02 ***** O K *****\n");
    else
      printf("***** M3EDC312 - 02 ***** N G *****\n");
}

void 
f1 (register volatile int a)
{
  if (a == 1)
      printf("***** M3EDC312 - 03 ***** O K *****\n");
    else
      printf("***** M3EDC312 - 03 ***** N G *****\n");
}

void 
f0 (register volatile  int a)
{
  if (a == 1)
      printf("***** M3EDC312 - 04 ***** O K *****\n");
    else
      printf("***** M3EDC312 - 04 ***** N G *****\n");
}


void fe4f3(unsigned long int);
void fe4f2(unsigned int);
void fe4f1(int);

int 
m3edc316 (void)
{
  fe4f3(1ul);
  fe4f2(1u);
  fe4f1(1);
  return 0;
}

void 
fe4f3 (unsigned long int a)
{
  if (a == 1ul)
      printf("***** M3EDC316 - 01 ***** O K *****\n");
    else
      printf("***** M3EDC316 - 01 ***** N G *****\n");
}

void 
fe4f2 (unsigned int a)
{
  if (a == 1u)
      printf("***** M3EDC316 - 02 ***** O K *****\n");
    else
      printf("***** M3EDC316 - 02 ***** N G *****\n");
}

void 
fe4f1 (int a)
{
  if (a == 1)
      printf("***** M3EDC316 - 03 ***** O K *****\n");
    else
      printf("***** M3EDC316 - 03 ***** N G *****\n");
}



int 
m3ermv07 (void)
{
  printf("********** M3ERMV07 TEST START **********\n");
  {
    int a,b = 1,c = 2;

    a = b + ( c + 1 );
    if (a == 4)
        printf("***** M3ERMV07 - 01 ***** O K *****\n");
      else
        printf("***** M3ERMV07 - 01 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b + ( c - 1 );
    if (a == 2)
        printf("***** M3ERMV07 - 02 ***** O K *****\n");
      else
        printf("***** M3ERMV07 - 02 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b - ( c + 1 );
    if (a == -2)
        printf("***** M3ERMV07 - 03 ***** O K *****\n");
      else
        printf("***** M3ERMV07 - 03 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b - ( c - 1 );
    if (a == 0)
        printf("***** M3ERMV07 - 04 ***** O K *****\n");
      else
        printf("***** M3ERMV07 - 04 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2,d = 3;

    a = b * c + ( d + 1 );
    if (a == 6)
        printf("***** M3ERMV07 - 05 ***** O K *****\n");
      else
        printf("***** M3ERMV07 - 05 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2,d = 3;

    a = b * c + ( d - 1 );
    if (a == 4)
        printf("***** M3ERMV07 - 06 ***** O K *****\n");
      else
        printf("***** M3ERMV07 - 06 ***** N G *****\n");
  }
  {
    int a,b = 1,c = 2;

    a = b * 2 - ( c + 1 );
    if (a == -1)
        printf("***** M3ERMV07 - 07 ***** O K *****\n");
      else
        printf("***** M3ERMV07 - 07 ***** N G *****\n");
  }
  {
    int a,b = 1;

    a = 1 * 2 - ( b - 3 );
    if (a == 4)
        printf("***** M3ERMV07 - 08 ***** O K *****\n");
      else
        printf("***** M3ERMV07 - 08 ***** N G *****\n");
  }
  printf("********** M3ERMV07 TEST  END  **********\n");
  return 0;
}



struct grtag { int a; int b; };

int 
m3esad01 (void)
{
  printf("********** M3ESAD01 TEST START **********\n");
  {
    int val = 1,*p = &val,**a,**b;

    a = &p;
    if (**a == 1)
        printf("***** M3ESAD01 - 01 ***** O K *****\n");
      else
        printf("***** M3ESAD01 - 01 ***** N G *****\n");
    b = a;
    if (**b == 1)
        printf("***** M3ESAD01 - 02 ***** O K *****\n");
      else
        printf("***** M3ESAD01 - 02 ***** N G *****\n");
  }
  {
    static struct tag { int a; } st = { 1 };
    struct tag *p = &st,**a,**b;

    a = &p;
    if ((**a).a == 1)
        printf("***** M3ESAD01 - 03 ***** O K *****\n");
      else
        printf("***** M3ESAD01 - 03 ***** N G *****\n");
    b = a;
    if ((**b).a == 1)
        printf("***** M3ESAD01 - 04 ***** O K *****\n");
      else
        printf("***** M3ESAD01 - 04 ***** N G *****\n");
  }
  {
    static int vec[2] = { 1,2 },(*a)[2],(*b)[2];

    a = &vec;
    if ((*a)[0] == 1)
        printf("***** M3ESAD01 - 05 ***** O K *****\n");
      else
        printf("***** M3ESAD01 - 05 ***** N G *****\n");
    b = a;
    if ((*b)[1] == 2)
        printf("***** M3ESAD01 - 06 ***** O K *****\n");
      else
        printf("***** M3ESAD01 - 06 ***** N G *****\n");
  }
  {
    static struct tag { int a; } vec[2] = { 1,2 };
    struct tag (*a)[2],(*b)[2];

    a = &vec;
    if (((*a)[1]).a == 2)
        printf("***** M3ESAD01 - 07 ***** O K *****\n");
      else
        printf("***** M3ESAD01 - 07 ***** N G *****\n");
    b = a;
    if (((*b)[0]).a == 1)
        printf("***** M3ESAD01 - 08 ***** O K *****\n");
      else
        printf("***** M3ESAD01 - 08 ***** N G *****\n");
  }
  {
    int f7fnc1(),(*a)(),(*b)(),(*c)();

    a = &f7fnc1;
    if ((*a)() == 1)
        printf("***** M3ESAD01 - 09 ***** O K *****\n");
      else
        printf("***** M3ESAD01 - 09 ***** N G *****\n");
    b = a;
    if ((*b)() == 1)
        printf("***** M3ESAD01 - 10 ***** O K *****\n");
      else
        printf("***** M3ESAD01 - 10 ***** N G *****\n");
    c = f7fnc1;
    if ((*c)() == 1)
        printf("***** M3ESAD01 - 11 ***** O K *****\n");
      else
        printf("***** M3ESAD01 - 11 ***** N G *****\n");
  }
  {
    struct grtag f7fnc2(),(*a)(),(*b)(),(*c)();

    a = &f7fnc2;
    if (((*a)()).a == 1)
        printf("***** M3ESAD01 - 12 ***** O K *****\n");
      else
        printf("***** M3ESAD01 - 12 ***** N G *****\n");
    b = a;
    if (((*b)()).b == 2)
        printf("***** M3ESAD01 - 13 ***** O K *****\n");
      else
        printf("***** M3ESAD01 - 13 ***** N G *****\n");
    c = f7fnc2;
    if (((*c)()).a == 1)
        printf("***** M3ESAD01 - 14 ***** O K *****\n");
      else
        printf("***** M3ESAD01 - 14 ***** N G *****\n");
  }
  {
    int val = 1,*a,*b;

    a = &val;
    if (*a == 1)
        printf("***** M3ESAD01 - 15 ***** O K *****\n");
      else
        printf("***** M3ESAD01 - 15 ***** N G *****\n");
    b = a;
    if (*b == 1)
        printf("***** M3ESAD01 - 16 ***** O K *****\n");
      else
        printf("***** M3ESAD01 - 16 ***** N G *****\n");
  }
  {
    static struct { int a; } st = { 1 },*a,*b;

    a = &st;
    if (a->a == 1)
        printf("***** M3ESAD01 - 17 ***** O K *****\n");
      else
        printf("***** M3ESAD01 - 17 ***** N G *****\n");
    b = a;
    if (b->a == 1)
        printf("***** M3ESAD01 - 18 ***** O K *****\n");
      else
        printf("***** M3ESAD01 - 18 ***** N G *****\n");
  }
  printf("********** M3ESAD01 TEST  END  **********\n");
  return 0;
}

int 
f7fnc1 (void)
{
  return 1;
}

struct grtag 
f7fnc2 (void)
{
  static struct grtag st = { 1,2 };

  return st;
}



 char ch[3];
 int sub(int *);
 int m3mprd08()
 {
  int i,c;
  char *a;
  char *b;
  printf("*** M3MPRD08  STR ***\n");
  i = 1;
  sub(&c);
  while(i!=3)
  {
  a=b=ch;
  *a=*(b+1)+i;
  i=i+c/5;
  }
  *a=*a;
  *a=ch[c/5];
  if(i==3)
  printf("*** OK *** \n");
  else
  printf("*** NG ***\n");
  printf("******  END ******\n");
  }
  int sub(x)
  int *x;
  {
  *x=5;
  return 0;
  }


 int y;
 int mpsub();
 int m3mpsi05() {
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
 if (pint->memc[1]==37) printf("m3mpsi05 ok\n");
 else
 printf("%d\n",pint->memc[1]);
 return 0;
 }
 int mpsub()
 {
 y=22;
 return 0;
 }



struct homerun
{
   int some[3];
   int hit;
   int str;
   int total;
};
  struct homerun homer[50];
  struct homerun *point;
  int n,i,j,hs,h,c,demo,d,e;
  static int num[3]={7,2,5};
  int table[3];
  int strnum[3];
  int hitnum[3];
int 
m3mpyt04 (void)
{
  d=1;
  point=homer;
  i=0;
  c=0;
  hs=0;
  n=0;
  while(i<=2){
    if(hs==3){
      break;
    }
    table[0]=d;
    table[1]=d+1;
    table[2]=d+2;
    ank();
    i++;
    d=d+3;
  }
  if(hs!=3){
    table[c]=0;
    c++;
  }
  while(h<=2){
    switch(c){
      case 0:break;
      case 1:
               switch(n){
               case 1:table[2]=strnum[0];
                        table[0]=hitnum[0];
                        table[1]=hitnum[1];
                        break;
               case 2:table[1]=strnum[0];
                        table[0]=hitnum[0];
                        table[2]=hitnum[2];
                        break;
               case 3:table[0]=strnum[0];
                        table[1]=hitnum[1];
                        table[2]=hitnum[2];
                        break;
               }
      break;
      case 2:
               switch(n){
               case 0:table[2]=strnum[1];
                        table[1]=strnum[2];
                        table[0]=hitnum[0];
                        break;
               case 1:table[0]=strnum[2];
                        table[2]=strnum[0];
                        table[1]=hitnum[1];
                        break;
               case 2:table[0]=strnum[1];
                        table[1]=strnum[0];
                        table[2]=hitnum[2];
                        break;
               }
      break;
      case 3:table[1]=strnum[0];
               table[2]=strnum[1];
               table[0]=strnum[2];
      }
      n=0;
      c=0;
      hs=0;
      ank();
  }
  if(memcmp(num,hitnum,12)==0)
    printf("***** ok *****\n");
  else
    printf("***** ng *****\n");
  return 0;
}
int 
ank (void)
{
  h=0;
  point->some[0]=table[0];
  point->some[1]=table[1];
  point->some[2]=table[2];
  point->hit=0;
  point->str=0;
  point->total=0;
  e=0;
  while(e<=2){
    if(num[e]==point->some[e]) {
      point->hit++;
      hitnum[e]=point->some[e];
      n=n+e;
      h++;
    }
    j=0;
    while(j<=2){
      if(num[e]==point->some[j] && e!=j) {
        point->str++;
        strnum[c]=point->some[j];
        c++;
      }
      j++;
    }
    e++;
  }
  point->total=point->hit+point->str;
  hs=hs+point->total;
  point++;
  return 0;
}



int 
scobe12 (void)
{
   struct tag
   {
      unsigned char          b1 : 3;
      unsigned short int     b2 : 3;
      unsigned long int      b3 : 3;
   } ;

   struct tag a = { 1,1,1 };

   char          c1;
   short int     c2;
   long int      c3;

   c1 = a.b1;
   if (c1==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   c1 = a.b2;
   if (c1==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   c1 = a.b3;
   if (c1==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   c2 = a.b1;
   if (c2==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   c2 = a.b2;
   if (c2==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   c2 = a.b3;
   if (c2==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   c3 = a.b1;
   if (c3==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   c3 = a.b2;
   if (c3==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   c3 = a.b3;
   if (c3==1)
      printf ("***** OK *****\n");
   else
      printf ("***** NG *****\n");
   return 0;
}



struct t {
           unsigned int fs:2;
         } s1,s2,*p;
int 
scohdi2 (void)
{
    int        i,i1,i2                                        ;

    printf("********** SCOHDI2 TEST STARTED **********\n");

    i = 3                                                     ;
    p = &s2                                                   ;


    s1.fs = i                                                 ;
    p->fs = i                                                 ;



    if ( s1.fs == 3)
        printf("********** SCOHDI2 -01 OK **********\n")  ;
    if ( s1.fs != 3)
        printf("********** SCOHDI2 -01 NG **********\n")  ;



    if ( p->fs == 3)
        printf("********** SCOHDI2 -02 OK **********\n")  ;
    if ( p->fs != 3)
        printf("********** SCOHDI2 -02 NG **********\n")  ;



    i1 = s1.fs                                                ;
    i2 = p->fs                                                ;



    if ( (i1==3)&&(i2==3) )
        printf("********** SCOHDI2 -03 OK **********\n")  ;
    else
        printf("********** SCOHDI2 -03 NG **********\n")  ;

    printf("********** SCOHDI2 TEST ENDED **********\n")  ;
    return 0;
}
