int ieq(int i, int j) { return i == j; }

#include <stdio.h>
int main()
{
	class X716p51 {
	public:
		class Y716p51 { public: int i; };
		Y716p51 y;
		void foo()
		{
		  
		  
		  
		  
		  
		  
#if defined (__cplusplus) && __cplusplus >= 201103L
		       const class Y716p51 y = this->y;
#else
		  auto const class Y716p51 y = this->y;
#endif 
		  			
		  ieq(y.i, 51);
		};
	};
	X716p51 x = { { 51 } };
	x.foo();

        puts("ok");
}
