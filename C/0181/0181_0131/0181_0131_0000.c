
#include <stdio.h>

int func(int a, int b, int c, int d){
    return a + b + c + d;
}

int main(){
    int result = func(5, 4, 3, 2);
    if (5 + 4 + 3 + 2 == result){ printf("OK\n"); }
    else { printf("NG\n"); }
    return 0;
}

