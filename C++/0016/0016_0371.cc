
#include <iostream> 
using namespace std;

void f_boo();

#include <stdio.h>
int main() {
	f_boo();
        puts("ok");
	return 0;
}

void f_boo() {
	class myclass {
		int	i;
	public:
		void put_i(myclass *aa) {
		}
		int get_i() {
			return i;
		}
	} ob ;
	
	
	
}

