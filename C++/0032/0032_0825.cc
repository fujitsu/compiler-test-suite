#include <stdio.h>
template <class T>
void ff(T* x) {
printf ("ok\n");
}

template <class T>
class B{
public:
    void ff(T * p) { ::ff(p); }
};


B <int> x;

int main(){
int *p;
 x.ff(p);
}
