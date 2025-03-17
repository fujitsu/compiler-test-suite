














#include <algorithm>
#include <cassert>
#include <iostream>
struct count_equal
{
    static unsigned count;
    template <class T>
    bool operator()(const T& x, const T& y)
        {++count; return x == y;}
};
unsigned count_equal::count = 0;

int main() {
	int ia[]={1, 2, 3};
	unsigned len_ia = sizeof(ia)/sizeof(ia[0]);
	int ib[]={};
	unsigned len_ib = sizeof(ib)/sizeof(ib[0]);
	count_equal::count = 0;
	assert(std::search(ia,ia+len_ia,ib, ib+len_ib, count_equal()) == ia);
	assert(count_equal::count == 0);
	
	count_equal::count = 0;
	int ic[] = {4, 5, 6};
	unsigned len_ic = sizeof(ic)/sizeof(ic[0]);
	int id[] = {1, 2, 3, 4, 5};
	unsigned len_id = sizeof(id)/sizeof(id[0]);
	assert(std::search(ic, ic+len_ic, id, id+len_id) == ic+len_ic);
	assert(count_equal::count == 0);
}
