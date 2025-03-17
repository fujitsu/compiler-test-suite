#include <stdlib.h>
#include <stdio.h>

int id_array[10];
int n;

class OZRef {
	int id;
public:
	OZRef() {
		id = rand();
		id_array[n++] = id;

	}
	OZRef(const OZRef& p) {
		id = rand();
		id_array[n++] = id;

	}
	~OZRef() {
	        if (id_array[--n] != id) {
		  printf("ng\n");
		  exit(0);
		}
		if (n == 0)
		  printf("ok\n");
		  

	}
	OZRef operator=(const OZRef& p)
	{ 

		return *this;  
	}
};

int main()
{
  OZRef	p1;
  OZRef	p2;
  
  p2 = p1;
}
	
