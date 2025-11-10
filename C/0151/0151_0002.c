















  #include <stdio.h>
  #include "001.h"










void func02( char, int *, float);



void *func03(void);



#if defined(os2)
void *func04();
#else
void *func04(short int *, int);
#endif



float *func05(int a,int b,int c,int d,int e);







void func01(int iarg01_01)
{
  ichck("DDF01_01",0x05,iarg01_01,
        "return : void, arg : int type function test");
  return ;
}







void func02( register char  carg02_01,
             register int  *iarg02_02,
             register float farg02_03 )
{
  int intf02;

  intf02 = *iarg02_02;
  ichck("DDF01_02",0xffff,intf02,
        "return : void , arg : char, int, float type function test");
  return;
}







void *func03(void)
{
  static char charet = 0x01;

  return &charet;
}







void *func04(short int *siarg04_01,
             int       iparg04_02)
{
  static short int sintf04;

  sintf04 = (short int)iparg04_02 - *siarg04_01 + 5;
  return &sintf04;
}







float *(func05)(iarg05_01,iarg05_02,iarg05_03,iarg05_04,iarg05_05)
  int iarg05_01;
  int iarg05_02;
  int iarg05_03;
  int iarg05_04;
  int iarg05_05;
{
  static float flt05;

  if( (iarg05_01 + iarg05_02 + iarg05_03 +
       iarg05_04 + iarg05_05) == 15 )
    flt05 = 0.23f;
  else
    flt05 = 0.01f;

  return &flt05;
}




int main()
{



  char char_wk1;
  int int_wk1;
  float flt_wk1;







  header("","function declarator test proc no.1.");



{
  char_wk1 = 0x05;
  func01(char_wk1);
}



{
  char_wk1 = 0xff;
  int_wk1  = 0xffff;
  flt_wk1  = 1.23f;

  func02( char_wk1, &int_wk1, flt_wk1 );
}



{
  char *chptr;
  chptr = func03();

  cchck("DDF01_03",0x01,*chptr,
        "return : void *, arg : void type function test");
}



{
  static short int ddfint4 = 32767;
  short int *ddfsint4  = &ddfint4;

  ddfsint4 = func04( ddfsint4, ddfint4);

  sichck("DDF01_04", 5, *ddfsint4,
        "return : void *, arg : short int, int * type function test");
}



{
  int iddf05 = 1;
  float fddf0501;
  float *fddf05;

  fddf05 = func05( iddf05, iddf05 + 1, iddf05 + 2,
                   iddf05 + 3, iddf05 + 4 );
  fddf0501 = *fddf05;

  fchck("DDF01_05", 0.23f, fddf0501, 0.00f,
        "return : float *, arg : 5 int type function test");
}




  header("","function declarator test proc no.1.");
}
