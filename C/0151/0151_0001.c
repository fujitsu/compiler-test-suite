















  #include <stdio.h>
  #include "001.h"



int func16(int intarg16);







int func16(int intarg16)
{
  return intarg16 + 2;
}




int main()
{










  header("","constant expression test proc no.1.");



{
  char char0201 = 'b';
  int int0201;

  switch (char0201 == 'b'){
    case (1) : int0201 = 2;
               break;
    default  : int0201 = 5;
               break;
  }
  ichck("CCC01_01",2,int0201,
        "char constant into case statement test");
}



{
  enum day{ sunn,mon,tue,med,thu,fri,sat };

  char arrc02[fri] = { 'a','b','c','d','e' };

  cchck("CCC01_02",'a',arrc02[sunn],
        "enum constant into array statement test");
}



{
  char arrc03['f'-'a'] = { 'a','b','c','d','e' };

  cchck("CCC01_03",'c',arrc03[2],
        "char constant into array statement test");
}



{
  float flt04;
  char arrc04[ 1 << sizeof(flt04) ] = { 'a','b','c','d','e',
                                        'f','g','h','i','j',
                                        'k','l','m','n','o',
                                        'p' };

  cchck("CCC01_04",'p',arrc04[15],
        "sizeof(float) statement into array statement test");
}



{
  int int0501 = 1;
  int int0502 = 3;
  char char0501;

  float flt04;
  char arrc05[2][2] = { {'a','b'},
                        {'c','d'} };
  char0501 = arrc05[(int0501 == 1) && (int0502 == 3)]
                   [(int0501 != 1) || (int0502 != 3)];
  
  cchck("CCC01_05",'c',char0501,
        "logical expression into array statement test");
}



{
  short int sint06 = 2;
  char arrc06[ sizeof(sint06 + 3) ] = { 'a','b' };

  cchck("CCC01_06",'b',arrc06[1],
        "sizeof(int) statement into array statement test");
}



{
  short int sint07 = 2;
  char arrc07[ sizeof(sint07++) ] = { 'a','b' };

  cchck("CCC01_07",'b',arrc07[1],
        "sizeof(++) statement into array statement test");
}



{
  enum etag08{ A,B,C,D,E,F,G,H };
  short int sint08 = 0;
  struct stag08 {
           unsigned bit1 : C;
           unsigned bit2 : F;
           unsigned      : A;
           unsigned bit3 : G;
  }ccc08 = { 1, 11, 20};

  sint08 = ccc08.bit3;

  sichck("CCC01_08",20,sint08,"bit field into struct member test");
}



{
  enum etag0901{ A,B,C,D,E,F,G,H };
  enum etag0902{ jan, feb, mar, apl, may = C, jun,
                 jul, aug = H, sep, oct, nov, dec };
  int int0901 = oct;

  ichck("CCC01_09",9,int0901,"enum const into enum const test");
}



{
  int *intp1001 = NULL;
  int  int1002;

  if(intp1001 == 0)
    int1002 = 1;
  else
    int1002 = 0;

  ichck("CCC01_10",1,int1002,"null pointer constant test");
}



{
  int  int1101 = 5;
  int *intp1101 = &int1101;

  ichck("CCC01_11",5,*intp1101,"int pointer constant test");
}



{
  double dbl1201 = 1.25;
  double dbl1202 = dbl1201 * 0.1;

  dchck("CCC01_12",0.125,dbl1202,0.000,"double constant test");
}



{
  char char1301 = 'A';
  short int sint1302 = 0xff;
  short int sint1303 = (short int)char1301 & sint1302;
  char1301 = (char)sint1303 ;

  cchck("CCC01_13",'A',char1301,"casting char operand test");
}



{
  float flt1401 = 1.23f;
  int int1402 = 2;
  int int1403 = ((++int1402 + sizeof(++flt1401)));

  ichck("CCC01_14",7,int1403,"(++)sizeof(float) constant test");
}



{
  float flt1501 = 1.23f;
  int int1502 = 2;
  int int1503 = ((--int1502 + sizeof(flt1501--)));

  ichck("CCC01_15",5,int1503,"(--)sizeof(float) constant test");
}



{
  float flt1601 = 1.23f;
  int int1602 = 2;
  int int1603 = (--int1602 + func16(int1602) + sizeof(flt1601));

  ichck("CCC01_16",8,int1603,"(function)sizeof(float) constant test");
}




  header("","constant expression test proc no.1.") ;
}
