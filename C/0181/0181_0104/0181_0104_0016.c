
#include <stdio.h>
  static int inta, intb, intc,
      *ptrinta = &inta, *ptrintb = &intb, *ptrintc = &intc;

  int lto_sub_18()
  {

    inta = intb = intc = 1;
    if ( *ptrinta == *ptrintb && *ptrintb == *ptrintc )
      {
	inta += inta;
	intb *= intb*4;
	intc %= intc;
      }
    printf("*ptrintb-(*ptrinta+*ptrintc)==> %d\n",
	   *ptrintb-(*ptrinta+*ptrintc));
  }
