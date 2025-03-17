template <class _CharT, class _Traits>
class basic_streambuf {
public:
  virtual ~basic_streambuf();
};

template <class _CharT, class _Traits>
basic_streambuf<_CharT, _Traits>::~basic_streambuf()
{}


template <class _CharT, class _Traits>
class basic_filebuf : public basic_streambuf<_CharT, _Traits> {
public:
  basic_filebuf();
};

template <class _CharT, class _Traits>
basic_filebuf<_CharT, _Traits>::basic_filebuf()
     :  basic_streambuf<_CharT, _Traits>()
{}

template class basic_filebuf<char, char>;

#include <stdio.h>
int main()
{
  puts("ok");
}
