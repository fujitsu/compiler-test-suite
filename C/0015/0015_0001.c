#include <stdio.h>
#include <math.h>
int main()
{
  long double l= 0xa.bp5;
  long double l2;

  if (l==342)
    printf("0xa.bp5 OK\n");
  else
    printf("0xa.bp5: %Lg\n",l);


  l2 = 0xa.bp5+0xa.bp5;
  if (l2==684)
    printf("0xa.bp5+0xa.bp5 OK\n");
  else
    printf("0xa.bp5+0xa.bp5: %Lg\n",l2);

}

