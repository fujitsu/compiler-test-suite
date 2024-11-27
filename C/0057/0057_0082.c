
#include <assert.h>                   
#include <uchar.h>
#include <stdio.h>
#include <stdint.h>
         
void test1(){  
    const char16_t EN[5] = u"abcd";                
    const char16_t JP[6] = u"\u3042\u3044\u3046\u3048\u304A";

    uint_least16_t enLetters[] = { 'a', 'b', 'c', 'd', 0 };
    uint_least16_t hiragana[] = { 0x3042, 0x3044, 0x3046, 0x3048, 0x304A, 0x00 };

    for(int i = 0; i < 5; i++)
        assert((int_least16_t)EN[i] == enLetters[i]);
    for(int i = 0; i < 6; i++)
        assert((int_least16_t)JP[i] == hiragana[i]);
}

void test2(){  
    const char32_t EN[5] = U"abcd";                
    const char32_t JP[6] = U"\u3042\u3044\u3046\u3048\u304A";

    uint_least32_t enLetters[] = { 'a', 'b', 'c', 'd', 0 };
    uint_least32_t hiragana[] = { 0x3042, 0x3044, 0x3046, 0x3048, 0x304A, 0x00 };

    for(int i = 0; i < 5; i++)
        assert((int_least32_t)EN[i] == enLetters[i]);
    for(int i = 0; i < 6; i++)
        assert((int_least32_t)JP[i] == hiragana[i]);
}

int main(){
    test1();
    test2();
    return 0;
}
