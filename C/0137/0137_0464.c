#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int gen_int(int k);
int recurs2(int i, int j);
int main()
{
  int iresult;
  iresult=recurs2(10,0);
  if(iresult==55)
    printf("SNITR02 OK :  %d \n",iresult);
  else
    printf("SNITR02 NG :  %d \n",iresult);
exit (0);
}
int recurs2(int i, int j)
{
  printf("RECURS2 :  %d %d \n",i,j);
  j+=gen_int(0);
  if(--i >= 0)
    return(recurs2(i, i + ++j));
  else
    return(j);
}
int gen_int(int k)
{
  return(k);
}
