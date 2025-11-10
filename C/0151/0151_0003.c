















  #include <stdio.h>
  #include "001.h"






char (func06)( int, int, int, int, int,
               int, int, int, int, int );



struct strddf *(func07)( int, int, short int, char * );



union uniddf *(func08)( int, int, short int );



  char arr06[] = { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H',
                   'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P',
                   'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X',
                   'Y', 'Z' };

  struct strddf{
           int iddf0701;
           int iddf0702;
           short int sddf0703;
           char addf0704[4];
  };
  typedef struct strddf STRDDF;

  union uniddf{
           int iddf0801;
           int iddf0802;
           short int sddf0803;
  };
  typedef union uniddf UNIDDF;










char (func06)( int iarg06_01,int iarg06_02,int iarg06_03,
               int iarg06_04,int iarg06_05,int iarg06_06,
               int iarg06_07,int iarg06_08,int iarg06_09,
               int iarg06_10)
{ 
  int intf06;

  intf06 = iarg06_01 + iarg06_02 + iarg06_03 + iarg06_04 +
           iarg06_05 + iarg06_06 + iarg06_07 + iarg06_08 +
           iarg06_09 + iarg06_10;
  intf06 %= 26;

  return arr06[intf06];
}







STRDDF *(func07)( int iarg07_01, int iarg07_02, short int iarg07_03, char *carg07_04)
{
  static STRDDF strara07;

  int i;

  strara07.iddf0701 = iarg07_01;
  strara07.iddf0702 = iarg07_02;
  strara07.sddf0703 = iarg07_03;
  for(i = 0; i < 4; i++)
    strara07.addf0704[i] = *(carg07_04 + i);

  return &strara07;
}







UNIDDF *(func08)( int        iarg08_01,
                  int        iarg08_02,
                  short int  iarg08_03)
{
  static UNIDDF uniara08;

  int i;

  uniara08.iddf0801 = iarg08_01;
  uniara08.iddf0802 = iarg08_02;
  uniara08.sddf0803 = iarg08_03;

  return &uniara08;
}




int main()
{




  header("","function declarator test proc no.2.");



{
  char retcha06;

  retcha06 = func06(21,22,23,24,25,26,27,28,29,30);

  cchck("DDF01_06",'V',retcha06,
        "return : char, arg : 10 int type function test");
}



{
  int       int07_01 = 1;
  int       int07_02 = 2;
  short int sint07_03 = 3;
  char     *carr07_04 = "abcd";
  STRDDF   *strddfp;

  strddfp = func07( int07_01, int07_02, sint07_03, carr07_04);

  sichck("DDF01_07", 3, strddfp->sddf0703,
         "return : struct *, arg : int and char type function test");
}



{
  int       int08_01 = 1;
  int       int08_02 = 2;
  short int sint08_03 = 3;
  UNIDDF   *uniddfp;

  uniddfp = func08( int08_01, int08_02, sint08_03);
#if defined(os2) || defined(_WIN32) || defined(__i386__) || defined(__i386) || defined(__x86_64__) || defined(__aarch64__) 
  ichck("DDF01_08", 3, uniddfp->iddf0801,
        "return : union *, arg : int type function test");
#elif defined(INT64)
  ichck("DDF01_08", 844424930131970, uniddfp->iddf0801,
        "return : union *, arg : int type function test");
#else            
  ichck("DDF01_08", 196610, uniddfp->iddf0801,
        "return : union *, arg : int type function test");
#endif
}




  header("","function declarator test proc no.2.");
}
