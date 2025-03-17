

#include <stdio.h>
int main()
{
  int i;
  int ary1[10], ary2[10];
  int a=0,b;

  i=0;
  goto check_1;
 L_1:
  ary1[i]=i;
  ary2[i]=i*ary1[i];
  i++;
 check_1:
  if (i<10) goto L_1;

  b=ary1[9];
  i=0;
  goto check_2;
 L_2:
  a = a + b + ary1[i];
 L_3:
  a = a + ary1[i] + ary2[i];
  i++;
 check_2:
  if (i<10) goto L_2;

  fprintf(stdout, "%d\n",a);
}
