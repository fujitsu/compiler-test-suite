
#include <stdio.h>
#include <string.h>
int m3esad58 (void);
int m3edc301 (void);
int scoprl1 (void);
int m3mpyt03 (void);
int m3edc061 (void);
int scosn01 (void);
int m3edc133 (void);
int mptest43();
int m3edc070 (void);
int m3mpcm05 (void);
int m3edc170 (void);
int m3mptr05 (void);
int scohd01 (void);
int m3edc127 (void);
int scpba01 (void);

#define proc    {
#define then    {
#define end     }
int 
main (void)
{

   printf("***  **** START ***\n");

   scpba01();   
   m3edc127();  
   scohd01();   
   m3esad58();  
   m3mptr05();  
   m3edc170();  
   m3mpcm05();  
   m3edc070();  
   mptest43();  
   m3edc133();  
   scosn01();   
   m3edc061();  
   m3mpyt03();  
   scoprl1();   
   m3edc301();  

   printf("***  ****  END  ***\n");

}



 volatile short unsigned fe1a4;
 const signed short fe1a5;
 typedef volatile unsigned short featp1;

int 
m3edc061 (void)
{

   const signed short *addrcs1,*addrcs2;
   const unsigned short *addrcu1,*addrcu2;
   volatile signed short *addrvs1,*addrvs2;
   volatile unsigned short *addrvu1,*addrvu2;

   auto const signed short a1;
   register volatile unsigned short a2=0,b2=1;
   static const short signed a3[2]={2,3};
   extern volatile short unsigned fe1a4;
   extern const signed short fe1a5;
   featp1 a6;


   printf("*** M3EDC061 ** MK3 TEST FOR DCL ** STARTED ***\n");

   addrcs1 = &a1;
   if (a1!=*addrcs1)
       printf(" *** M3EDC061 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC061 TEST-01 OK ***\n");

   if (a2!=0 || b2!=1)
       printf(" *** M3EDC061 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC061 TEST-02 OK ***\n");

   if (a3[0]!=2 || a3[1]!=3)
       printf(" *** M3EDC061 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC061 TEST-03 OK ***\n");

   if (fe1a4!=0)
       printf(" *** M3EDC061 TEST-04 ERROR ***\n");
   else
       printf(" *** M3EDC061 TEST-04 OK ***\n");

   if (fe1a5!=0)
       printf(" *** M3EDC061 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC061 TEST-05 OK ***\n");

   addrvu1 = &a6;
   if (a6!=*addrvu1)
       printf(" *** M3EDC061 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC061 TEST-06 OK ***\n");

   printf("*** M3EDC061 TEST ENDED ***\n");
   return 0;
}




 volatile long int fe8a4;
 const int long fe8a5;

int 
m3edc070 (void)
{

   const long int *addrc1,*addrc2;
   volatile long int *addrv1,*addrv2;

   printf("*** M3EDC070 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto const long int a1=0;
     register volatile int long a2=0,b2=1;
     static const long int a3[2]={2,-3};
     extern volatile long int fe8a4;
     extern const int long fe8a5;
     typedef volatile long int type1;
     type1  a6=0;


     addrc1 = &a1;
     if (a1!=*addrc1)
         printf(" *** M3EDC070 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC070 TEST-01 OK ***\n");

     if (a2 || b2!=1)
         printf(" *** M3EDC070 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC070 TEST-02 OK ***\n");

     if (a3[0]!=2 || a3[1]!=-3)
         printf(" *** M3EDC070 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC070 TEST-03 OK ***\n");

     if (fe8a4!=0)
         printf(" *** M3EDC070 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC070 TEST-04 OK ***\n");

     if (fe8a5!=0)
         printf(" *** M3EDC070 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC070 TEST-05 OK ***\n");

     addrv1 = &a6;
     if (a6!=*addrv1)
         printf(" *** M3EDC070 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC070 TEST-06 OK ***\n");
   }

   printf("*** M3EDC070 TEST ENDED ***\n");
   return 0;
}



