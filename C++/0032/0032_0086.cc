


#include <stdio.h>
int main()
{
  int i = 1;
  long long int lli = 1;

  (char&)i = 2;
  if (*(char*)&i == 2)
    ; 
  else
    printf("ng %d \n", (char&)i);

  (short&)i = 3;
  if (*(short*)&i == 3)
    ; 
  else
    printf("ng %d \n", (short&)i);

  (float&)i = (float)2.1;
  if (*(float*)(void*)&i == (float)2.1)
    ; 
  else
    printf("ng %f \n", (float&)i);

  (double&)lli = 22.11;
  if (*(double*)(void*)&lli == 22.11)
    ; 
  else
    printf("ng %f \n", (double&)lli);

  printf("ok\n");
}
