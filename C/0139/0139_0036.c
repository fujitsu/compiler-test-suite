#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <string.h>
int rz (void);
int ge (void);
int gt (void);
int eq (void);
int ne (void);
int le (void);
int lt (void);
int m3genum1 (void);
int mptest43 (void);
int m3eva277 (void);
int m3mpcm05 (void);
int scrsk10 (void);
int m3gcns11 (void);
int m3mptr05 (void);
int m3eva312 (void);
int m3mpyt03 (void);
  
 
 
 
 
 
 

int main (void)
{
   printf("*** \n\n");
   m3mpyt03();   
   m3eva312();   
   m3mptr05();   
   m3gcns11();   
   scrsk10() ;   
   m3mpcm05();   
   m3eva277();   
   mptest43();   
   m3genum1();   
   printf("\n*** \n");
exit (0);
}
 
 
 
int f1f (void)
{
  struct {
    int a;
    int b;
  } st;
  st.a = 10;
  if( st.a==10 )
      return 1;
    else
      return 0;
}
int m3eva277 (void)
{
  static int a=20;
  if( a==20 && f1f() )
      printf("M3EVA277 TEST OK \n");
    else
      printf("M3EVA277 TEST NG = %d \n",a);
  return 0;
}
 
 
 
int f2f (void)
{
  int f2fnc( register int f2a );
  if( f2fnc(10) )
      return 1;
    else
      return 0;
}
extern int f2a;
int m3eva312 (void)
{
  if( f2a==0 && f2f() )
      printf("M3EVA312 TEST OK \n");
    else
      printf("M3EVA312 TEST NG = %d \n",f2a);
  return 0;
}
int f2fnc( register int f2a )
{
  if ( f2a == 10 )
      return 1;
    else
      return 0;
}
int f2a=0;
 
 
 
