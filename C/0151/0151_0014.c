















  #include <stdio.h>
  #include "001.h"



  volatile signed int func01(int,int,int,int,
                             int,int,int,int,
                             int,int,int,int,
                             int,int,int,int,
                             int,int,int,int,
                             int,int,int,int,
                             int,int,int,int,
                             int,int,int);
  const unsigned char func02(void);
  float func03(void);             



  int int_wk1;
  char chr_wk1;
  float flt_wk1;










volatile signed int func01(int iarg01_01,
                           int iarg01_02,
                           int iarg01_03,
                           int iarg01_04,
                           int iarg01_05,
                           int iarg01_06,
                           int iarg01_07,
                           int iarg01_08,
                           int iarg01_09,
                           int iarg01_10,
                           int iarg01_11,
                           int iarg01_12,
                           int iarg01_13,
                           int iarg01_14,
                           int iarg01_15,
                           int iarg01_16,
                           int iarg01_17,
                           int iarg01_18,
                           int iarg01_19,
                           int iarg01_20,
                           int iarg01_21,
                           int iarg01_22,
                           int iarg01_23,
                           int iarg01_24,
                           int iarg01_25,
                           int iarg01_26,
                           int iarg01_27,
                           int iarg01_28,
                           int iarg01_29,
                           int iarg01_30,
                           int iarg01_31)
{
  iarg01_01 -= (iarg01_31 + iarg01_01) - (iarg01_30 + iarg01_02) +
               (iarg01_29 + iarg01_03) - (iarg01_28 + iarg01_04) +
               (iarg01_27 + iarg01_05) - (iarg01_26 + iarg01_06) +
               (iarg01_25 + iarg01_07) - (iarg01_24 + iarg01_08) +
               (iarg01_23 + iarg01_09) - (iarg01_22 + iarg01_10) +
               (iarg01_21 + iarg01_11) - (iarg01_20 + iarg01_12) +
               (iarg01_19 + iarg01_13) - (iarg01_18 + iarg01_14) +
               (iarg01_17 + iarg01_15) - (iarg01_16 + iarg01_16);

  return iarg01_01;
}







const unsigned char func02()
{
  return 'A';
}







float func03(void)
{
  return 1.234567f;
}




int main()
{



  int int_wk1;
  char chr_wk1;
  float flt_wk1;







  header("","function definion test proc no.1.");



{
  int_wk1 = func01(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,
                   18,19,20,21,22,23,24,25,26,27,28,29,30,31);
  ichck("EFF01_01",1,int_wk1,
        "volatile & int type function definitiont test");
}



{
  chr_wk1 = func02();
  cchck("EFF01_02",'A',chr_wk1,
        "const & char type function definition test");
}



{
  flt_wk1 = func03();
  fchck("EFF01_03",1.234567f,flt_wk1,0.000000,
        "float type function definition test");
}




  header("","function definition test proc no.1.");
}
