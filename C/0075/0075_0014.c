#include <stdio.h>
struct tagx {
  double       real8 ;
} namex[10] ;
int main()
{
  struct tagx *ptr[10] ;
  short int    i,j ;

  for(i=0;i<10;i++)
  {
    ptr[i] = &namex[i] ;
    ptr[i]->real8 = 0.0 ;
    for(j=0;j<10;j++)
    {
      ptr[i]->real8 = ptr[i]->real8 + 3.0 ;
    }
    printf("%10.3f\n",ptr[i]->real8) ;
  }
}
