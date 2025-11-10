
#include <math.h>
#include <stdio.h>

double func(double v00, double v01, double v02, double v03, double v04,
         double v05, double v06, double v07, double v08, double v09,
         double v10, double v11, double v12, double v13, double v14,
         double v15, double v16, double v17, double v18, double v19,
         double v20, double v21, double v22, double v23, double v24,
         double v25, double v26, double v27, double v28, double v29,
         double v30, double v31, double v32, double v33, double v34,
         double v35, double v36, double v37, double v38, double v39){
    return v00 * v01 * v02 * v03 * v04 *
           v05 * v06 * v07 * v08 * v09 *
           v10 * v11 * v12 * v13 * v14 *
           v15 * v16 * v17 * v18 * v19 *
           v20 * v21 * v22 * v23 * v24 *
           v25 * v26 * v27 * v28 * v29 *
           v30 * v31 * v32 * v33 * v34 *
           v35 * v36 * v37 * v38 * v39;
}

int main(){
    double result = func(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16,
                         1.0 / 1, 1.0 / 2, 1.0 / 3, 1.0 / 4, 1.0 / 5, 1.0 / 6,
                         1.0 / 7, 1.0 / 8, 1.0 / 9, 1.0 / 10, 1.0 / 11,
                         1.0 / 12, 1.0 / 13, 1.0 / 14, 1.0 / 15, 1.0 / 16,
                         17, 18, 19, 20,
                         1.0 / 17, 1.0 / 18, 1.0 / 19, 1.0 / 20);
    const double expected = 1;
    if (fabs(result - expected) / expected < 1e-10){ printf("OK\n"); }
    else { printf("NG\n"); }
    return 0;
}

