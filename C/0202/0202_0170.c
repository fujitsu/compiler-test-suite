#include <stdio.h>

void sub1() {

#if defined (__STDC_VERSION__) && __STDC_VERSION__ >= 199901L
#else
    int i;
#endif


  {
    int j = 1;
  }

  {
    {
      int j = 1;
    }
  }

#if defined (__STDC_VERSION__) && __STDC_VERSION__ >= 199901L 
  for (int i=0; i<2; i++) {
#else
  for ( i=0; i<2; i++) {
#endif
    int j = 1;
  }

  {
#if defined (__STDC_VERSION__) && __STDC_VERSION__ >= 199901L 
    for (int i=0; i<2; i++) {
#else
    for ( i=0; i<2; i++) {
#endif
      int j = i;
    }
  }

  {
#if defined (__STDC_VERSION__) && __STDC_VERSION__ >= 199901L 
    for (int i=0; i<2; i++) {
#else
    for ( i=0; i<2; i++) {
#endif
      int j = 1;
    }
  }
}
int main()
{
  printf(" OK \n");
}
