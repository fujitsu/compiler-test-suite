#include <stdio.h>
#include <math.h>

struct {
    int N;
} SPACES ;
#define  n      SPACES.N

struct {
    int E[96];
    int F[96];
} ISPACE ;
#define e    ISPACE.E
#define f    ISPACE.F

struct {
    double P[512][512];
    double H[512][512];
} SPACE2 ;
#define  p       SPACE2.P
#define  h       SPACE2.H

extern double x[512];

void KERNEL()
{

    int ip ;
    int i2 , j2;

        for ( ip=0 ; ip<n ; ip++ ) {
            i2 = p[ip][0];
            j2 = p[ip][1];
            i2 = ( i2 & 64-1 ) - 1 ;
            j2 = ( j2 & 64-1 ) - 1 ;
            i2 += e[i2+32];
            j2 += f[j2+32];
            h[j2][i2] += 1.0;
        }
}

int main(void) {
  KERNEL();
  return 0;
}
