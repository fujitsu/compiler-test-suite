
#include <stdio.h>

int func(int a, int b, int c, int d){
    return a * b * c;
}

int main(){
    int result = func(1, 2, 3, 4);
    if (6 == result){ printf("OK\n"); }
    else { printf("NG\n"); }
    return 0;
}

