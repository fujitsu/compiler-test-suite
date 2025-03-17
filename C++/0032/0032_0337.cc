





#include <stdio.h>
int i10=10;
int i20=20;
int main()
{
        int  i=i10;
  const int  ic=i20; 
  const int &ric=i;
	int &ri=i;
  void      *vp;

  ri = (int&)ric;
  ri += 5;
  if (ri == 15 && i == 15 && (const int*)&ri == (const int*)&ric)
    ; 
  else
    printf("ng %d %d\n", ri,i);

  ri = (int&)ic;
  vp = (void*)&(int&)ic;
  ri += 5;
 
  if (ri == 25 && ic == 20 && &ic == (const int*)vp)
    ; 
  else {
    printf("ng %d %d\n", ri, ic);
    printf("ri=%x &ic=%x \n", &ic, (const int*)vp);
  }

  printf("ok\n");
}
