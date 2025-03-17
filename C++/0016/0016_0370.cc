
#include <iostream> 
using namespace std;

typedef	int	WORD;
void f();

#include <stdio.h>
int main() {
	f();
        puts("ok");
	return 0;
}

void f() {
	union U_TAG {
		int a1;
		int a2;
	}u1;

	struct A_TAG {
		int a;
	}ap;
	typedef A_TAG *aap;

	class myclass {
		int	i;
	public:
		void	setbuf() {
			int	a;
			a = 10;
		}

		void put_i(aap sp,WORD s,myclass *aa,struct A_TAG n,union U_TAG *c) {
		}
		int get_i() {
			return i;
		}
	} ob ;
	
	
	
}

