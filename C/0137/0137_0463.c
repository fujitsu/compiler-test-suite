#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int recurs1(int i, int j);
int main()
{
  int iresult;
  iresult=recurs1(10,0);
  if(iresult==55)
    printf("SNITR01 OK :  %d \n",iresult);
  else
    printf("SNITR01 NG :  %d \n",iresult);
exit (0);
}
int recurs1(int i, int j)
{
  if(--i >= 0)
    return(recurs1(i, i + ++j));
  else
    return(j);
}