static int mp1fnc() ;
int mptest43() proc
      int i ;
      i=1 ;
      i=mp1fnc(i) ;
      if (i!=10)
       printf("*** MPTEST43 NG *** I=%d\n",i) ;
      else
       printf("*** MPTEST43 OK ***\n") ;
      return 0;
end
int mp1fnc(i)
      int i ;
      proc
      int j ;
      i+=1 ;
      if      (i<5) return(mp1fnc(i)) ;
      else if (i<10) then
       j=mp1fnc(i) ;
       return(j) ;
       end
      return(i) ;
end




 static char be4o1[]={"**** ITEM1 OK ****"};
 static char be4n1[]={"**** ITEM1 NG ****"};
 int 
scpba01 (void) {
   int    a,b,z,be4fnc1();
   char   c[3],d[5];
   void   be4ok(),be4ng();
     a=0xa;
     z=1000;
     b=be4fnc1(z);
     memcpy(c,"aoh",3);
     memcpy(d,"12aoh",5);
     if(a==b)
       {
         be4ok(1);
       }
     else
       {
         be4ng(1);
       }
     if(memcmp(c,&d[2],3)==0)
       {
         be4ok(2);
       }
     else
       {
         be4ng(2);
       }
}
 int 
be4fnc1 (int a)
 {
     a=a/10;
     a=a-95;
     a=a*2;
     return (a);
 }
 void 
be4ok (int a)
 {
     if(a==1)
       {
           printf("%s\n",be4o1);
       }
     else
       {
           be4o1[9]='2';
           printf("%s\n",be4o1);
       }
 }
 void 
be4ng (int a)
 {
     if(a==1)
       {
           printf("%s\n",be4n1);
       }
     else
       {
           be4n1[4]='2';
           printf("%s\n",be4n1);
       }
 }





int 
m3edc127 (void)
{

   volatile const signed long     *addrsl1,*addrsl2;
   volatile const unsigned long   *addrul1,*addrul2;
   volatile const signed short    *addrss1,*addrss2;
   volatile const unsigned short  *addrus1,*addrus2;
   volatile const signed int      *addrsi1,*addrsi2;
   volatile const unsigned int    *addrui1,*addrui2;
   volatile const signed char     *addrsc1,*addrsc2,*addrsc3;
   volatile const unsigned char   *addruc1,*addruc2,*addruc3;

   volatile const signed long    a1;
   volatile const long unsigned  a2,b2;
   volatile const signed short   a3=-1,b3;
   volatile const int unsigned   a5;
   volatile const signed int     b6=8;
   volatile const char unsigned  a7,b7,c7;
   volatile const signed char    a8,b8=1;


   printf("*** M3EDC127 ** MK3 TEST FOR DCL ** STARTED ***\n");

   addrsl1 = &a1;
   if (a1!=*addrsl1)
       printf(" *** M3EDC127 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC127 TEST-01 OK ***\n");

   addrul1 = &a2;  addrul2 = &b2;
   if (a2!=*addrul1 || b2!=*addrul2)
       printf(" *** M3EDC127 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC127 TEST-02 OK ***\n");

   addrss1 = &b3;
   if (a3!=-1 || b3!=*addrss1)
       printf(" *** M3EDC127 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC127 TEST-03 OK ***\n");

   addrui1 = &a5;
   if (a5!=*addrui1)
       printf(" *** M3EDC127 TEST-05 ERROR ***\n");
   else
       printf(" *** M3EDC127 TEST-05 OK ***\n");

   if (b6!=8)
       printf(" *** M3EDC127 TEST-06 ERROR ***\n");
   else
       printf(" *** M3EDC127 TEST-06 OK ***\n");

   addruc1 = &a7;  addruc2 = &b7;  addruc3 = &c7;
   if (a7!=*addruc1 || b7!=*addruc2 || c7!=*addruc3)
       printf(" *** M3EDC127 TEST-07 ERROR ***\n");
   else
       printf(" *** M3EDC127 TEST-07 OK ***\n");

   addrsc1 = &a8;
   if (a8!=*addrsc1 || b8!=1)
       printf(" *** M3EDC127 TEST-08 ERROR ***\n");
   else
       printf(" *** M3EDC127 TEST-08 OK ***\n");

   printf("*** M3EDC127 TEST ENDED ***\n");
   return 0;
}




