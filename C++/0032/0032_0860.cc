#include <stdio.h>
template <class T>
class NN {
};

template <class T>
class LL {
public:
	NN< T >* f() {
		return (NN< T >*)0;  
	}
};

template <class T>
class REF {
};

class T1 {
};
int main()
{
	REF< LL<T1> > p ;
  printf("ok\n");
}
