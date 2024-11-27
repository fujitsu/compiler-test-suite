#include <stdio.h>
int main()
{
  int func01(int),it01;
  it01 = func01(11);

  printf("%d   OK \n",it01) ;
  return(0);
}

int func01(int it12)
{
  int it10,it11;
  it10 = 1;
  it11 = 0;

  while ((it10 * it10) + 1)
    {
      while (it10 < it12)
	{
	  it11 += it10;
	  it10 ++;
	}
      while (it10 > 10)
	return(it11);
    }
  return(0);
}
 
