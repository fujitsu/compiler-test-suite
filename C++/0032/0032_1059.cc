#include <stdio.h>

class base {
public:
	typedef int integer;
	class nested_class {
	public:
		static int ctor;
		struct nested_nested_class {
			static int ctor;
			integer i;
			nested_nested_class(int ii = 'n') : i(ii) { ++ctor; }
		};
		integer i;
		nested_class(int ii) : i(ii) { ++ctor; }
	};
	static int ctor;
	integer i;
	base(int ii) : i(ii) { ++ctor; }
};

int base::ctor = 0;
int base::nested_class::ctor = 0;
int base::nested_class::nested_nested_class::ctor = 0;

struct X_1262p14 : public ::base::nested_class {
	X_1262p14(int ii) : ::base::nested_class(ii) { }
};
int main()
{
	base::nested_class::ctor = 0;
	X_1262p14 x(14);

	if( base::nested_class::ctor == 1 ) printf("ok\n");
            else printf("ng base::nested_class::ctor : %d \n",
		            base::nested_class::ctor);
}
