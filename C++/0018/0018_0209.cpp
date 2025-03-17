




#include <iterator>
#include <sstream>
#include <cassert>
#include <iostream>

int main(){  
	std::istringstream inf("123"); 
	std::istringstream* p = &inf;
	std::istream_iterator<int> i(inf);
	std::istream_iterator<int> iref = ++i;
	std::cout<<*iref;
}
