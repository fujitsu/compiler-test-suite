
  #include <stdio.h>
  #include "001.h"

int func26(iarg2601,iarg2602)
  int iarg2601; int iarg2602 ;
{
  return iarg2601 + iarg2602 ;
}

float func27(farg27)
  float farg27;
{
  return farg27;
}

int main()
{


  header("","function definion test proc");

{
  int int2601 = 1;
  int int2602 = 2;
  int int2603 = 3;

  int2601 = func26(int2601, int2602, int2603);
  ichck("FEA02_26",3,int2601,
        "nothing prototype and not same arguments test");
}

{
  char char2701 = 0x10;
  float flt2701;

#if defined(__aarch64__) || defined(__x86_64__)
  flt2701 = func27(0.0);
#else
  flt2701 = func27(char2701,0);
#endif

  fchck("FEA02_27",0.000f,flt2701,0.0000f,
        "nothing prototype and not same arguments test");
}

  header("","call function test proc");
}
