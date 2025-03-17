





#include <regex>
#include <cassert>

int main()
{
    typedef std::basic_regex<char> test_type;
    test_type src_re("aaba");
    test_type target_re = std::move(src_re);
    const unsigned mark_count = src_re.mark_count();
    const test_type::flag_type flags = src_re.flags();
    assert(target_re.flags() == flags );
    assert(target_re.mark_count() == mark_count);
}
