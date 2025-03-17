







#include <algorithm>
#include <cassert>

int main() {
	int ia[]={1, 2, 3};
	int ib[]={};
	assert(std::search(ia,ia+sizeof(ia)/sizeof(ia[0]),ib, ib+sizeof(ib)/sizeof(ib[0])) == ia);
	
	int ic[] = {4, 5, 6};
	int id[] = {1, 2, 3};
	assert(std::search(ic, ic+sizeof(ic)/sizeof(ic[0]), id, id+sizeof(id)/sizeof(id[0])) == ic+sizeof(ic)/sizeof(ic[0]));
}
