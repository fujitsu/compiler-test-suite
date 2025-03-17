#include <string>
#include <cassert>

int main()
{
   {
    char a = u'2';
    assert(a == u'2');
   }
   {
    char a1 = u'y';
    assert(a1 == u'y');
   }
   {
    char a2 = u'\r';
    assert(a2 == u'\r');
   }  
   {
    wchar_t b = u'1';
    assert(b == u'1');
   }
   {
    wchar_t b1 = u'q';
    assert(b1 == u'q');
   }
   {
    wchar_t b2 = u'\n';
    assert(b2 == u'\n');
   }
   {
    char c[] = {u'9'};
    assert(c[0] == u'9');
   }
   {
    char c1[] = {u'q'};
    assert(c1[0] = u'q');
   }
   {
    char c2[] = {u'\\'};
    assert(c2[0] == u'\\');
   }
   {
    wchar_t d[] = {u'1'};
    assert(d[0] == u'1');
   }
   {
    wchar_t d1[] = {u'q'};
    assert(d1[0] == u'q');
   }
   {
    wchar_t d2[] = {u'\t'};
    assert(d2[0] == u'\t');
   }
}
