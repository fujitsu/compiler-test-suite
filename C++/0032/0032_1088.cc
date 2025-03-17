
#include <stdio.h>
class A {
 public:
 int operator | (int x){ printf("ok\n");return 0;}
 int __o(int y){printf("ng\n");return 0;}
};
int main(){
 A obj;
 int i;
 obj | i;
 return 0;
}
