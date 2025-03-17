

#include <unordered_set>
#include <cassert>

int main() {
	{
		typedef std::unordered_set<int> C;
		C c;
		C::const_iterator j;
		j = c.cbegin();
		assert(j == c.cend());
		static_assert(noexcept(c.cbegin()), "");
	}
	
	{
		typedef std::unordered_set<int> C;
        int a[] = {1, 2, 3, 4, 1, 2};
        C c(a, a + sizeof(a)/sizeof(a[0]));
        assert(c.bucket_count() >= 5);
        assert(c.size() == 4);
        C::const_iterator j;
		j = c.cbegin();
		assert(*j == 4);
		assert(std::distance(j, c.cend()) == c.size());
    }
	
}
