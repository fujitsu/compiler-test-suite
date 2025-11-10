
#include <math.h>
#include <stdio.h>

double func(double v00, double v01, double v02, double v03){
    return v00 * v01 * v02 * v03;
}

int main(){
    double result = func(1, 2, 3, 4);
    const double expected = 24;
    if (fabs(result - expected) / expected < 1e-10){ printf("OK\n"); }
    else { printf("NG\n"); }
    return 0;
}

