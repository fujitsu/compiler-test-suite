
  #include <stdio.h>
  #include "001.h"

int main()
{

  header("","labeled statement test proc no.2.") ;

{
  char cha02 = 'b';
  char *chap;

  chap = "testc";
  switch(cha02){
    case 'a' : cha02 = 'x';
               break;
    case 'b' : do{
                 chap++;
               }while(*chap == '\0');
               cha02 = 'a';
               break;
    case 'c' : cha02 = 'y';
               break;
    case 'd' : cha02 = 'z';
               break;
    default  : cha02 = 't';
               break;
  }
  cchck("SLL01_02",'a',cha02,"case statement : do statement test");
}

{
  char cha02 = 'f';
  char *chap;

  chap = "testc";
  switch(cha02){
    case 'a' : cha02 = 'x';
               break;
    case 'b' : do{
                 chap++;
               }while(*chap == '\0');
               cha02 = 'a';
               break;
    case 'c' : cha02 = 'y';
               break;
    case 'd' : cha02 = 'z';
               break;
    default  : goto loopout;
               break;
  }
  cha02 = 'a';
loopout : ;
  cchck("SLL01_03",'f',cha02,
        "default statement : goto statement test");
}

{
  long int lint04 = 65535;
  char *chap;

  chap = "testc";
  switch(lint04){
    case 1          : lint04 -= 1;
                      break;
    case 255        : do{
                        chap++;
                      }while(*chap != '\0');
                      lint04 -= 254;
                      break;
    case 32767      : lint04 -= 32765;
                      break;
    case 2147483647 : lint04 -= 2147483644;
                      break;
    default         : while (*chap++ != '\0')
                        lint04 ++;
                      lint04 -= 65535;
                      break;
  }
  lichck("SLL01_04",5L,lint04,
         "default statement : while statement test");
}

{
  int int0501 = 0;
  int int0502 = 0;
  int int0503 = 0;

  if (!int0501)
    goto jump1;
  else 
    goto jump2;
  for(int0501 = 0; int0501 < 3; int0501++){
jump1 :
    for(int0502 = int0501; int0502 < 3; int0502++);
    goto loopend;
jump2 :
    for(int0503 = 0; int0503 < 3; int0503++);
    goto loopend;
  }
loopend : ;
  ichck("SLL01_05",3,int0502,
         "goto labeled statement : for statement test");
}

  header("","labeled statement test proc no.2.") ;
}
