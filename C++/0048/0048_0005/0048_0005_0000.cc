#include <cstdio>

enum Number{
    Zero = 0,
    One,
    Two,
    Three
};

typedef enum Number Number;

int main(){
    Number a;
    a = Three;
    Number b;
    b = a;
    if (Three == b){ printf("OK\n"); }
    else { printf("NG\n"); }
    return 0;
}

