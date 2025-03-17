


#include <stdio.h>
int main()
{
  const long long int i = 1;

  (double&)i = 2;
  if (*(double*)&i == 2)
     printf("ok\n");
  else
    printf("ng %d \n", (double&)i);
}
