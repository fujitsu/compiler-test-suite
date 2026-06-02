#include <stdio.h>

#include <limits.h>
#define N10 10
#define N20 20
#define D10 (double)1.0
#define D11 (double)1.1
#define F10 (float)1.0
#define F11 (float)1.1
#define MD10 (double)-1.0
#define MD11 (double)-1.1
int main()
{
  float  fary[N10];
  double dary[N10];
  double ddt1, ddt2;
  float  fdt1, fdt2, fdt3;
  int    i;

  for (i=0; i<N10; i++) {
    if (i%2) {
      fary[i] = F11;
      dary[i] = D11;
    }
    else {
      fary[i] = F10;
      dary[i] = D10;
    }
  }

  for (i=0; i<N20; i++) {
    fdt1 = fary[0];
    fdt2 = fary[2];
    fdt3 = (float)dary[2];
    ddt1 = fary[0];
    ddt2 = (double)fary[6];

    if (fdt1 == 1.0)
      printf("OK");
    else
      printf("NG");

    if (fdt1 == D10)
      printf("OK");
    else
      printf("NG");

    if (fdt1 == F10)
      printf("OK");
    else
      printf("NG");

    if (fdt1 == fdt2)
      printf("OK");
    else
      printf("NG");

    if (fdt1 == ddt1)
      printf("OK");
    else
      printf("NG");

    if (fdt1 == (float)ddt1)
      printf("OK");
    else
      printf("NG");

    if (fdt1 == fdt3)
      printf("OK");
    else
      printf("NG");

    if (fdt1 == (double)fdt2)
      printf("OK");
    else
      printf("NG");

    if (fdt1 == ddt2)
      printf("OK");
    else
      printf("NG");

    if (fdt1 == (float)1.0)
      printf("OK");
    else
      printf("NG");

    if (fdt1 == (double)1.0)
      printf("OK");
    else
      printf("NG");
    
    fdt1 = fary[1];
    fdt2 = fary[3];
    fdt3 = (float)dary[5];
    ddt1 = dary[1];
    ddt2 = (double)fary[7];

    if (fdt1 != 1.1)
      printf("OK");
    else
      printf("NG");

    if (fdt1 != D11)
      printf("OK");
    else
      printf("NG");

    if (fdt1 == F11)
      printf("OK");
    else
      printf("NG");

    if (fdt1 == fdt2)
      printf("OK");
    else
      printf("NG");

    if (fdt1 != ddt1)
      printf("OK");
    else
      printf("NG");

    if (fdt1 == (float)ddt1)
      printf("OK");
    else
      printf("NG");

    if (fdt1 == fdt3)
      printf("OK");
    else
      printf("NG");

    if (fdt1 == (double)fdt2)
      printf("OK");
    else
      printf("NG");

    if (fdt1 == ddt2)
      printf("OK");
    else
      printf("NG");

    if (fdt1 == (float)1.1)
      printf("OK");
    else
      printf("NG");

    if (fdt1 != (double)1.1)
      printf("OK");
    else
      printf("NG");
    
    if (1.0 == 1.0)
      printf("OK");
    else
      printf("NG");
    if (1.1 == 1.1)
      printf("OK");
    else
      printf("NG");

    if ((float)1.0 == 1.0)
      printf("OK");
    else
      printf("NG");
    if ((float)1.1 != 1.1)
      printf("OK");
    else
      printf("NG");

    fdt1 = fary[2];
    fdt2 = fary[4];
    fdt3 = (float)fary[6];
    ddt1 = fary[2];
    ddt2 = (double)fary[8];

    if (1.0 == fdt1)
      printf("OK");
    else
      printf("NG");

    if (D10 == fdt1)
      printf("OK");
    else
      printf("NG");

    if (F10 == fdt1)
      printf("OK");
    else
      printf("NG");

    if (ddt1 == fdt1)
      printf("OK");
    else
      printf("NG");

    if ((float)ddt1 == fdt1)
      printf("OK");
    else
      printf("NG");

    if ((double)fdt2 == fdt1)
      printf("OK");
    else
      printf("NG");
    
    if ((float)1.0 == fdt1)
      printf("OK");
    else
      printf("NG");

    if ((float)1.0 == fdt1)
      printf("OK");
    else
      printf("NG");

    if (fdt1 == (float)1.0)
      printf("OK");
    else
      printf("NG");

    if (fdt1 == (float)1.0)
      printf("OK");
    else
      printf("NG");

    fdt1 = -fary[8];
    ddt1 = -dary[8];

    if (fdt1 == -1.0)
      printf("OK");
    else
      printf("NG");

    if (fdt1 == MD10)
      printf("OK");
    else
      printf("NG");

    if (fdt1 == ddt1)
      printf("OK");
    else
      printf("NG");
    
    fdt1 = -fary[9];
    ddt1 = -dary[9];

    if (fdt1 != -1.1)
      printf("OK");
    else
      printf("NG");

    if (fdt1 != MD11)
      printf("OK");
    else
      printf("NG");

    if (fdt1 != ddt1)
      printf("OK");
    else
      printf("NG");

    fdt1 = (float)0.1/(float)INT_MAX;
    if (fdt1 != 0.0)
      printf("OK");
    else
      printf("NG");

    fdt1 = (float)INT_MAX;
    if (fdt1 > 0.0)
      printf("OK");
    else
      printf("NG");

    fdt1 = (float)INT_MIN;
    if (fdt1 < 0.0)
      printf("OK");
    else
      printf("NG");

    fdt1 = (float)0.0;
    if (fdt1 == 0.0)
      printf("OK");
    else
      printf("NG");
    if (fdt1 == (float)0.0)
      printf("OK");
    else
      printf("NG");

    printf("\n");
  }
}
