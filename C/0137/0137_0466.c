#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int gen_int(int k);
int recurs4a(int i, int j);
int recurs4b(int i, int j);
int main()
{
  int iresult;
  iresult=recurs4a(10,0);
  if(iresult==55)
    printf("SNITR04 OK :  %d \n",iresult);
  else
    printf("SNITR04 NG :  %d \n",iresult);
exit (0);
}
int recurs4a(int i, int j)
{
  printf("RECURS4A :  %d %d \n",i,j);
  j+=gen_int(0);
  if(--i >= 0)
    return(recurs4b(i, i + ++j));
  else
    return(j);
}
int recurs4b(int i, int j)
{
  printf("RECURS4B :  %d %d \n",i,j);
  j+=gen_int(0);
  if(--i >= 0)
    return(recurs4a(i, i + ++j));
  else
    return(j);
}
int gen_int(int k)
{
  return(k);
}
