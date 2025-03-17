





#include <iterator>
#include <sstream>
#include <cassert>
#include <iostream>

int main(){  
	std::istringstream inf(" 1 23");   
	std::istream_iterator<int> i(inf);
	std::istream_iterator<int> iref = ++i;
	assert(*iref  == 23);
	assert(*i  == 23);
}