void fefnc(int,int);

int 
m3edc301 (void)
{
  fefnc(1,2);
  return 0;
}

void 
fefnc (int a, int b)
{
  if (a == 1)
      printf("***** M3EDC301 - 01 ***** O K *****\n");
    else
      printf("***** M3EDC301 - 01 ***** N G *****\n");

  if (b == 2)
      printf("***** M2EDC301 - 02 ***** O K *****\n");
    else
      printf("***** M2EDC301 - 02 ***** N G *****\n");
}




struct sort
{
   int data ;
   struct sort *front ;
} ;
int correlation (struct sort *now, struct sort *add);
int 
m3mpyt03 (void)
{
   struct sort num[50] ;
   struct sort *head ;
   struct sort *tail ;
   static int allnum[20]={0,1,2,3,4,5,6,7,8,9,10,20,
                           30,40,50,60,70,80,90,100};
   int value[20] ;
   int n ;
   int i ;
   value[0]=100 ;
   value[1]=6 ;
   value[2]=30 ;
   value[3]=10 ;
   value[4]=2 ;
   value[5]=0 ;
   value[6]=4 ;
   value[7]=40 ;
   value[8]=7 ;
   value[9]=80 ;
   value[10]=3 ;
   value[11]=50 ;
   value[12]=1 ;
   value[13]=90 ;
   value[14]=20 ;
   value[15]=9 ;
   value[16]=70 ;
   value[17]=8 ;
   value[18]=60 ;
   value[19]=5 ;
   head=num ;
   tail=num ;
   head->data=value[0] ;
   head->front=0 ;
   i=1;
   printf ("***** SORT *****\n");
   while (i<=19)
      {
         tail++ ;
         tail->front=0 ;
         tail->data=value[i] ;
         if (head->data > tail->data)
           {
             tail->front=head ;
             head=tail;
           }
         else
             correlation (head,tail);
         i++;
       }
    n=0;
    while (head != 0)
       {
         printf ("***** LIST DATA : %2d\n",head->data );
         value[n]=head->data ;
         head=head->front ;
         n++;
       }
   if (memcmp(value,allnum,80)==0)
        printf ("***** OK *****\n");
   else
        printf ("***** NG *****\n");
   return 0;
}
int 
correlation (struct sort *now, struct sort *add)
{
    if ((now->front->data)<(add->data) && now->front!=0)
      {
        correlation (now->front,add);
      }
    else
     {
        add->front=now->front;
        now->front=add ;
     }
    return 0;
}



