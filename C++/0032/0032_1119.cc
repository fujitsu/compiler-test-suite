
#include <stdio.h>
	template <class T> class X {
		void* x;
	public:
		X(void* arg) {
			x = arg;
		}

		operator char*(void)	{
			return (char*)x;
		}

	};
int main(){printf("ok\n");}


