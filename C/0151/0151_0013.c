















  #include <stdio.h>
  #include "001.h"




  struct strtag1{
           char      strchar01;
           char      strchar02;
           short int strsint01;
           int       strint01;
  }ee0101 = { 0x01, 0x02, 0x03, 0x04 };


  union unitag1{
          char      unichar[2];
          short int unisint1;
          short int unisint2;
          int       uniint1;
  }ee0201;


  extern int int0301 = 5;


  extern char char0401;


  static float flt0501 = 1.23f;


  static char array[3];


  struct strtag1 ee0101;
  extern struct strtag1 ee0101;


  union unitag1 ee0201;
  extern union unitag1 ee0201;


  int int0301;
  extern int int0301;


  char char0401;
  extern char char0401;



  extern float flt0501;



  extern char array[3];








int main()
{




  header("","external object test proc no.1.") ;



{
  ichck("EEE01_01", 0x04, ee0101.strint01,
        "nothing strage class, dammy definition test");
}



{
  ichck("EEE01_02", 0x00, ee0201.uniint1,
        "nothing strage class, definition test");
}



{
  ichck("EEE01_03", 5, int0301,
        "strage class extern, definition test");
}



{
  cchck("EEE01_04", 0x00, char0401,
        "strage class extern, dammy definition test");
}



{
  fchck("EEE01_05", 1.23f, flt0501, 0.00f,
        "strage class static, definition test");
}



{
  cchck("EEE01_06", 0, array[1],
        "strage class static, dummy definition test");
}




  header("","external object test proc no.1.") ;
}