int m3gcns11 (void)
{
  unsigned long int  uns_lon;
  int                int_   ;
  printf("M3GCNS11 START\n");
 
 
  uns_lon = (unsigned long int)100 + (unsigned long int)100;
  if (uns_lon == 200)
    printf("--- M3GCNS11 (45-01) OK ---\n");
  else {
    printf("*** M3GCNS11 (45-01) NG ***\n");
    printf("UNS_LON = %x\n" , uns_lon);
  }
 
 
  uns_lon = (unsigned long int)100 - (unsigned long int)50;
  if (uns_lon == 50)
    printf("--- M3GCNS11 (45-02) OK ---\n");
  else {
    printf("*** M3GCNS11 (45-02) NG ***\n");
    printf("UNS_LON = %x\n" , uns_lon);
  }
 
 
  uns_lon = (unsigned long int)100 * (unsigned long int)100;
  if (uns_lon == 10000)
    printf("--- M3GCNS11 (45-03) OK ---\n");
  else {
    printf("*** M3GCNS11 (45-03) NG ***\n");
    printf("UNS_LON = %x\n" , uns_lon);
  }
 
 
  uns_lon = (unsigned long int)100 / (unsigned long int)50;
  if (uns_lon == 2)
    printf("--- M3GCNS11 (45-04) OK ---\n");
  else {
    printf("*** M3GCNS11 (45-04) NG ***\n");
    printf("UNS_LON = %x\n" , uns_lon);
  }
 
 
  uns_lon = (unsigned long int)100 % (unsigned long int)3;
  if (uns_lon == 1)
    printf("--- M3GCNS11 (45-05) OK ---\n");
  else {
    printf("*** M3GCNS11 (45-05) NG ***\n");
    printf("UNS_LON = %x\n" , uns_lon);
  }
 
 
  uns_lon = (unsigned long int)1 << (unsigned long int)3;
  if (uns_lon == 8)
    printf("--- M3GCNS11 (45-06) OK ---\n");
  else {
    printf("*** M3GCNS11 (45-06) NG ***\n");
    printf("UNS_LON = %x\n" , uns_lon);
  }
 
 
  uns_lon = (unsigned long int)8 >> (unsigned long int)3;
  if (uns_lon == 1)
    printf("--- M3GCNS11 (45-07) OK ---\n");
  else {
    printf("*** M3GCNS11 (45-07) NG ***\n");
    printf("UNS_LON = %x\n" , uns_lon);
  }
 
 
  int_ = (unsigned long int)100 < (unsigned long int)101;
  if (int_ == 1)
    printf("--- M3GCNS11 (45-08) OK ---\n");
  else {
    printf("*** M3GCNS11 (45-08) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (unsigned long int)10 > (unsigned long int)50;
  if (int_ == 0)
    printf("--- M3GCNS11 (45-09) OK ---\n");
  else {
    printf("*** M3GCNS11 (45-09) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (unsigned long int)100 <= (unsigned long int)100;
  if (int_ == 1)
    printf("--- M3GCNS11 (45-10) OK ---\n");
  else {
    printf("*** M3GCNS11 (45-10) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (unsigned long int)10 >= (unsigned long int)50;
  if (int_ == 0)
    printf("--- M3GCNS11 (45-11) OK ---\n");
  else {
    printf("*** M3GCNS11 (45-11) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (unsigned long int)100 == (unsigned long int)100;
  if (int_ == 1)
    printf("--- M3GCNS11 (45-12) OK ---\n");
  else {
    printf("*** M3GCNS11 (45-12) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (unsigned long int)1 != (unsigned long int)1;
  if (int_ == 0)
    printf("--- M3GCNS11 (45-13) OK ---\n");
  else {
    printf("*** M3GCNS11 (45-13) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  uns_lon = (unsigned long int)10 & (unsigned long int)7;
  if (uns_lon == 2)
    printf("--- M3GCNS11 (45-14) OK ---\n");
  else {
    printf("*** M3GCNS11 (45-14) NG ***\n");
    printf("UNS_LON = %x\n" , uns_lon);
  }
 
 
  uns_lon = (unsigned long int)1 ^ (unsigned long int)2;
  if (uns_lon == 3)
    printf("--- M3GCNS11 (45-15) OK ---\n");
  else {
    printf("*** M3GCNS11 (45-15) NG ***\n");
    printf("UNS_LON = %x\n" , uns_lon);
  }
 
 
  uns_lon = (unsigned long int)10 | (unsigned long int)7;
  if (uns_lon == 15)
    printf("--- M3GCNS11 (45-16) OK ---\n");
  else {
    printf("*** M3GCNS11 (45-16) NG ***\n");
    printf("UNS_LON = %x\n" , uns_lon);
  }
 
 
  int_ = (unsigned long int)100 && (unsigned long int)0;
  if (int_ == 0)
    printf("--- M3GCNS11 (45-17) OK ---\n");
  else {
    printf("*** M3GCNS11 (45-17) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
 
  int_ = (unsigned long int)0 || (unsigned long int)100;
  if (int_ == 1)
    printf("--- M3GCNS11 (45-18) OK ---\n");
  else {
    printf("*** M3GCNS11 (45-18) NG ***\n");
    printf("INT_ = %x\n" , int_);
  }
 
  printf("M3GCNS11 END  \n");
  return 0;
}
 
 
 
 enum  etag1  { en011=sizeof(int)*2+2 , en012 , en013 };
                           
 enum  etag2  { en021=10              , en022 , en023 };
                           
 enum  etag3  { en031 , en032=100%9+9 , en033 };
                 
 enum  etag4  { en041 , en042=10 ,  en043 };
                 
 enum  etag5  { en051=100%9+9 , en052 , en053=sizeof(int)*5 };
                 
 enum  etag6  { en061=10 , en062 , en063=20 };
                 
 enum  etag7  { en071=sizeof(int)*2+2,en072,en073,en074,en075 };
                           
 enum  etag8  { en081=10    , en082 , en083 , en084 , en085 };
                  
 enum  etag9  { en091,en092=100%9+9,en093,en094=10*2,en095 };
                 
 enum  etag10 { en101 , en102=10 ,  en103 , en104=20 ,en105 };
                 
 enum  etag11 {en111=100%9+9,en112,en113=sizeof(int)*5,en114,en115 };
                 
 enum  etag12 { en121=10,en122,en123=20,en124,en125 };
                 
 enum  etag13 { en131,en132,en133,en134,en135 };
                 
 enum  etag14 { en141 = sizeof(int)*sizeof(short)+2,   
                 en142  ,                               
                 en143  ,                               
                 en144  ,                               
                 en145  ,                               
                 en146  ,                               
                 en147  ,                               
                 en148                                  
              };
 enum  etag15 { en151 = 10 ,                           
                 en152  ,                               
                 en153  ,                               
                 en154  ,                               
                 en155  ,                               
                 en156  ,                               
                 en157  ,                               
                 en158                                  
              };
 enum  etag16 { en161 = sizeof(1)+3        ,           
                 en162  ,                               
                 en163 = sizeof((float)1)*3 ,           
                 en164  ,                               
                 en165 = 1+2+3+4+5+10  ,                
                 en166  ,                               
                 en167 = en161-1 ,                      
                 en168                                  
              };
 enum  etag17 { en171 = 7                  ,           
                 en172  ,                               
                 en173 = 12                 ,           
                 en174  ,                               
                 en175 = 25              ,              
                 en176  ,                               
                 en177 = 6       ,                      
                 en178                                  
              };
 enum  etag18 { en181  ,                               
                 en182 = en181-20  ,                    
                 en183  ,                               
                 en184 = en183+20  ,                    
                 en185  ,                               
                 en186 = en185*10  ,                    
                 en187  ,                               
                 en188                                  
              };
 enum  etag19 { en191  ,                               
                 en192 = -20       ,                    
                 en193  ,                               
                 en194 = 1         ,                    
                 en195  ,                               
                 en196 = 20        ,                    
                 en197  ,                               
                 en198                                  
              };
 enum  etag20 { en201  ,                               
                 en202  ,                               
                 en203  ,                               
                 en204  ,                               
                 en205  ,                               
                 en206  ,                               
                 en207  ,                               
                 en208                                  
              };
int m3genum1 (void)
{
  int  a00=0;
  int  a01=1;
  int  a02=2;
  int  a03=3;
  int  a04=4;
  int  a05=5;
  int  a06=6;
  int  a07=7;
  int  a08=8;
  int  a09=9;
  int  a10=10;
  int  a11=11;
  int  a12=12;
  int  a13=13;
  int  a14=14;
  int  a15=15;
  int  a16=16;
  int  a17=17;
  int  a18=18;
  int  a19=19;
  int  a20=20;
  int  a21=21;
  int  a22=22;
  int  a25=25;
  int  a26=26;
  int  b20=-20;
  int  b19=-19;
   printf("*** M3GENUM1 ** MK3 TEST ** STARTED ***\n");
  if((a10==en011) &&
     (a11==en012) &&
     (a12==en013) )
   printf("*** M3GENUM1 - 01 ** OK ***\n");
   else
   printf("*** M3GENUM1 - 01 ** NG ****\n");
  if((a10==en021) &&
     (a11==en022) &&
     (a12==en023) )
   printf("*** M3GENUM1 - 02 ** OK ***\n");
   else
   printf("*** M3GENUM1 - 02 ** NG ****\n");
  if((a00==en031) &&
     (a10==en032) &&
     (a11==en033) )
   printf("*** M3GENUM1 - 03 ** OK ***\n");
   else
   printf("*** M3GENUM1 - 03 ** NG ****\n");
  if((a00==en041) &&
     (a10==en042) &&
     (a11==en043) )
   printf("*** M3GENUM1 - 04 ** OK ***\n");
   else
   printf("*** M3GENUM1 - 04 ** NG ****\n");
  if((a10==en051) &&
     (a11==en052) &&
     (a20==en053) )
   printf("*** M3GENUM1 - 05 ** OK ***\n");
   else
   printf("*** M3GENUM1 - 05 ** NG ****\n");
  if((a10==en061) &&
     (a11==en062) &&
     (a20==en063) )
   printf("*** M3GENUM1 - 06 ** OK ***\n");
   else
   printf("*** M3GENUM1 - 06 ** NG ****\n");
  if((a10==en071) &&
     (a11==en072) &&
     (a12==en073) &&
     (a13==en074) &&
     (a14==en075) )
   printf("*** M3GENUM1 - 07 ** OK ***\n");
   else
   printf("*** M3GENUM1 - 07 ** NG ****\n");
  if((a10==en081) &&
     (a11==en082) &&
     (a12==en083) &&
     (a13==en084) &&
     (a14==en085) )
   printf("*** M3GENUM1 - 08 ** OK ***\n");
   else
   printf("*** M3GENUM1 - 08 ** NG ****\n");
  if((a00==en091) &&
     (a10==en092) &&
     (a11==en093) &&
     (a20==en094) &&
     (a21==en095) )
   printf("*** M3GENUM1 - 09 ** OK ***\n");
   else
   printf("*** M3GENUM1 - 09 ** NG ****\n");
  if((a00==en101) &&
     (a10==en102) &&
     (a11==en103) &&
     (a20==en104) &&
     (a21==en105) )
   printf("*** M3GENUM1 - 10 ** OK ***\n");
   else
   printf("*** M3GENUM1 - 10 ** NG ****\n");
  if((a10==en111) &&
     (a11==en112) &&
     (a20==en113) &&
     (a21==en114) &&
     (a22==en115) )
   printf("*** M3GENUM1 - 11 ** OK ***\n");
   else
   printf("*** M3GENUM1 - 11 ** NG ****\n");
  if((a10==en121) &&
     (a11==en122) &&
     (a20==en123) &&
     (a21==en124) &&
     (a22==en125) )
   printf("*** M3GENUM1 - 12 ** OK ***\n");
   else
   printf("*** M3GENUM1 - 12 ** NG ****\n");
  if((a00==en131) &&
     (a01==en132) &&
     (a02==en133) &&
     (a03==en134) &&
     (a04==en135) )
   printf("*** M3GENUM1 - 13 ** OK ***\n");
   else
   printf("*** M3GENUM1 - 13 ** NG ****\n");
  if((a10==en141) &&
     (a11==en142) &&
     (a12==en143) &&
     (a13==en144) &&
     (a14==en145) &&
     (a15==en146) &&
     (a16==en147) &&
     (a17==en148) )
   printf("*** M3GENUM1 - 14 ** OK ***\n");
   else
   printf("*** M3GENUM1 - 14 ** NG ****\n");
  if((a10==en151) &&
     (a11==en152) &&
     (a12==en153) &&
     (a13==en154) &&
     (a14==en155) &&
     (a15==en156) &&
     (a16==en157) &&
     (a17==en158) )
   printf("*** M3GENUM1 - 15 ** OK ***\n");
   else
   printf("*** M3GENUM1 - 15 ** NG ****\n");
  if((a07==en161) &&
     (a08==en162) &&
     (a12==en163) &&
     (a13==en164) &&
     (a25==en165) &&
     (a26==en166) &&
     (a06==en167) &&
     (a07==en168) )
   printf("*** M3GENUM1 - 16 ** OK ***\n");
   else
   printf("*** M3GENUM1 - 16 ** NG ****\n");
  if((a07==en171) &&
     (a08==en172) &&
     (a12==en173) &&
     (a13==en174) &&
     (a25==en175) &&
     (a26==en176) &&
     (a06==en177) &&
     (a07==en178) )
   printf("*** M3GENUM1 - 17 ** OK ***\n");
   else
   printf("*** M3GENUM1 - 17 ** NG ****\n");
  if((a00==en181) &&
     (b20==en182) &&
     (b19==en183) &&
     (a01==en184) &&
     (a02==en185) &&
     (a20==en186) &&
     (a21==en187) &&
     (a22==en188) )
   printf("*** M3GENUM1 - 18 ** OK ***\n");
   else
   printf("*** M3GENUM1 - 18 ** NG ****\n");
  if((a00==en191) &&
     (b20==en192) &&
     (b19==en193) &&
     (a01==en194) &&
     (a02==en195) &&
     (a20==en196) &&
     (a21==en197) &&
     (a22==en198) )
   printf("*** M3GENUM1 - 19 ** OK ***\n");
   else
   printf("*** M3GENUM1 - 19 ** NG ****\n");
  if((a00==en201) &&
     (a01==en202) &&
     (a02==en203) &&
     (a03==en204) &&
     (a04==en205) &&
     (a05==en206) &&
     (a06==en207) &&
     (a07==en208) )
   printf("*** M3GENUM1 - 20 ** OK ***\n");
   else
   printf("*** M3GENUM1 - 20 ** NG ****\n");
   printf("******* M3GENUM1 TEST ENDED *******\n");
   return 0;
}
#define proc    {
#define then    {
#define end     }
 
 
 
static int mp1fnc( ) ;
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
 
 
 
struct sort
{
   int data ;
   struct sort *head ;
} ;
int relative (struct sort *now, struct sort *add);
int m3mpyt03 (void)
{
   struct sort num[50] ;
   struct sort *first ;
   struct sort *last ;
   static int allnum[20]={0,1,2,3,4,5,6,7,8,9,10,20,
                           30,40,50,60,70,80,90,100};
   int nums[20] ;
   int n ;
   int i ;
   nums[0]=100 ;
   nums[1]=6 ;
   nums[2]=30 ;
   nums[3]=10 ;
   nums[4]=2 ;
   nums[5]=0 ;
   nums[6]=4 ;
   nums[7]=40 ;
   nums[8]=7 ;
   nums[9]=80 ;
   nums[10]=3 ;
   nums[11]=50 ;
   nums[12]=1 ;
   nums[13]=90 ;
   nums[14]=20 ;
   nums[15]=9 ;
   nums[16]=70 ;
   nums[17]=8 ;
   nums[18]=60 ;
   nums[19]=5 ;
   first=num ;
   last=num ;
   first->data=nums[0] ;
   first->head=0 ;
   i=1;
   printf ("***** SORT *****\n");
   while (i<=19)
      {
         last++ ;
         last->head=0 ;
         last->data=nums[i] ;
         if (first->data > last->data)
           {
             last->head=first ;
             first=last;
           }
         else
             relative (first,last);
         i++;
       }
    n=0;
    while (first != 0)
       {
         printf ("***** LIST DATA : %2d\n",first->data );
         nums[n]=first->data ;
         first=first->head ;
         n++;
       }
   if (memcmp(nums,allnum,80)==0)
        printf ("***** OK *****\n");
   else
        printf ("***** NG *****\n");
   return 0;
}
int relative (struct sort *now, struct sort *add)
{
    if ((now->head->data)<(add->data) && now->head!=0)
      {
        relative (now->head,add);
      }
    else
     {
        add->head=now->head;
        now->head=add ;
     }
    return 0;
}
 
 
 
int m3mpcm05 (void)
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
 
  if ( sizeof ( s1 + usshi ) == 4 )
    printf("TEST01 --> OK \n");
  
  if ( sizeof ( s1 + sshi ) == 4 )
    printf("TEST02 --> OK \n");
  
  if ( sizeof ( s1 + shi ) == 4 )
    printf("TEST03 --> OK \n");
  
  if ( sizeof ( s1 + usc ) == 4 )
    printf("TEST04 --> OK \n");
  
  if ( sizeof ( s1 + sc ) == 4 )
    printf("TEST05 --> OK \n");
  
  if ( sizeof ( s1 + c ) == 4 )
    printf("TEST06 --> OK \n");
  
  if ( sizeof ( s2 + sshi ) == 4 )
    printf("TEST07 --> OK \n");
  
  if ( sizeof ( s2 + shi ) == 4 )
    printf("TEST08 --> OK \n");
  
  if ( sizeof ( s2 + usc ) == 4 )
    printf("TEST09 --> OK \n");
 
  if ( sizeof ( s2 + sc ) == 4 )
    printf("TEST10 --> OK \n");
  
  if ( sizeof ( s2 + c ) == 4 )
    printf("TEST11 --> OK \n");
  
  if ( sizeof ( s3 + shi ) == 4 )
    printf("TEST12 --> OK \n");
  
  if ( sizeof ( s3 + usc ) == 4 )
    printf("TEST13 --> OK \n");
  
  if ( sizeof ( s3 + sc ) == 4 )
    printf("TEST14 --> OK \n");
  
  if ( sizeof ( s3 + c ) == 4 )
    printf("TEST15 --> OK \n");
  
  if ( sizeof ( c1 + usc ) == 4 )
    printf("TEST16 --> OK \n");
  
  if ( sizeof ( c1 + sc ) == 4 )
    printf("TEST17 --> OK \n");
  
  if ( sizeof ( c1 + c ) == 4 )
    printf("TEST18 --> OK \n");
  
  if ( sizeof ( c2 + sc ) == 4 )
    printf("TEST19 --> OK \n");
  
  if ( sizeof ( c2 + c ) == 4 )
    printf("TEST20 --> OK \n");
  
  if ( sizeof ( c3 + c ) == 4 )
    printf("TEST21 --> OK \n");
   return 0;
}
 
 
 
int m3mptr05 (void)
{
  int a,b,c,d,e,i,j,flag=0;
  i=0;
  a=0;
  c=0;
  a=2;
  if(c>=5){
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
 
 
 
static unsigned int bxdata[] = {
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         0,         0,         0,
         1,         1,         1,
       127,     32767,   8388607,
       127,     32767,   8388607,
       127,     32767,   8388607,
       127,     32767,   8388607,
         0,         0,         0,
         1,         1,         1,
       127,     32767,   8388607,
       128,     32768,   8388608,
       128,     32768,   8388608,
       128,     32768,   8388608,
         0,         0,         0,
         1,         1,         1,
       127,     32767,   8388607,
       128,     32768,   8388608,
       129,     32769,   8388609,
       129,     32769,   8388609,
         0,         0,         0,
         1,         1,         1,
       127,     32767,   8388607,
       128,     32768,   8388608,
       129,     32769,   8388609,
       255,     65535,4294967295,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         0,         0,         0,
         1,         1,         1,
       127,     32767,   8388607,
       127,     32767,   8388607,
       127,     32767,   8388607,
       127,     32767,   8388607,
         0,         0,         0,
         1,         1,         1,
       127,     32767,   8388607,
       128,     32768,   8388608,
       128,     32768,   8388608,
       128,     32768,   8388608,
         0,         0,         0,
         1,         1,         1,
       127,     32767,   8388607,
       128,     32768,   8388608,
       129,     32769,   8388609,
       129,     32769,   8388609,
         0,         0,         0,
         1,         1,         1,
       127,     32767,   8388607,
       128,     32768,   8388608,
       129,     32769,   8388609,
       255,     65535,4294967295,
         1,         1,         1,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         1,         1,         1,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         1,         1,         1,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         1,         1,         1,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         1,         1,         1,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         0,         0,         0,
         1,         1,         1,
         0,         0,         0,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         0,         0,         0,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         0,         0,         0,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         0,         0,         0,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         0,         0,         0,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         0,         0,         0,
         0,         0,         0,
         1,         1,         1,
       127,     32767,   8388607,
       128,     32768,   8388608,
       129,     32769,   8388609,
       255,     65535,4294967295,
         1,         1,         1,
         1,         1,         1,
       127,     32767,   8388607,
       128,     32768,   8388608,
       129,     32769,   8388609,
       255,     65535,4294967295,
       127,     32767,   8388607,
       127,     32767,   8388607,
       127,     32767,   8388607,
       128,     32768,   8388608,
       129,     32769,   8388609,
       255,     65535,4294967295,
       128,     32768,   8388608,
       128,     32768,   8388608,
       128,     32768,   8388608,
       128,     32768,   8388608,
       129,     32769,   8388609,
       255,     65535,4294967295,
       129,     32769,   8388609,
       129,     32769,   8388609,
       129,     32769,   8388609,
       129,     32769,   8388609,
       129,     32769,   8388609,
       255,     65535,4294967295,
       255,     65535,4294967295,
       255,     65535,4294967295,
       255,     65535,4294967295,
       255,     65535,4294967295,
       255,     65535,4294967295,
       255,     65535,4294967295,
         0,         0,         0,
         1,         1,         1,
       127,     32767,   8388607,
       128,     32768,   8388608,
       129,     32769,   8388609,
       255,     65535,4294967295,
         1,         1,         1,
         1,         1,         1,
       127,     32767,   8388607,
       128,     32768,   8388608,
       129,     32769,   8388609,
       255,     65535,4294967295,
       127,     32767,   8388607,
       127,     32767,   8388607,
       127,     32767,   8388607,
       128,     32768,   8388608,
       129,     32769,   8388609,
       255,     65535,4294967295,
       128,     32768,   8388608,
       128,     32768,   8388608,
       128,     32768,   8388608,
       128,     32768,   8388608,
       129,     32769,   8388609,
       255,     65535,4294967295,
       129,     32769,   8388609,
       129,     32769,   8388609,
       129,     32769,   8388609,
       129,     32769,   8388609,
       129,     32769,   8388609,
       255,     65535,4294967295,
       255,     65535,4294967295,
       255,     65535,4294967295,
       255,     65535,4294967295,
       255,     65535,4294967295,
       255,     65535,4294967295,
       255,     65535,4294967295,
         0,         0,         0,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1,
         1,         1,         1
};
int bxchk (unsigned char i, unsigned short j, unsigned int k)
{
      static int c=0;
      if( bxdata[c++] != (unsigned int)i ) {
        puts(" NG ");
        exit(1);
      }
      if( bxdata[c++] != (unsigned int)j ) {
        puts(" NG ");
        exit(1);
      }
      if( bxdata[c++] != (unsigned int)k ) {
        puts(" NG ");
        exit(1);
      }
      return 0;
}
  
unsigned char           bxdim1[] =
{ 0, 1, 0x7f,    0x80,    0x81 ,    0xff};
unsigned short      int bydim1[] =
{ 0, 1 ,0x7fff,  0x8000,  0x8001 ,  0xffff };
unsigned            int bzdim1[] =
{ 0, 1, 0x7fffff,0x800000,0x800001 ,0xffffffff };
int scrsk10 (void)
{
       lt(); le();
       eq(); ne();
       gt(); ge();
       rz();
       puts(" OK ");
       return 0;
}
int lt (void)
{
       int i,j;
       unsigned char  i1,i1ans[11],op1;
       unsigned short i2,i2ans[11],op2;
       unsigned int   i4,i4ans[11],op4;
       for(j=0;j<6;j++) {
          op1        = bxdim1[j];
          op2        = bydim1[j];
          op4        = bzdim1[j];
         for(i=0;i<6;i++) {
            i1         = bxdim1[i];
            i2         = bydim1[i];
            i4         = bzdim1[i];
            i1ans[i] = i1 < op1 ? i1 : op1;
            i2ans[i] = i2 < op2 ? i2 : op2;
            i4ans[i] = i4 < op4 ? i4 : op4;
         }
         for(i=0;i<6;i++) {
           bxchk(i1ans[i],
                                       i2ans[i],
                                       i4ans[i] );
         }
       }
       return 0;
}
int le (void)
{
       int i,j;
       unsigned char  i1,i1ans[11],op1;
       unsigned short i2,i2ans[11],op2;
       unsigned int   i4,i4ans[11],op4;
       for(j=0;j<6;j++) {
          op1        = bxdim1[j];
          op2        = bydim1[j];
          op4        = bzdim1[j];
         for(i=0;i<6;i++) {
            i1         = bxdim1[i];
            i2         = bydim1[i];
            i4         = bzdim1[i];
            i1ans[i] = i1 <= op1 ? i1 : op1;
            i2ans[i] = i2 <= op2 ? i2 : op2;
            i4ans[i] = i4 <= op4 ? i4 : op4;
         }
         for(i=0;i<6;i++) {
           bxchk(i1ans[i],
                                       i2ans[i],
                                       i4ans[i] );
         }
       }
       return 0;
}
int eq (void)
{
       int i,j;
       unsigned char  i1,i1ans[11],op1;
       unsigned short i2,i2ans[11],op2;
       unsigned int   i4,i4ans[11],op4;
       for(j=0;j<6;j++) {
          op1        = bxdim1[j];
          op2        = bydim1[j];
          op4        = bzdim1[j];
         for(i=0;i<6;i++) {
            i1         = bxdim1[i];
            i2         = bydim1[i];
            i4         = bzdim1[i];
            i1ans[i] = i1 == op1 ? 1:0;
            i2ans[i] = i2 == op2 ? 1:0;
            i4ans[i] = i4 == op4 ? 1:0;
         }
         for(i=0;i<6;i++) {
           bxchk(i1ans[i],
                                       i2ans[i],
                                       i4ans[i] );
         }
       }
       return 0;
}
int ne (void)
{
       int i,j;
       unsigned char  i1,i1ans[11],op1;
       unsigned short i2,i2ans[11],op2;
       unsigned int   i4,i4ans[11],op4;
       for(j=0;j<6;j++) {
          op1        = bxdim1[j];
          op2        = bydim1[j];
          op4        = bzdim1[j];
         for(i=0;i<6;i++) {
            i1         = bxdim1[i];
            i2         = bydim1[i];
            i4         = bzdim1[i];
            i1ans[i] = i1 != op1 ? 1:0;
            i2ans[i] = i2 != op2 ? 1:0;
            i4ans[i] = i4 != op4 ? 1:0;
         }
         for(i=0;i<6;i++) {
           bxchk(i1ans[i],
                                       i2ans[i],
                                       i4ans[i] );
         }
       }
       return 0;
}
int gt (void)
{
       int i,j;
       unsigned char  i1,i1ans[11],op1;
       unsigned short i2,i2ans[11],op2;
       unsigned int   i4,i4ans[11],op4;
       for(j=0;j<6;j++) {
          op1        = bxdim1[j];
          op2        = bydim1[j];
          op4        = bzdim1[j];
         for(i=0;i<6;i++) {
            i1         = bxdim1[i];
            i2         = bydim1[i];
            i4         = bzdim1[i];
            i1ans[i] = i1 >  op1?i1:op1;
            i2ans[i] = i2 >  op2?i2:op2;
            i4ans[i] = i4 >  op4?i4:op4;
         }
         for(i=0;i<6;i++) {
           bxchk(i1ans[i],
                                       i2ans[i],
                                       i4ans[i] );
         }
       }
       return 0;
}
int ge (void)
{
       int i,j;
       unsigned char  i1,i1ans[11],op1;
       unsigned short i2,i2ans[11],op2;
       unsigned int   i4,i4ans[11],op4;
       for(j=0;j<6;j++) {
          op1        = bxdim1[j];
          op2        = bydim1[j];
          op4        = bzdim1[j];
         for(i=0;i<6;i++) {
            i1         = bxdim1[i];
            i2         = bydim1[i];
            i4         = bzdim1[i];
            i1ans[i] = i1 >= op1?i1:op1;
            i2ans[i] = i2 >= op2?i2:op2;
            i4ans[i] = i4 >= op4?i4:op4;
         }
         for(i=0;i<6;i++) {
           bxchk(i1ans[i],
                                       i2ans[i],
                                       i4ans[i] );
         }
       }
       return 0;
}
int rz (void)
{
       int i,j;
       unsigned char  i1,i1ans[11],op1;
       unsigned short i2,i2ans[11],op2;
       unsigned int   i4,i4ans[11],op4;
         for(i=0;i<6;i++) {
            i1         = bxdim1[i];
            i2         = bydim1[i];
            i4         = bzdim1[i];
            i1ans[i] = i1 == 0?0:1;
            i2ans[i] = i2 == 0?0:1;
            i4ans[i] = i4 == 0?0:1;
         }
         for(i=0;i<6;i++) {
           bxchk(i1ans[i],
                                       i2ans[i],
                                       i4ans[i] );
         }
	 return 0;
}
