#include <string>
#include <cassert>

int main()
{
   {
    char a = L'1';
    assert(a == L'1');
   }
   {
    char a1 = L'q';
    assert(a1 == L'q');
   }
   {
    char a2 = L'\n';
    assert(a2 == L'\n');
   }
   {
    wchar_t b = L'1';
    assert(b == L'1');
   }
   {
    wchar_t b1 = L'q';
    assert(b1 == L'q');
   }
   {
    wchar_t b2 = L'\n';
    assert(b2 == L'\n');
   }
   {
    char c[] = {L'1'};
    assert(c[0] == L'1');
   }
   {
    char c1[] = {L'q'};
    assert(c1[0] == L'q');
   }
   {
    char c2[] = {L'\n'};
    assert(c2[0] == L'\n');
   }
   {
    wchar_t d[] = {L'1'};
    assert(d[0] == L'1');
   }
   {
    wchar_t d1[] = {L'q'};
    assert(d1[0] == L'q');
   }
   {
    wchar_t d2[] = {L'\n'};
    assert(d2[0] == L'\n');
   }
}