int 
scohd01 (void)
{
  struct tag_s {
                 int         mi1                     ;
                 const int   mci                     ;
               } s,*ps                              ;
  int        i1,*pi                                  ;
  int        i2[10]  ={0,1,2,3,4,5,6,7,8,9}      ;
  const int  ci1 = 7 ,*pci                           ;
  const int  ci2[10] ={0,1,2,3,4,5,6,7,8,9}      ;

  printf("********** SCOHD01 STARTED **********\n")    ;

  s.mi1 = 7    ;
  i1    = 7    ;
  ps    = &s   ;

  if ( *(char *)memchr("abcdefghjk",'g',7) == 'g' )
    printf("********** SCOHD01 -01 OK **********\n")        ;
  else
    printf("********** SCOHD01 -01 NG **********\n")        ;

  if ( *(char *)memchr("abcdefghjk",'g',ps->mi1) == 'g' )
    printf("********** SCOHD01 -02 OK **********\n")        ;
  else
    printf("********** SCOHD01 -02 NG **********\n")        ;

  if ( *(char *)memchr("abcdefghjk",'g',i1) == 'g' )
    printf("********** SCOHD01 -04 OK **********\n")        ;
  else
    printf("********** SCOHD01 -04 NG **********\n")        ;

  if ( *(char *)memchr("abcdefghjk",'g',i2[7]) == 'g' )
    printf("********** SCOHD01 -05 OK **********\n")        ;
  else
    printf("********** SCOHD01 -05 NG **********\n")        ;

  if ( *(char *)memchr("abcdefghjk",'g',ci1) == 'g' )
    printf("********** SCOHD01 -06 OK **********\n")        ;
  else
    printf("********** SCOHD01 -06 NG **********\n")        ;

  if ( *(char *)memchr("abcdefghjk",'g',ci2[7]) == 'g' )
    printf("********** SCOHD01 -07 OK **********\n")        ;
  else
    printf("********** SCOHD01 -07 NG **********\n")        ;

  pi = &i1;
  if ( *(char *)memchr("abcdefghjk",'g',*pi) == 'g' )
    printf("********** SCOHD01 -08 OK **********\n")        ;
  else
    printf("********** SCOHD01 -08 NG **********\n")        ;

  pi = &i2[7] ;
  if ( *(char *)memchr("abcdefghjk",'g',*pi) == 'g' )
    printf("********** SCOHD01 -09 OK **********\n")        ;
  else
    printf("********** SCOHD01 -09 NG **********\n")        ;

  pci = &ci1;
  if ( *(char *)memchr("abcdefghjk",'g',*pci) == 'g' )
    printf("********** SCOHD01 -10 OK **********\n")        ;
  else
    printf("********** SCOHD01 -10 NG **********\n")        ;

  pci = &ci2[7];
  if ( *(char *)memchr("abcdefghjk",'g',*pci) == 'g' )
    printf("********** SCOHD01 -11 OK **********\n")        ;
  else
    printf("********** SCOHD01 -11 NG **********\n")        ;


  printf("********** SCOHD01  ENDED **********\n")    ;
  return 0;
}



int 
m3edc133 (void)
{

   volatile const int   *addr1,*addr2;

   volatile const int   a1;
   volatile const int   a2=0;
   volatile const int   a3,b3;


   printf("*** M3EDC133 ** MK3 TEST FOR DCL ** STARTED ***\n");

   addr1 = &a1;
   if (a1!=*addr1)
       printf(" *** M3EDC133 TEST-01 ERROR ***\n");
   else
       printf(" *** M3EDC133 TEST-01 OK ***\n");

   if (a2)
       printf(" *** M3EDC133 TEST-02 ERROR ***\n");
   else
       printf(" *** M3EDC133 TEST-02 OK ***\n");

   addr1 = &a3;  addr2 = &b3;
   if (a3!=*addr1 || b3!=*addr2)
       printf(" *** M3EDC133 TEST-03 ERROR ***\n");
   else
       printf(" *** M3EDC133 TEST-03 OK ***\n");

  printf(" *** M3EDC133 TEST ENDED ***\n");
  return 0;
}




 struct fe3tag1 {
       short  s;
       long   l;
 } fe3exs1;
 union fe3utag1 {
       int    i;
       long   l;
 } fe3exu1,fe3exu12;

