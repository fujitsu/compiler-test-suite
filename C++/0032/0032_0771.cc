#include <stdio.h>

	template <class T> class X {
		void* x;
	public:
		X(void* arg) {
			x = arg;
		}

		T* operator ->(void)    {
			return (T*)x;
		}
	};
int main(){ printf("ok\n");}


