#include <cstdio>

class ClassA {
    public:
        int a;
        char b;
        double c;
        int d;

    public:

        ClassA& operator =(const ClassA& src){
            a = src.a;
            b = src.b;
            c = src.c;
            d = src.d;
            return * this;
        }

};

int main(){
    ClassA a;
    a.a = 2;
    a.b = 3;
    a.c = 4;
    a.d = 5;
    ClassA b;
    b = a;
    ClassA c(a);
    if ((2 == b.a) && (3 == b.b) && (4 == b.c) && (5 == b.d)
        && (2 == c.a) && (3 == c.b) && (4 == c.c) && (5 == c.d)){ printf("OK\n"); }
    else { printf("NG\n"); }
    return 0;
}

