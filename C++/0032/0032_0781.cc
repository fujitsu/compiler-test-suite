#include <stdio.h>
class A {
        int a;
public:
        operator int();
};

inline A::operator int()
{
        return a;
}

int main(){ 
 A aobj;
 int x;
 x = int(aobj);
printf("ok\n");}
