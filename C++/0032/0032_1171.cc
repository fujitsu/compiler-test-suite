#include <stdio.h>

template <class T>
class tomni
	{
public:
        int i;
	int  rfo();
	operator T() { return i; }

	};


template<> int  tomni< int >::rfo() { return 1; }

int main(){
  printf ("ok\n");

}
