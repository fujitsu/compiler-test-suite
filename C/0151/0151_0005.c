















  #include <stdio.h>
  #include "001.h"



  short int func06(short int *************);
  int func0701(int (*)(), int, int);
  int func0702(int, int);
  int func08(int *volatile *);







short int func06(id0601)
  short int *************id0601;
{
  short int ret06;

  ret06 = *************id0601;
  return ret06;
}







int func0702(int arg0703, int arg0704)
{
  int intf72;

  intf72 = (arg0703 + arg0704) * 2;
  return intf72;
}







int func0701(int (*fptr1)(), int arg0701, int arg0702)
{
  int intf1;

  intf1 = (*fptr1)(arg0701, arg0702) + 5;
  return intf1;
}







int func08(int *volatile *intarg08)
{
  return **intarg08;
}




int main()
{



  enum season{ spr,sum,aut,win };







  header("","pointer declarator test proc no.2.") ;



{
  short int sintp0613 = sum;
  short int *sintp0612 =
            (short int *)&sintp0613;
  short int **sintp0611 =
            (short int **)&sintp0612;
  short int ***sintp0610 =
            (short int ***)&sintp0611;
  short int ****sintp0609 =
            (short int ****)&sintp0610;
  short int *****sintp0608 =
            (short int *****)&sintp0609;
  short int ******sintp0607 =
            (short int ******)&sintp0608;
  short int *******sintp0606 =
            (short int *******)&sintp0607;
  short int ********sintp0605 =
            (short int ********)&sintp0606;
  short int *********sintp0604 =
            (short int *********)&sintp0605;
  short int **********sintp0603 =
            (short int **********)&sintp0604;
  short int ***********sintp0602 =
            (short int ***********)&sintp0603;
  short int ************sintp0601 =
            (short int ************)&sintp0602;
  short int *************const sintp0600 =
            (short int *************)&sintp0601;
  short int sint0614;

  sint0614 = func06(sintp0600);

  sichck("DDP01_06",1,sint0614,
         "function(const pointer of ident) test");
}



{
  int (*const volatile fptr7[])() = { func0701,func0702 };
  int int0701,int0702,int0703;

  int0702 = 1;
  int0703 = 2;

  int0701 = func0701(fptr7[1], int0702, int0703);

  ichck("DDP01_07",11,int0701,"pointer to function test");
}



{
  int *volatile *int0801;
  int int0802 = 5;
  int *int0803;

  int0803 = &int0802;
  int0801 = &int0803;

  int0802 = func08(int0801);

  ichck("DDP01_08",5,int0802,
        "function(pointer volatile pointer of ident) test");
}



{
  static int i09_0001 = 1;
  static int i09_0101 = 2;
  static int i09_0201 = 3;

  static int *i09_0002 = (int *)&i09_0001;
  static int **i09_0003 = (int **)&i09_0002;
  static int ***i09_0004 = (int ***)&i09_0003;
  static int ****i09_0005 = (int ****)&i09_0004;
  static int *****i09_0006 = (int *****)&i09_0005;
  static int ******i09_0007 = (int ******)&i09_0006;
  static int *******i09_0008 = (int *******)&i09_0007;
  static int ********i09_0009 = (int ********)&i09_0008;
  static int *********i09_0010 = (int *********)&i09_0009;
  static int **********i09_0011 = (int **********)&i09_0010;
  static int ***********i09_0012 = (int ***********)&i09_0011;
  static int ************i09_0013 = (int ************)&i09_0012;

  static int *i09_0102 = (int *)&i09_0101;
  static int **i09_0103 = (int **)&i09_0102;
  static int ***i09_0104 = (int ***)&i09_0103;
  static int ****i09_0105 = (int ****)&i09_0104;
  static int *****i09_0106 = (int *****)&i09_0105;
  static int ******i09_0107 = (int ******)&i09_0106;
  static int *******i09_0108 = (int *******)&i09_0107;
  static int ********i09_0109 = (int ********)&i09_0108;
  static int *********i09_0110 = (int *********)&i09_0109;
  static int **********i09_0111 = (int **********)&i09_0110;
  static int ***********i09_0112 = (int ***********)&i09_0111;
  static int ************i09_0113 = (int ************)&i09_0112;

  static int *i09_0202 = (int *)&i09_0201;
  static int **i09_0203 = (int **)&i09_0202;
  static int ***i09_0204 = (int ***)&i09_0203;
  static int ****i09_0205 = (int ****)&i09_0204;
  static int *****i09_0206 = (int *****)&i09_0205;
  static int ******i09_0207 = (int ******)&i09_0206;
  static int *******i09_0208 = (int *******)&i09_0207;
  static int ********i09_0209 = (int ********)&i09_0208;
  static int *********i09_0210 = (int *********)&i09_0209;
  static int **********i09_0211 = (int **********)&i09_0210;
  static int ***********i09_0212 = (int ***********)&i09_0211;
  static int ************i09_0213 = (int ************)&i09_0212;

  int *const ************arrint09[3] =
                         {&i09_0013, &i09_0113, &i09_0213};

  i09_0001 = *************arrint09[1];

  ichck("DDP01_09",2,i09_0001,"array pointer (const *) test");
}



{
  char char10;
  char c1000 = 'X';
  char *c1001 = (char *)&c1000;
  char **c1002 = (char **)&c1001;
  char ***c1003 = (char ***)&c1002;
  char ****c1004 = (char ****)&c1003;
  char *****c1005 = (char *****)&c1004;
  char ******c1006 = (char ******)&c1005;
  char *******c1007 = (char *******)&c1006;
  char ********c1008 = (char ********)&c1007;
  char *********c1009 = (char *********)&c1008;
  char **********c1010 = (char **********)&c1009;
  char ***********c1011 = (char ***********)&c1010;
  char ************c1012 = (char ************)&c1011;
  char *volatile const *(*(*(*(*(*(*(*(*(*(*(* a)))))))))))
                      = &c1012;
  char10 = **(*(*(*(*(*(*(*(*(*(*(* a)))))))))));

  cchck("DDP01_10",'X',char10,"( declarator ) test");
}




  header("","pointer declarator test proc no.2.") ;
}
