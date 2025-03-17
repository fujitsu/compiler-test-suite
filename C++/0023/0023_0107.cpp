#include <string>
#include <cassert>

int main()
{
   {
    char a = U'1';
    assert(a == U'1');
   }
   {
    char a1 = U'q';
    assert(a1 = U'q');
   }
   {
    char a2 = U'\n';
    assert(a2 == U'\n');
   }
   {
    wchar_t b = U'1';
    assert(b == U'1');
   }
   {
    wchar_t b1 = U'q';
    assert(b1 == U'q');
   }
   {
    wchar_t b2 = U'\n';
    assert(b2 == U'\n');
   }
   {
    char c[] = {U'1'};
    assert(c[0] == U'1');
   }
   {
    char c1[] = {U'q'};
    assert(c1[0] == U'q');
   }
   {
    char c2[] = {U'\n'};
    assert(c2[0] == U'\n');
   }
   {
    wchar_t d[] = {U'1'};
    assert(d[0] == U'1');
   }
   {
    wchar_t d1[] = {U'q'};
    assert(d1[0] == U'q');
   }
   {
    wchar_t d2[] = {U'\n'};
    assert(d2[0] == U'\n');
   }
}
