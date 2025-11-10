
















  #include <stdio.h>
  #include "001.h"







int main()
{



  char *ans="   ";



  header("","lvalue and function designator test");



 {
  char mol01[10]="abcdefghi";
  char *ptr     =0;
  ptr=mol01;
  cchck("mol01_01",'a',*ptr,"array(char) convert");
 }



 {
  int mol02[2][2]={1,2,3,4};
  int *ptr=0;
  ptr=mol02[0];
  ichck("mol01_02",1,*ptr,"array(short int) convert");
 }



 {
  short int mol03[1]={100};
  short int *ptr=0;
  ptr=mol03;
  ichck("mol01_03",100,*ptr,"array(short int) convert");
 }



 {
  long int mol04[2][2]={10,20,30,40};
  long int *ptr=0;
  ptr=mol04[0]+1;
  ichck("mol01_04",20,*ptr,"array(long int) convert");
 }



#if (defined msp)||(defined uxp)
 {
  long long int mol05[100];
  long long int *ptr=0;
  mol05[10]=1234567890ll;
  ptr=mol05+10;
  llichck("mol01_05",1234567890ll,*ptr,"array(long long int) convert");
 }
#endif



 {
  int *ptr=0;
  enum  tag06 {en01=-1,en02,en03} (mol06)[4];
  mol06[0]=500;
  ptr=mol06;
  ichck("mol01_06",500,*ptr,"array(enum) convert");
 }



 {
  struct tag07 {int  int_01;
               char chr_01;} (mol07)[4];
  mol07[0].int_01=100;
  mol07[1].int_01=200;
  mol07[0].chr_01='a';
  mol07[1].chr_01='b';
  if (mol07==&mol07[0]) ans="ok";
  else                 ans="ng";
  schck("mol01_07","ok",ans,"array(struct) convert");
 }



 {
  union tag08 {int  int_01;
               char chr_01;} (mol08)[4];
  mol08[0].int_01=100;
  mol08[1].int_01=200;
  mol08[0].chr_01='a';
  mol08[1].chr_01='b';
  if (mol08==&mol08[0]) ans="ok";
  else                  ans="ng";
  schck("mol01_08","ok",ans,"array(union) convert");
 }



  header("","lvalue and function designator test");
  }
