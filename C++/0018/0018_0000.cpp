#include <algorithm>
#include <vector>
#include <cassert>

void test()
{
	const int N = 4;
	int a1[] = {1, 1, 1, 1};
	int x1[N] = {2};
	auto x = std::fill_n(x1, N, 1);
	assert(std::equal(x1,x1+N,a1));
	assert(x = x1+4);
}

void test2() {
	const int N = 4;
	int a1[] = {1, 1, 1, 1};
	int x1[N] = {2};
	auto x = std::fill_n(x1, -1, 1);
	assert(x1[0] == 2);
	assert(x1[1] == 0);
	assert(x1[2] == 0);
	assert(x1[3] == 0);
	assert(x = x1);
}

int main()
{
  test();
  return 0;
}
