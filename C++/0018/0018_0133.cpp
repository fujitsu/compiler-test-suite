

#include <unordered_map>
#include <cassert>

int main() {
	{
        std::unordered_multimap<int, int> s1 = {{1, 1}, {2, 2}, {3, 3}};
        static_assert(noexcept(s1.size()), "");
		assert(s1.size() == 3);
	}
}
