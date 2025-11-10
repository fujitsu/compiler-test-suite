
#include <math.h>
#include <stdio.h>

double func(double* v){
    return v[0] * v[1] * v[2] * v[3];
}

int main(){
    double v[] = { 2, 3, 1.0 / 2, 1.0 / 3 };
    double result = func(v);
    const double expected = 1;
    if (fabs(result - expected) / expected < 1e-10){ printf("OK\n"); }
    else { printf("NG\n"); }
    return 0;
}

