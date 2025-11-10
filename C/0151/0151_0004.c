















  #include <stdio.h>
  #include "001.h"



  short int func02(short int *************,
                   short int *             );
  int func0401(int (*)(), int, int);
  int func0402(int, int);
  int func0501(int (*)(), int **, int **);
  int func0502(int *, int *);







short int func02(id0201,id0202)
  short int *************id0201;
  short int *id0202;
{
  short int ret02;

  ret02 = *************id0201 + *id0202;

  return ret02;
}







int func0402(int arg0403, int arg0404)
{
  int intf2;

  intf2 = (arg0403 + arg0404) * 2;
  return intf2;
}







int func0401(int fptr1(), int arg0401, int arg0402)
{
  int intf1;

  intf1 = (*fptr1)(arg0401, arg0402) + 5;
  return intf1;
}







int func0502(int *arg0503,
             int *arg0504)
{
  int intf52;
  int xarg0503;
  int xarg0504;

  xarg0503 = *arg0503;
  xarg0504 = *arg0504;

  intf52 = (xarg0503 + xarg0504) * 2;
  return intf52;
}







int func0501( int (fptr51)(),
              int **arg0501,
              int **arg0502   )
{
  int intf51;
  int *xarg0501;
  int *xarg0502;

  xarg0501 = *arg0501;
  xarg0502 = *arg0502;

  intf51 = (*fptr51)(xarg0501, xarg0502) + 5;
  return intf51;
}




int main()
{




  header("","pointer declarator test proc no.1.") ;



{
  short int ************sintp0101;
  short int ***********sintp0102;
  short int **********sintp0103;
  short int *********sintp0104;
  short int ********sintp0105;
  short int *******sintp0106;
  short int ******sintp0107;
  short int *****sintp0108;
  short int ****sintp0109;
  short int ***sintp0110;
  short int **sintp0111;
  short int *sintp0112;
  short int sintp0113 = 5;
  short int sintp0114;

  sintp0101 = &sintp0102;
  sintp0102 = &sintp0103;
  sintp0103 = &sintp0104;
  sintp0104 = &sintp0105;
  sintp0105 = &sintp0106;
  sintp0106 = &sintp0107;
  sintp0107 = &sintp0108;
  sintp0108 = &sintp0109;
  sintp0109 = &sintp0110;
  sintp0110 = &sintp0111;
  sintp0111 = &sintp0112;
  sintp0112 = &sintp0113;
  sintp0114 = ************sintp0101;

  sichck("DDP01_01",5,sintp0114,"only ident pointer test");
}



{
  short int *************sintp0200;
  short int ************sintp0201;
  short int ***********sintp0202;
  short int **********sintp0203;
  short int *********sintp0204;
  short int ********sintp0205;
  short int *******sintp0206;
  short int ******sintp0207;
  short int *****sintp0208;
  short int ****sintp0209;
  short int ***sintp0210;
  short int **sintp0211;
  short int *sintp0212;
  short int sintp0213 = 5;
  short int *sintp0214;
  short int sintp0215 = 10;

  sintp0200 = &sintp0201;
  sintp0201 = &sintp0202;
  sintp0202 = &sintp0203;
  sintp0203 = &sintp0204;
  sintp0204 = &sintp0205;
  sintp0205 = &sintp0206;
  sintp0206 = &sintp0207;
  sintp0207 = &sintp0208;
  sintp0208 = &sintp0209;
  sintp0209 = &sintp0210;
  sintp0210 = &sintp0211;
  sintp0211 = &sintp0212;
  sintp0212 = &sintp0213;
  sintp0214 = &sintp0215;

  sintp0215 = func02(sintp0200,sintp0214);

  sichck("DDP01_02",15,sintp0215,"function(pointer of ident) test");
}



{
  static int int0300 = 0;
  static int int0301 = 1;
  static int int0302 = 2;
  static int int0303 = 3;
  static int int0304 = 4;
  static int int0305 = 5;
  static int int0306 = 6;
  static int int0307 = 7;
  static int int0308 = 8;
  static int int0309 = 9;
  static int int0310 = 10;
  static int int0311 = 11;
  static int int0312 = 12;
  static int int0313;
  static int *arrint[] = { &int0300, &int0301, &int0302, &int0303,
                           &int0304, &int0305, &int0306, &int0307,
                           &int0308, &int0309, &int0310, &int0311,
                           &int0312 };
  int0313 = *arrint[10];
  ichck("DDP01_03",10,int0313,
        "pointer array : nothing constant expression test");
}



{
  int (*fptr4)();
  int int0401,int0402,int0403;

  int0402 = 1;
  int0403 = 2;

  fptr4= func0402;
  int0401 = func0401(fptr4, int0402, int0403);

  ichck("DDP01_04",11,int0401,"pointer to function test");
}



{
  int (*fptr5)();
  static int int0501 = 10;
  static int int0502 = 20;
  static int *int0503;
  static int *int0504;
  static int **volatile int0505;
  static int **volatile int0506;

  int0503 = (int *)&int0501;
  int0504 = (int *)&int0502;
  int0505 = (int **)&int0503;
  int0506 = (int **)&int0504;

  fptr5 = func0502;
  int0501 = func0501(fptr5, int0505, int0506);

  ichck("DDP01_05",65,int0501,"argument : volatile pointer test");
}




  header("","pointer declarator test proc no.1.") ;
}
