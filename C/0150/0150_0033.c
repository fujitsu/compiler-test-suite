#include <stdlib.h>
#include <stdio.h>
#include <math.h>
 
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
int main()
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
 
   printf("***  ** MK3 TEST ** STARTED ***\n");
 
  if((a10==en011) &&
     (a11==en012) &&
     (a12==en013) )
   printf("***  - 01 ** OK ***\n");
   else
   printf("***  - 01 ** NG ****\n");
 
  if((a10==en021) &&
     (a11==en022) &&
     (a12==en023) )
   printf("***  - 02 ** OK ***\n");
   else
   printf("***  - 02 ** NG ****\n");
 
  if((a00==en031) &&
     (a10==en032) &&
     (a11==en033) )
   printf("***  - 03 ** OK ***\n");
   else
   printf("***  - 03 ** NG ****\n");
 
  if((a00==en041) &&
     (a10==en042) &&
     (a11==en043) )
   printf("***  - 04 ** OK ***\n");
   else
   printf("***  - 04 ** NG ****\n");
 
  if((a10==en051) &&
     (a11==en052) &&
     (a20==en053) )
   printf("***  - 05 ** OK ***\n");
   else
   printf("***  - 05 ** NG ****\n");
 
  if((a10==en061) &&
     (a11==en062) &&
     (a20==en063) )
   printf("***  - 06 ** OK ***\n");
   else
   printf("***  - 06 ** NG ****\n");
 
  if((a10==en071) &&
     (a11==en072) &&
     (a12==en073) &&
     (a13==en074) &&
     (a14==en075) )
   printf("***  - 07 ** OK ***\n");
   else
   printf("***  - 07 ** NG ****\n");
 
  if((a10==en081) &&
     (a11==en082) &&
     (a12==en083) &&
     (a13==en084) &&
     (a14==en085) )
   printf("***  - 08 ** OK ***\n");
   else
   printf("***  - 08 ** NG ****\n");
 
  if((a00==en091) &&
     (a10==en092) &&
     (a11==en093) &&
     (a20==en094) &&
     (a21==en095) )
   printf("***  - 09 ** OK ***\n");
   else
   printf("***  - 09 ** NG ****\n");
 
  if((a00==en101) &&
     (a10==en102) &&
     (a11==en103) &&
     (a20==en104) &&
     (a21==en105) )
   printf("***  - 10 ** OK ***\n");
   else
   printf("***  - 10 ** NG ****\n");
 
  if((a10==en111) &&
     (a11==en112) &&
     (a20==en113) &&
     (a21==en114) &&
     (a22==en115) )
   printf("***  - 11 ** OK ***\n");
   else
   printf("***  - 11 ** NG ****\n");
 
  if((a10==en121) &&
     (a11==en122) &&
     (a20==en123) &&
     (a21==en124) &&
     (a22==en125) )
   printf("***  - 12 ** OK ***\n");
   else
   printf("***  - 12 ** NG ****\n");
 
  if((a00==en131) &&
     (a01==en132) &&
     (a02==en133) &&
     (a03==en134) &&
     (a04==en135) )
   printf("***  - 13 ** OK ***\n");
   else
   printf("***  - 13 ** NG ****\n");
 
  if((a10==en141) &&
     (a11==en142) &&
     (a12==en143) &&
     (a13==en144) &&
     (a14==en145) &&
     (a15==en146) &&
     (a16==en147) &&
     (a17==en148) )
   printf("***  - 14 ** OK ***\n");
   else
   printf("***  - 14 ** NG ****\n");
 
  if((a10==en151) &&
     (a11==en152) &&
     (a12==en153) &&
     (a13==en154) &&
     (a14==en155) &&
     (a15==en156) &&
     (a16==en157) &&
     (a17==en158) )
   printf("***  - 15 ** OK ***\n");
   else
   printf("***  - 15 ** NG ****\n");
 
  if((a07==en161) &&
     (a08==en162) &&
     (a12==en163) &&
     (a13==en164) &&
     (a25==en165) &&
     (a26==en166) &&
     (a06==en167) &&
     (a07==en168) )
   printf("***  - 16 ** OK ***\n");
   else
   printf("***  - 16 ** NG ****\n");
 
  if((a07==en171) &&
     (a08==en172) &&
     (a12==en173) &&
     (a13==en174) &&
     (a25==en175) &&
     (a26==en176) &&
     (a06==en177) &&
     (a07==en178) )
   printf("***  - 17 ** OK ***\n");
   else
   printf("***  - 17 ** NG ****\n");
 
  if((a00==en181) &&
     (b20==en182) &&
     (b19==en183) &&
     (a01==en184) &&
     (a02==en185) &&
     (a20==en186) &&
     (a21==en187) &&
     (a22==en188) )
   printf("***  - 18 ** OK ***\n");
   else
   printf("***  - 18 ** NG ****\n");
 
  if((a00==en191) &&
     (b20==en192) &&
     (b19==en193) &&
     (a01==en194) &&
     (a02==en195) &&
     (a20==en196) &&
     (a21==en197) &&
     (a22==en198) )
   printf("***  - 19 ** OK ***\n");
   else
   printf("***  - 19 ** NG ****\n");
 
  if((a00==en201) &&
     (a01==en202) &&
     (a02==en203) &&
     (a03==en204) &&
     (a04==en205) &&
     (a05==en206) &&
     (a06==en207) &&
     (a07==en208) )
   printf("***  - 20 ** OK ***\n");
   else
   printf("***  - 20 ** NG ****\n");
 
 
   printf("*******  TEST ENDED *******\n");
exit (0);
}
