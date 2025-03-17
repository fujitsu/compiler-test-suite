struct B {
	virtual void f() ;
};

struct D: B {
	void f() noexcept(false);
};
#include <stdio.h>
int main(){
  puts("ok");
}
