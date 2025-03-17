struct B {
	virtual void f() noexcept(false);
};

struct D: B {
	void f() noexcept(false);
};
#include <stdio.h>
int main(){
  puts("ok");
}
