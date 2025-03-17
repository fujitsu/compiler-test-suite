extern "C" void printf(char*,...);
int ii=0;
struct A {
	struct n { int j; n(){printf("ng\n");}};
        typedef int  yy;
	};
struct B : public A {
int f() {
    struct n {n(){ii=1;}};
    struct n x;
    typedef char yy;
    yy xx;
    if (sizeof(xx) == ii) printf("ok\n");
    else printf("ng\n");
    return 0;
}
};

int main() {
    B obj;
    obj.f();
  return 0;
	}
