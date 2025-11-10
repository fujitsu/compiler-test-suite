
#include <math.h>
#include <stdio.h>

double func(double d0, double d1, double d2, double d3,
	    double d4, double d5, double d6, double d7,
	    double d8, double d9, double dA, double dB){
  return d0 * d1 * d2 * d3 * (d4 * d5 * d6 * d7) * d8 * d9 * dA * dB;
}

int main(){
    double result = func(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12);
    const double expected = 479001600.0;
    if (fabs(result - expected) / expected < 1e-10){ printf("OK\n"); }
    else { printf("NG\n"); }
    return 0;
}

