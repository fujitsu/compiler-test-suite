
#include <stdio.h>

int func(int v00, int v01, int v02, int v03, int v04,
         int v05, int v06, int v07){
    return (v00 || v01) + (v02 || v03) + (v04 || v05) + (v06 || v07);
}

int main(){
    int result = func(1, 2, 3, 4, 5, 6, 7, 8);
    if (result == ((1 || 2) + (3 || 4) + (5 || 6) + (7 || 8))){ printf("OK\n"); }
    else { printf("NG\n"); }
    return 0;
}

