


#include <array>
#include <cassert>

#include <stdio.h>

int main() {
    {
        typedef std::array<int,3> C;
        C c = {1, 2, 3};
	try{
	  C::reference r1 = c.at(4);
	} catch(...){
	  printf("ok\n");
	}
    }
}