int 
m3edc170 (void)
{
   printf("*** M3EDC170 ** MK3 TEST FOR DCL ** STARTED ***\n");

   {
     auto struct fe3tag1 st1,*st1p;
     auto struct fe3tag2 {
           char  c;
           int   i;
     } st2 ;
     register enum entag2 {
           enx=-1,  eny,  enz=100
     } en1 = enz;
     static union fe3utag2 {
           signed  s;
           unsigned u;
     } un2[2] = { { -1 }, { 0 } };

     extern struct fe3tag1 fe3exs1;
     extern union fe3utag1 fe3exu1,fe3exu12;

     typedef enum tagen1 {
           ena,  enb,  enc
     } typeen;
     typeen  en2;

     st1.s = -1;  st1.l = 0x7fffffff;
     st2.c = 0x7f;  st2.i = 0x7fffffff;

     if (st1.s!=-1 || st1.l!=2147483647)
         printf(" *** M3EDC170 TEST-01 ERROR ***\n");
     else
         printf(" *** M3EDC170 TEST-01 OK ***\n");

     if (st2.c!=127 || st2.i!=2147483647)
         printf(" *** M3EDC170 TEST-02 ERROR ***\n");
     else
         printf(" *** M3EDC170 TEST-02 OK ***\n");

     if (en1!=100 || enx!=-1 || eny!=0 || enz!=100)
         printf(" *** M3EDC170 TEST-03 ERROR ***\n");
     else
         printf(" *** M3EDC170 TEST-03 OK ***\n");

#if INT64
	 if (un2[0].s!=-1 || un2[0].u!=18446744073709551615 ||
			  un2[1].s!=0 || un2[1].u!=0)
#else
     if (un2[0].s!=-1 || un2[0].u!=4294967295 ||
         un2[1].s!=0 || un2[1].u!=0)
#endif
         printf(" *** M3EDC170 TEST-04 ERROR ***\n");
     else
         printf(" *** M3EDC170 TEST-04 OK ***\n");

     if (fe3exs1.s || fe3exs1.l)
         printf(" *** M3EDC170 TEST-05 ERROR ***\n");
     else
         printf(" *** M3EDC170 TEST-05 OK ***\n");

     if (fe3exu1.i || fe3exu1.l || fe3exu12.i || fe3exu12.l)
         printf(" *** M3EDC170 TEST-06 ERROR ***\n");
     else
         printf(" *** M3EDC170 TEST-06 OK ***\n");

     en2 = enb;
     if (en2!=1 || ena!=0 || enb!=1 || enc!=2)
         printf(" *** M3EDC170 TEST-07 ERROR ***\n");
     else
         printf(" *** M3EDC170 TEST-07 OK ***\n");
   }

   printf("*** M3EDC170 TEST ENDED ***\n");
   return 0;
}




