




#include <stdio.h>

double test(double d)
{
  return d;
}

void packed_test(int z)
{
  int jx, jy;
  double ix, iy;
  double rho;

  for(jy=1;jy<=100;jy++)
    for(jx=1;jx<=100;jx++)
      {
        ix = 1.0*jx;
        rho = test((ix-1.0)*(ix) + (iy));
        if(jx == 101){
        }
        ix = 1.0*jx;
        rho = test((ix-1.0)*(ix) + (iy));
      }
}

int main()
{
  packed_test(10);
  printf("test ok\n");
  return 0;
}
