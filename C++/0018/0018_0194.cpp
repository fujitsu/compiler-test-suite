


#include <iomanip>
#include <cassert>
#include <sstream>
#define LOCALE_en_US_UTF_8     "en_US.UTF-8"

template <class CharT>
class testbuf
: public std::basic_streambuf<CharT>
{
};

int main()
{
    {
        testbuf<char> sb;
        std::ostream os(&sb);
        os.imbue(std::locale(LOCALE_en_US_UTF_8));
        showbase(os);
        int x;
        
        os << std::put_money(x, true);
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
}
