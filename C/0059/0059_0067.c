#include <stdio.h>
int main() {
  int  *(fnc)();
  int  (*fnc2)();
  void * vp;

  if (sizeof(void)==1) printf("ok01\n");
  else                 printf("ng01\n");

  if (sizeof(void*)==8)printf("ok02\n");
  else                 printf("ng02\n");

  if (sizeof(*vp)==1)  printf("ok03\n");
  else                 printf("ng03\n");

  if (sizeof(vp)==8)   printf("ok04\n");
  else                 printf("ng04\n");
		
  if (sizeof(main)==1) printf("ok05\n");
  else                 printf("ng05\n");

  if (sizeof(fnc)==1)  printf("ok06\n") ;		
  else                 printf("ng06\n");

  if (sizeof(*fnc)==1) printf("ok07\n") ;		
  else                 printf("ng07\n");

  if (sizeof(*fnc2)==1)printf("ok08\n") ;		
  else                 printf("ng08\n");
}		

