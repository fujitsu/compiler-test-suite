#include <stdio.h>

class rational
{
  public:
  int x;
  rational() {;};
};

class omni
{
  public:
  int i,k;
  
  long la[2];
  rational xy; 
};
int main()
{
  omni oo;
  oo.i = 2;

  omni oo2 = oo;
  if (oo2.i == 2)
    printf("ok\n");
  else
    printf("ng \n");
}
