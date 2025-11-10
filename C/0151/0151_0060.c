
  #include <stdio.h>
  #include "001.h"

  int int_wk1;

void func1(int *intp)
{
  *intp += 5;
  return ;
}

int main()
{

  char char_wk1;


  header("","expression and nothing statement test proc.") ;


{
  int_wk1 = 1;
  switch (int_wk1){
    case 0  : int_wk1 += 1;
    case 1  : int_wk1 += 2;
              goto loopout;
    case 2  : int_wk1 += 3;
    default : int_wk1 += 10;
              break;
  }
loopout : int_wk1 += 5;

  ichck("SEE01_01",8,int_wk1,"statement into labeled statement test");
}

{
  char_wk1 = 0x7f;

  if (char_wk1 == 0x7f);
  else 
    char_wk1 -= 0x7f;

  cchck("SEE01_02",0x7f,char_wk1,
        "nothing into iteration statement test");
}

{
  char *sptr;

  int_wk1 = 0;
  sptr = "testc";
  while(*sptr++ != '\0')
    int_wk1++;

  ichck("SEE01_03",5,int_wk1,
        "expression into iteration statement test");
}

{
  int_wk1 = 5;

  func1(&int_wk1);
  ichck("SEE01_04",10,int_wk1,"nothing into jump statement test");
}

  header("","expression and nothing statement test proc.") ;
}
