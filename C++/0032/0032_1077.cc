
template <class T> void f(T) {}
template <class T> struct S {
	static int m;
};
template <class T> int S<T>::m;


#include <stdio.h>
int main(void)
{
	f(1);

	S<int> s;

	(void) sizeof(S<int>::m);


        puts("ok");
}
