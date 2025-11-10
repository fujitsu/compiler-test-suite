#include "public2/004.h"

template <int N>
void foo(const char(&)[N]) {}

void test()
{
    foo<5>(u8"abcd");
    foo<16>(u8"\u3042\u3044\u3046\u3048\u304A"); 
    foo<7>(u8"\u6C49\u5B57"); 

    
    unsigned char en_letters[] = {'a', 'b', 'c', 'd', 0};
    unsigned char hiraganas[] = {0xE3, 0x81, 0x82,
                                 0xE3, 0x81, 0x84,
                                 0xE3, 0x81, 0x86,
                                 0xE3, 0x81, 0x88,
                                 0xE3, 0x81, 0x8A,
                                 0};
    unsigned char Han_scripts[] = {0xE6, 0xB1, 0x89,
                                   0xE5, 0xAD, 0x97,
                                   0};
    for(int i = 0; i < 5; i++)
        assert((unsigned char)u8"abcd"[i] == en_letters[i]);
    for(int i = 0; i < 16; i++)
        assert((unsigned char)u8"\u3042\u3044\u3046\u3048\u304A"[i] == hiraganas[i]);
    for(int i = 0; i < 7; i++)
        assert((unsigned char)u8"\u6C49\u5B57"[i] == Han_scripts[i]);
}

PASS_CASE_MAIN_FUNCTION