int 
m3mpcm05 (void)
{
  unsigned short int     s1 = 1;
  signed short int       s2 = 1;
  short int              s3 = 1;
  unsigned char          c1 = 'b';
  signed char            c2 = 'b';
  char                   c3 = 'b';
  unsigned short int     usshi = 1;
  signed short int       sshi  = 1;
  short int              shi   = 1;
  unsigned char          usc = 'a';
  signed char            sc  = 'a';
  char                   c   = 'a';

    printf("*************\n");


#if INT64
  if ( sizeof ( s1 + usshi ) == 8 )
#else
  if ( sizeof ( s1 + usshi ) == 4 )
#endif
    printf("TEST01 --> OK \n");
#if INT64
  if ( sizeof ( s1 + sshi ) == 8 )
#else
  if ( sizeof ( s1 + sshi ) == 4 )
#endif
    printf("TEST02 --> OK \n");
#if INT64
  if ( sizeof ( s1 + shi ) == 8 )
#else
  if ( sizeof ( s1 + shi ) == 4 )
#endif
    printf("TEST03 --> OK \n");
#if INT64
  if ( sizeof ( s1 + usc ) == 8 )
#else
  if ( sizeof ( s1 + usc ) == 4 )
#endif
    printf("TEST04 --> OK \n");
#if INT64
  if ( sizeof ( s1 + sc ) == 8 )
#else
  if ( sizeof ( s1 + sc ) == 4 )
#endif
    printf("TEST05 --> OK \n");
#if INT64
  if ( sizeof ( s1 + c ) == 8 )
#else
  if ( sizeof ( s1 + c ) == 4 )
#endif
    printf("TEST06 --> OK \n");
#if INT64
  if ( sizeof ( s2 + sshi ) == 8 )
#else
  if ( sizeof ( s2 + sshi ) == 4 )
#endif
    printf("TEST07 --> OK \n");
#if INT64
  if ( sizeof ( s2 + shi ) == 8 )
#else
  if ( sizeof ( s2 + shi ) == 4 )
#endif
    printf("TEST08 --> OK \n");
#if INT64
  if ( sizeof ( s2 + usc ) == 8 )
#else
  if ( sizeof ( s2 + usc ) == 4 )
#endif
    printf("TEST09 --> OK \n");
#if INT64
  if ( sizeof ( s2 + sc ) == 8 )
#else
  if ( sizeof ( s2 + sc ) == 4 )
#endif
    printf("TEST10 --> OK \n");
#if INT64
  if ( sizeof ( s2 + c ) == 8 )
#else
  if ( sizeof ( s2 + c ) == 4 )
#endif
    printf("TEST11 --> OK \n");
#if INT64
  if ( sizeof ( s3 + shi ) == 8 )
#else
  if ( sizeof ( s3 + shi ) == 4 )
#endif
    printf("TEST12 --> OK \n");
#if INT64
  if ( sizeof ( s3 + usc ) == 8 )
#else
  if ( sizeof ( s3 + usc ) == 4 )
#endif
    printf("TEST13 --> OK \n");
#if INT64
  if ( sizeof ( s3 + sc ) == 8 )
#else
  if ( sizeof ( s3 + sc ) == 4 )
#endif
    printf("TEST14 --> OK \n");
#if INT64
  if ( sizeof ( s3 + c ) == 8 )
#else
  if ( sizeof ( s3 + c ) == 4 )
#endif
    printf("TEST15 --> OK \n");
#if INT64
  if ( sizeof ( c1 + usc ) == 8 )
#else
  if ( sizeof ( c1 + usc ) == 4 )
#endif
    printf("TEST16 --> OK \n");
#if INT64
  if ( sizeof ( c1 + sc ) == 8 )
#else
  if ( sizeof ( c1 + sc ) == 4 )
#endif
    printf("TEST17 --> OK \n");
#if INT64
  if ( sizeof ( c1 + c ) == 8 )
#else
  if ( sizeof ( c1 + c ) == 4 )
#endif
    printf("TEST18 --> OK \n");
#if INT64
  if ( sizeof ( c2 + sc ) == 8 )
#else
  if ( sizeof ( c2 + sc ) == 4 )
#endif
    printf("TEST19 --> OK \n");
#if INT64
  if ( sizeof ( c2 + c ) == 8 )
#else
  if ( sizeof ( c2 + c ) == 4 )
#endif
    printf("TEST20 --> OK \n");
#if INT64
  if ( sizeof ( c3 + c ) == 8 )
#else
  if ( sizeof ( c3 + c ) == 4 )
#endif
    printf("TEST21 --> OK \n");
  return 0;
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
    return 0;
}




int 
m3esad58 (void)
  {
printf("*** M3ESAD58 ****** START ***  \n");
{
  int   volatile   a=1;
  int   volatile   b=2;
  a+=b;
  if(a==3)
    printf("*** M3ESAD58-01 *****     O    K     *****\n");
  else
    printf("*** M3ESAD58-01 *** N G ********** N G ***\n");
}
{
  int   volatile   a=1;
  int   const   b=2;
  a+=b;
  if(a==3)
    printf("*** M3ESAD58-02 *****     O    K     *****\n");
  else
    printf("*** M3ESAD58-02 *** N G ********** N G ***\n");
}
{
  int   volatile   a=1;
  int   volatile const   b=2;
  a+=b;
  if(a==3)
    printf("*** M3ESAD58-03 *****     O    K     *****\n");
  else
    printf("*** M3ESAD58-03 *** N G ********** N G ***\n");
}
{
  int   volatile   a=1;
  int   const volatile   b=2;
  a+=b;
  if(a==3)
    printf("*** M3ESAD58-04 *****     O    K     *****\n");
  else
    printf("*** M3ESAD58-04 *** N G ********** N G ***\n");
}
printf("*** M3ESAD58 ****** END *** \n");
  return 0;
  }




