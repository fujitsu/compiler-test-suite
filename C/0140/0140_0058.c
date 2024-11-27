#include <stdio.h>

int main()
{
  int *p;
  int a;
  int s[200], i;

  p = &a;

  *p = 0;

  for (i=0; i<200; i++) {
    s[i] = 1;
  }

  
  for (i=0; i<50; i++) {
    a = *p + s[i];
  }

  
  for (i=50; i<100; i++) {
    *p = a + s[i];
  }

  
  for (i=100; i<150; i++) {
    a = a + s[i];
  }

  
  for (i=150; i<200; i++) {
    *p = *p + s[i];
  }

  if (a == 200)
    printf("a = %d --- ok\n", a);
  else
    printf("a = %d --- ng (answer = 200)\n",a);
}
