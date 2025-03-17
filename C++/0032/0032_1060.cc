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

struct X_1262p17a : public base {
	base::nested_class::nested_nested_class n;
	X_1262p17a(int ii) : base(ii), n() { }
};
int main()
{
        int count = 0;
	base::ctor = 0;
	base::nested_class::nested_nested_class::ctor = 0;
	X_1262p17a x(17);
	if( x.base::i == 17 ) count++;
	if( base::ctor == 1 ) count++;
	if( x.n.i == 'n' ) count++;
	if( base::nested_class::nested_nested_class::ctor == 1 ) 
            count++;
        else
            printf("ng base::nested_class::nested_nested_class::ctor : %d \n",
                       base::nested_class::nested_nested_class::ctor);

        if( count == 4 ) printf("ok\n");
        else printf("ng\n");
}
