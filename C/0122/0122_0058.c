#include <stdlib.h>
#include <stdio.h>
#include <math.h>


int i_set();
int main() 
{
  static int x[10]={0,0,0,0,0,0,0,0,0,0};
  static int y[10]={0,0,0,0,0,0,0,0,0,0};
  int i,w;
  
  printf("********** 032 TEST START **********\n");
  i=i_set(&w);
  w=x[i];
  do {
    y[w]++ ;
    w++;
  }
  while (w<10);

  w=x[i];
  do {
    y[w]++ ;
    w++;
  }
  while (w<10);
  
  if (y[9] == 2)
    printf(" ***   OK  *** \n") ;
  else
    {
      printf(" ***   NG  *** \n") ;
      printf(" Y=%d \n",y[9]) ;
    }
printf("********** 032 TEST  END  **********\n");
exit (0);
}
int i_set(pw)
int *pw;
{
  int i;
  i=((int)pw)%2;
  return i;
}

