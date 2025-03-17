




#include <istream>
#include <cassert>
#include <ios>

template <class CharT>
struct testbuf
    : public std::basic_streambuf<CharT>
{
    typedef std::basic_string<CharT> string_type;
    typedef std::basic_streambuf<CharT> base;
    string_type str_;
    testbuf(const string_type& str){}
};

int main()
{
    {
        std::istream is((testbuf<char>*)0);
        std::istream::sentry sen(is, true);
        assert(!(bool)sen);
        assert(!is.good());
        assert(is.rdstate() & std::ios::failbit);
        assert(is.rdstate() & std::ios::badbit);
        assert(!(is.rdstate() & std::ios::goodbit));
    }
    {
        std::wistream is((testbuf<wchar_t>*)0);
        std::wistream::sentry sen(is, true);
        assert(!(bool)sen);
        assert(!is.good());
        assert(is.rdstate() & std::ios::failbit);
        assert(is.rdstate() & std::ios::badbit);
        assert(!(is.rdstate() & std::ios::goodbit));
    }
}
