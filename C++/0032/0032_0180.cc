

 
 

#include <iostream>
using namespace std;


struct st_48p31
	{
	int j;
	st_48p31(int k) : j(k) {}
	int f_48p31(char i) { cout << "ok\n"; return i*1; }
	int f_48p31(int i) { cout << "ng\n"; return i*2; }
	};
st_48p31 obj_48p31 (1);
typedef int (st_48p31::*PMFC)(char);
	
int pfc_48p31(PMFC f) { return (obj_48p31.*f)(1); }

int main()
	{
	  PMFC ff ;
	  ff = &st_48p31::f_48p31;
	return pfc_48p31(&st_48p31::f_48p31); 
	}




