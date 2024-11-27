#include <stdio.h>

int recurs3b(int i, int j);
int recurs3a(int i, int j);
int main()
{
  int iresult;
  iresult=recurs3a(10,0);
  if(iresult==55)
    printf(" OK :  %d \n",iresult);
  else
    printf(" NG :  %d \n",iresult);
}
int recurs3a(int i, int j)
{

  if(--i >= 0)
    return(recurs3b(i, i + ++j));
  else
    return(j);
}
int recurs3b(int i, int j)
{

  if(--i >= 0)
    return(recurs3a(i, i + ++j));
  else
    return(j);
}
