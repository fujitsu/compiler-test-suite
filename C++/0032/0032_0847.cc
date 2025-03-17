#include <stdio.h>
template <class T1, class T2>
struct pair {
};

template <class T1, class T2>
inline  int  operator==(const pair<T1, T2>& x, const pair<T1, T2>& y) { 
    return 1;
}

class pair<int,double> i,j;

void f(){
	if (i == j){printf("ok\n");}
}

int main(){
  f(); return 1;
}
