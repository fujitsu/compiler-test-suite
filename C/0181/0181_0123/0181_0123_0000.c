
#include <stdio.h>

int func(int a, int b, int c, int d){
    return a * b * c * d;
}

int main(){
    int result = func(1, 2, 3, 4);
    if (24 == result){ printf("OK\n"); }
    else { printf("NG\n"); }
    return 0;
}

