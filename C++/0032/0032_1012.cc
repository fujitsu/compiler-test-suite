int ieq(int i, int j) { return i == j; }

#include <stdio.h>
int main()
{
	class X716p52 {
	public:
		class Y716p52;
		class Y716p52 { public: int i; };
		class Y716p52 y;
	        void foo()
		{
		  
		  
		  
		  
		  
		  
#if defined (__cplusplus) && __cplusplus >= 201103L
		       const class Y716p52 y = this->y;
#else
		  auto const class Y716p52 y = this->y;
#endif 
		  
		  
		  ieq(y.i, 52);
		};
	};
	X716p52 x = { { 52 } };
	x.foo();

        puts("ok");
}
