#include <cstdio>

union UnionA {
    int a;
    char b;
    double c;

};

typedef union UnionA UnionA;

int main(){
    UnionA a;
    a.c = 5360;
    UnionA b;
    b = a;
    if (5360 == b.c){ printf("OK\n"); }
    else { printf("NG\n"); }
    return 0;
}

