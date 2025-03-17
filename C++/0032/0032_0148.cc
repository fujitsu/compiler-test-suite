extern "C" void printf(char*,...);
struct Base2 {
	class Base3 {
	public:
		int e;
	};
};

struct D : public ::Base2::Base3 {
	void foo()
	{
	        Base2::Base3::e=10;
	}
}x;
int main(){
  x.foo();
  if (x.e == 10)
   printf ("ok\n");
  else
   printf ("ng\n");
}
