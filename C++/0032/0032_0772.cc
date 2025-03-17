
#include <stdio.h>
	class ul_node {
	};

	class ulist_impl {
	public:
		ul_node* head;
		ulist_impl();
	};


	#ifndef CASE_1
	template <class T>
	class ozUlist : public ulist_impl {
		ozUlist() : ulist_impl() {};
	};
	#endif

	ulist_impl::ulist_impl()
	{
	#ifndef CASE_2
		head	= new ul_node;
	#endif
	}

int main(){ printf("ok\n");}







