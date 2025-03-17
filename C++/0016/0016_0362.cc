 
class ADDR {
	public:
		int a;
};
int var1;
#include <stdio.h>
int main() {
	int & var2=var1;

	var1=100;
	var2=200;

        puts("ok");
}
