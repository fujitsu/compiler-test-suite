#include <string.h>
#include <stdio.h>

typedef char Str_30[31] ;
Str_30       Str_1_Loc ;
Str_30       Str_2_Loc ;
Str_30       Str_3_Loc ;
Str_30       Str_4_Loc ;
Str_30       Str_5_Loc ;
Str_30       Str_6_Loc ;
Str_30       Str_7_Loc ;
Str_30       Str_8_Loc ;
Str_30       Str_9_Loc ;
Str_30       Str_10_Loc ;
Str_30       Str_11_Loc ;
Str_30       Str_12_Loc ;
Str_30       Str_13_Loc ;
Str_30       Str_14_Loc ;
Str_30       Str_15_Loc ;
Str_30       Str_16_Loc ;
Str_30       Str_17_Loc ;
Str_30       Str_18_Loc ;
Str_30       Str_19_Loc ;
Str_30       Str_20_Loc ;
Str_30       Str_21_Loc ;
Str_30       Str_22_Loc ;
Str_30       Str_23_Loc ;
Str_30       Str_24_Loc ;
Str_30       Str_25_Loc ;
Str_30       Str_26_Loc ;
Str_30       Str_27_Loc ;
Str_30       Str_28_Loc ;
Str_30       Str_29_Loc ;
Str_30       Str_30_Loc ;
Str_30       Str_31_Loc ;
Str_30       Str_32_Loc ;

int test(int a);
int func(int a, Str_30 b, Str_30 c, Str_30 d, Str_30 e);
int main() {
int a ;
printf(" *****  ***** \n") ;
a = test(1) ;
printf(" a = %d \n",a) ;
if( a == 9 )  
  printf(" ** OK ** \n") ;
else
  printf(" ** NG ** \n") ;
}
int test(int a)
{
  int func1() ;

  strcpy(Str_1_Loc, " test tes1 ") ;
  strcpy(Str_2_Loc, " test tes2 ") ;
  strcpy(Str_3_Loc, " test tes3 ") ;
  strcpy(Str_4_Loc, " test tes4 ") ;
  strcpy(Str_5_Loc, " test tes5 ") ;
  strcpy(Str_6_Loc, " test tes6 ") ;
  strcpy(Str_7_Loc, " test tes7 ") ;
  strcpy(Str_8_Loc, " test tes8 ") ;
  strcpy(Str_9_Loc, " test tes9 ") ;
  strcpy(Str_10_Loc, " test tes10 ") ;
  strcpy(Str_11_Loc, " test tes11 ") ;
  strcpy(Str_12_Loc, " test tes12 ") ;
  strcpy(Str_13_Loc, " test tes13 ") ;
  strcpy(Str_14_Loc, " test tes14 ") ;
  strcpy(Str_15_Loc, " test tes15 ") ;
  strcpy(Str_16_Loc, " test tes16 ") ;
  strcpy(Str_17_Loc, " test tes17 ") ;
  strcpy(Str_18_Loc, " test tes18 ") ;
  strcpy(Str_19_Loc, " test tes19 ") ;
  strcpy(Str_20_Loc, " test tes20 ") ;
  strcpy(Str_21_Loc, " test tes21 ") ;
  strcpy(Str_22_Loc, " test tes22 ") ;
  strcpy(Str_23_Loc, " test tes23 ") ;
  strcpy(Str_24_Loc, " test tes24 ") ;
  strcpy(Str_25_Loc, " test tes25 ") ;
  strcpy(Str_26_Loc, " test tes26 ") ;
  strcpy(Str_27_Loc, " test tes27 ") ;
  strcpy(Str_28_Loc, " test tes28 ") ;
  strcpy(Str_29_Loc, " test tes29 ") ;
  strcpy(Str_30_Loc, " test tes30 ") ;
  strcpy(Str_31_Loc, " test tes31 ") ;
  strcpy(Str_32_Loc, " test tes32 ") ;
  a = func(a,Str_1_Loc,Str_2_Loc,Str_3_Loc,Str_4_Loc) ;
  a = func(a,Str_5_Loc,Str_6_Loc,Str_7_Loc,Str_8_Loc) ;
  a = func(a,Str_9_Loc,Str_10_Loc,Str_11_Loc,Str_12_Loc) ;
  a = func(a,Str_13_Loc,Str_14_Loc,Str_15_Loc,Str_16_Loc) ;
  a = func(a,Str_17_Loc,Str_18_Loc,Str_19_Loc,Str_20_Loc) ;
  a = func(a,Str_21_Loc,Str_22_Loc,Str_23_Loc,Str_24_Loc) ;
  a = func(a,Str_25_Loc,Str_26_Loc,Str_27_Loc,Str_28_Loc) ;
  a = func(a,Str_29_Loc,Str_30_Loc,Str_31_Loc,Str_32_Loc) ;

  return(a) ;
}
int func(int a,	Str_30 b, Str_30 c, Str_30 d, Str_30 e)
{
  
  return(a+1) ;
}
