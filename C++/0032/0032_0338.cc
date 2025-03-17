





#include <stdio.h>
int i10=10;
int i20=20;
int main()
{
           int  i=i10;
  volatile int  iv=i20; 
  volatile int &riv=i;
	   int &ri=i;
  void      *vp;

  ri = (int&)riv;
  ri += 5;
  if (ri == 15 && i == 15 && (volatile int*)&ri == (volatile int*)&riv)
    ; 
  else
    printf("ng %d %d\n", ri,i);

  ri = (int&)iv;
  vp = (void*)&(int&)iv;
  ri += 5;
 
  if (ri == 25 && iv == 20 && &iv == (volatile int*)vp)
    ; 
  else {
    printf("ng %d %d\n", ri, iv);
    printf("ri=%x &iv=%x \n", &iv, (volatile int*)vp);
  }

  printf("ok\n");
}
