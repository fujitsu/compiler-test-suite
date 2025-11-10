
















  #include <stdio.h>
  #include <stddef.h>
  #include "001.h"





const volatile int  *func08(){
  static int int1=888;
  return(&int1);
}







int main()
{



  char *ans="   ";
  char *pint0;
  pint0=0;



  header("","pointer conversion test");



 {
  char  chr01='A';
  char  *pchr01;
  void  *pvid01;

  pvid01=&chr01;
  pchr01=&chr01;
  pvid01=pchr01;
  if ((pvid01==pchr01)&&
      (*pchr01=='A'))        ans="ok";
  else                       ans="ng";
  schck("mop01_01_01","ok",ans,"pointer(char) convert");

  pchr01=0;
  if ((pchr01==NULL)  &&
      (pchr01!=&chr01)&&
      ((void *)pchr01==pint0)) ans="ok";
  else                         ans="ng";
  schck("mop01_01_02","ok",ans,"pointer(char) convert");
 }



 {
  int   int01=100;
  int        *pint01;
  const int  *pcint01;
  void       *pvid01;

  pint01 =&int01;
  pcint01=&int01;
  pvid01 =&int01;
  if ((pcint01 ==(void *)pint01)&&
      (pvid01  ==pint01)        &&
      (*pint01 ==100)           &&
      (*pcint01==100))       ans="ok";
  else                       ans="ng";
  schck("mop01_02_01","ok",ans,"pointer(int) convert");

  pint01=(void *)0;
  pcint01=0;
  if ((pint01==pcint01)&&
      (pint01==NULL)   &&
      ((void *)pint01==pint0)) ans="ok";
  else                         ans="ng";
  schck("mop01_02_02","ok",ans,"pointer(int) convert");
 }



 {
#define ZERO  0
  float flt01=1.0e+2f;
  float          *pflt01;
  volatile float *pvflt01;
  void           *pvid01;

  pflt01 =&flt01;
  pvflt01=&flt01;
  pvid01 =&flt01;
  if ((pflt01  ==pvflt01)                    &&
      (pvid01  ==(void *)pflt01)             &&
      (pvid01  ==(volatile float  *)pflt01)  &&
      (*pflt01 ==1.0e+2f)                    &&
      (*pvflt01==1.0e+2f)) ans="ok";
  else                     ans="ng";
  schck("mop01_03_01","ok",ans,"pointer(float) convert");

  pflt01=(float *)0;
  pflt01=(void *)0;
  pvflt01=0;
  if ((pflt01==pvflt01) &&
      (pflt01==0x0)     &&
      (pflt01==00)      &&
      (pflt01==ZERO)    &&
      (pflt01==NULL)    &&
      ((void *)pflt01==pint0)) ans="ok";
  else                         ans="ng";
  schck("mop01_03_01","ok",ans,"pointer(flt) convert");
 }






 {
  char  ary01[100]="ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  char                 *pary01;
  const volatile char  *pcary01;
  void                 *pvid01;

  pary01 =ary01;
  pcary01=ary01;
  pvid01 =ary01;
  pary01++;

  if ((*pary01  =='B')&&
      (*pcary01 =='A')&&
      (pcary01+1==pary01)) ans="ok";
  else                     ans="ng";
  schck("mop01_04_01","ok",ans,"pointer(array) convert");
 }



 {
  int   ary01[10]={10,20,30,40,50,60,70,80,90,100};
  int                *pary01;
  const volatile int *pcary01;
  void               *pvid01;

  pary01 =ary01;
  pcary01=ary01;
  pvid01 =ary01;
  pary01+=9;

  if ((*pcary01==10)&&
      (*pary01 ==100)) ans="ok";
  else                 ans="ng";
  schck("mop01_04_02","ok",ans,"pointer(array) convert");

  pary01=(void *)0;
  pcary01=0;
  if ((pary01==pcary01) &&
      (pary01==NULL)    &&
      ((void *)pary01==pint0)) ans="ok";
  else                         ans="ng";
  schck("mop01_04_02","ok",ans,"pointer(array) convert");
 }



 {
  struct tag01 {int  int01;
                char chr01;} str01 ={100,'A'};
  struct tag01 *pstr01;
  void         *pvid01;

  pstr01=&str01;
  pvid01=&str01;

  if ((pvid01==pstr01)&&
      (pstr01->chr01=='A')) ans="ok";
  else                      ans="ng";
  schck("mop01_05_01","ok",ans,"pointer(struct) convert");

  pstr01=0;
  if ((pstr01==NULL) &&
      (void *)pstr01==pint0) ans="ok";
  else                       ans="ng";
  schck("mop01_05_02","ok",ans,"pointer(struct) convert");
 }



 {
  union  tag01 {int  int01;
                char chr01;} uni01 ={100};
  union        tag01 *puni01;
  const union  tag01 *pcuni01;
  void  *pvid01;

  puni01 =&uni01;
  pcuni01=&uni01;
  pvid01 =&uni01;
  if ((puni01==pcuni01)&&
      (pvid01==puni01) &&
      (puni01->int01==100)) ans="ok";
  else                      ans="ng";
  schck("mop01_06_01","ok",ans,"pointer(union) convert");

  puni01=(void *)0;
  pcuni01=0;
  if ((puni01==pcuni01) &&
      (puni01==NULL)    &&
      (void *)puni01==pint0) ans="ok";
  else                       ans="ng";
  schck("mop01_06_02","ok",ans,"pointer(union) convert");
 }



 {
  enum   tag01 {en01=100,en02,en03,en04,en05};
  enum   tag01 enm01;
        enum   tag01 *penm01;
  const enum   tag01 *pvenm01;
  void  *pvid01;
  enm01=10;

  penm01 =&enm01;
  pvenm01=&enm01;
  pvid01 =&enm01;

  if ((penm01 ==pvenm01)&&
      (pvid01 ==penm01)&&
      (*penm01==10)) ans="ok";
  else               ans="ng";
  schck("mop01_07_01","ok",ans,"pointer(enum) convert");

  penm01=(void *)0;
  pvenm01=0;
  if ((penm01==pvenm01)&&
      (penm01==NULL) &&
      ((void *)penm01==pint0)) ans="ok";
  else                         ans="ng";
  schck("mop01_07_02","ok",ans,"pointer(enum) convert");
 }



 {
  const volatile int  *func08();
  const volatile int  *(*pfun01)();
  const volatile int  *(*pcfun01)();
  void                *pvid01   ;
  int                 *str1;
  int const volatile  *str2;
  int                 *str3;

  pfun01 =func08;
  pcfun01=func08;
  pvid01 =func08;                 

  str1=pfun01();
  str2=pcfun01();

  if ((pcfun01  ==pfun01)&&
      (pvid01   ==(void *)pfun01)&&
      (*str1    ==888)&&
      (*str2    ==888)) ans="ok";
  else                  ans="ng";
  schck("mop01_08_01","ok",ans,"pointer(function) convert");

#ifdef os2
  pfun01=(void *)0;
#endif
  pfun01=0;
  pcfun01=0;
  if ((pfun01==pcfun01)&&
      (pfun01==NULL) &&
      ((void *)pfun01==pint0)) ans="ok";
  else                         ans="ng";
  schck("mop01_08_02","ok",ans,"pointer(function) convert");
 }



 {
  int   int01=100;
  int   *pint01;
  int   **pint01_01;
  void  *pvid01;
  void  **pvid01_01;

  pint01=&int01;
  pint01_01=&pint01;
  pvid01=&int01;
  pvid01_01=&pvid01;

  if  (**pint01_01==100)         ans="ok";
  else                           ans="ng";
  schck("mop01_09_01","ok",ans,"pointer(pointer) convert");

  pint01_01=(void *)0;
  if ((pint01_01     ==NULL) &&
      (void *)pint01_01==pint0) ans="ok";
  else                          ans="ng";
  schck("mop01_09_02","ok",ans,"pointer(struct) convert");
 }



 {
  int   int01=100;
  void        *pvid01;
  const void  *pcvid01;
  void        *pvid02;

  pvid01=&int01;
  pcvid01=&int01;
  pvid02=&int01;
  if ((pvid01==pcvid01)&&
      (pvid01==pvid01)) ans="ok";
  else                  ans="ng";
  schck("mop01_10","ok",ans,"pointer(void) convert");

 }



  header("","pointer conversion test");
  }