int 
m3mptr05 (void)
{
  int a,b,c,d,e,i,j,flag=0;
  i=0;
  a=0;
  a=2;
  c=5;
  if(c>=5){
    printf("head\n");
  }
  while(i<3){
    j=0;
    while(j<=2){
      b=a+j;
      flag++;
      j++;
    }
    flag--;
    i++;
  }
  if(flag==6){
    printf("***** OK  *****\n");
  }
  else {
    printf("***** NG  *****\n");
  }
  a=20;
  b=30;
  return 0;
}




int 
scosn01 (void)
{
  unsigned       int    ui3 = 3u                                 ;
  unsigned       int    tu                                       ;
  signed         int    ts                                       ;
  signed         int    si3 = 3                                  ;

  const          int    ci3 = 3                                  ;

  const unsigned int    cui1 = 1u                                ;
  const unsigned int    cui8 = 8u                                ;
  const   signed int    csi1 = 1                                 ;
  const   signed int    csi8 = 8                                 ;

  printf("********** SCOSN01 TEST STARTED **********\n")     ;


  tu = 1u << ui3                                                 ;
  if   (tu == 8)
    printf("********** SCOSN01 - 01 OK **********\n")        ;
  else
    printf("********** SCOSN01 - 01 NG **********\n")        ;


  ts = 1  << si3                                                 ;
  if   (ts == 8)
    printf("********** SCOSN01 - 02 OK **********\n")        ;
  else
    printf("********** SCOSN01 - 02 NG **********\n")        ;


  tu = cui1 << 3                                                 ;
  if   (tu == 8)
    printf("********** SCOSN01 - 03 OK **********\n")        ;
  else
    printf("********** SCOSN01 - 03 NG **********\n")        ;


  ts = csi1 << 3                                                 ;
  if   (ts == 8)
    printf("********** SCOSN01 - 04 OK **********\n")          ;
  else
    printf("********** SCOSN01 - 04 NG **********\n")          ;


  tu = 1u << ci3                                                 ;
  if   (tu == 8)
    printf("********** SCOSN01 - 05 OK **********\n")          ;
  else
    printf("********** SCOSN01 - 05 NG **********\n")          ;


  ts = 1  << ci3                                                 ;
  if   (ts == 8)
    printf("********** SCOSN01 - 06 OK **********\n")          ;
  else
    printf("********** SCOSN01 - 06 NG **********\n")          ;


  tu = 8u >> ui3                                                 ;
  if   (tu == 1)
    printf("********** SCOSN01 - 07 OK **********\n")          ;
  else
    printf("********** SCOSN01 - 07 NG **********\n")          ;


  ts = 8  >> si3                                                 ;
  if   (ts == 1)
    printf("********** SCOSN01 - 08 OK **********\n")          ;
  else
    printf("********** SCOSN01 - 08 NG **********\n")          ;


  tu = cui8 >> 3                                                 ;
  if   (tu == 1)
    printf("********** SCOSN01 - 09 OK **********\n")          ;
  else
    printf("********** SCOSN01 - 09 NG **********\n")          ;


  ts = csi8  >> 3                                                   ;
  if   (ts == 1)
    printf("********** SCOSN01 - 10 OK **********\n")          ;
  else
    printf("********** SCOSN01 - 10 NG **********\n")          ;


  tu = 8u >> ci3                                                 ;
  if   (tu == 1)
    printf("********** SCOSN01 - 11 OK **********\n")          ;
  else
    printf("********** SCOSN01 - 11 NG **********\n")          ;


  ts = 8  >> ci3                                                 ;
  if   (ts == 1)
    printf("********** SCOSN01 - 12 OK **********\n")          ;
  else
    printf("********** SCOSN01 - 12 NG **********\n")          ;


  printf("********** SCOSN01 TEST STARTED **********\n")     ;
  return 0;
}
