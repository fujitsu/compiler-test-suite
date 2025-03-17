#include <string>
#include <cassert>

int main()
{
   {
    char a = u8'1';
    assert(a == u8'1');
   }
   {
    char a1 = u8'q';
    assert(a1 == u8'q');
   }
   {
    char a2 = u8'\n';
    assert(a2 == u8'\n');
   }
   {
    wchar_t b = u8'1';
    assert(b == u8'1');
   }
   {
    wchar_t b1 = u8'q';
    assert(b1 == u8'q');
   }
   {
    wchar_t b2 = u8'\n';
    assert(b2 == u8'\n');
    }
   {
    char c[] = {u8'1'};
    assert(c[0] == u8'1');
   }
   {
    char c1[] = {u8'q'};
    assert(c1[0] == u8'q');
   }
   {
    char c2[] = {u8'\n'};
    assert(c2[0] == u8'\n');
   }
   {
    wchar_t d[] = {u8'1'};
    assert(d[0] == u8'1');
   }
   {
    wchar_t d1[] = {u8'q'};
    assert(d1[0] == u8'q');
   }
   {
    wchar_t d2[] = {u8'\n'};
    assert(d2[0] == u8'\n');
   }
}
