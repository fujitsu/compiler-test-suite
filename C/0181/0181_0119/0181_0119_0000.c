
#include <math.h>
#include <stdio.h>

double func(double v00, double v01, double v02, double v03, double v04,
	    double v05, double v06, double v07){
    return (v00 * v01) + (v02 * v03) + (v04 * v05) + (v06 * v07);
}

int main(){
    double result = func(1, 2, 3, 4, 1.0 / 1, 1.0 / 2, 1.0 / 3, 1.0 / 4);
    const double expected = 2 + 12 + 0.5 + 1.0 / 12;
    if (fabs(result - expected) / expected < 1e-10){ printf("OK\n"); }
    else { printf("NG\n"); }
    return 0;
}

