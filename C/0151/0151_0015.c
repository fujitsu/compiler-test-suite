















  #include <stdio.h>
#ifdef solaris1
  #include <varargs.h>
#else
  #include <stdarg.h>
#endif
  #include "001.h"



  static volatile char *(((func07)))(volatile char *);
#ifdef solaris1
  static const void func08();
#else
  static const void func08(int,...);
#endif
  static signed char func09(char char11);



  volatile char array[] = {'A','B','C','D','E','F'};










static volatile char *(((func07)))(arrptr)
  volatile char *arrptr;
{
 return arrptr+1;
}







#ifdef solaris1
static const void func08(int_wk1, va_alist)
int int_wk1;
va_dcl
{
  va_list type08;
  int int08;
  int count08 = 0;

  va_start(type08);
#else
static const void func08(int int_wk1,...)
{
  va_list type08;
  int int08;
  int count08 = 0;

  va_start(type08,int_wk1);
#endif
  for(int08 = 1; int08 <= int_wk1; int08++)
    count08 += va_arg(type08,int);

  va_end(type08);
  ichck("EFF01_08",10,count08,
        "function definition with any arguments test");
  return;
}







static signed char func09(char char09)
{
  return char09 + 0x01;
}




int main()
{




  header("","function definion test proc no.3.");



{
  volatile char *arr07;

  arr07 = array;
  arr07 = func07(arr07);
  cchck("EFF01_07",'B',*arr07,"char * type function definition test");
}



{
  int int_wk1 = 4;
  int int_wk2 = 1;
  int int_wk3 = 2;
  int int_wk4 = 3;
  int int_wk5 = 4;

  func08(int_wk1,int_wk2,int_wk3,int_wk4,int_wk5);
}



{
  cchck("EFF01_09",'d',func09('c'),
        "char type function definition test");
}




  header("","function definition test proc no.3.");
}
