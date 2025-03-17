#include <stdio.h>
inline void* operator new(size_t, void* p) { printf("ng\n");return p;}
void f(){
 int *i;
   :: operator new (1);
}


int main(){
 f();
 printf("ok\n");
}
