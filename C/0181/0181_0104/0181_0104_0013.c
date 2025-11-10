
#include <stdio.h>
  int lto_sub_15()
  {
    static long double inta, intb, intc,
      *ptrinta = &inta, *ptrintb = &intb, *ptrintc = &intc;

    inta = intb = intc = 1;
    if ( *ptrinta == *ptrintb && *ptrintb == *ptrintc )
      {
	inta += inta;
	intb *= intb*4;
	intc /= intc;
      }
    printf("*ptrintb-(*ptrinta+*ptrintc)==> %d\n",
	   (int )(*ptrintb-(*ptrinta+*ptrintc)));
  }
