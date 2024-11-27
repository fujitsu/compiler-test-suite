
#include <assert.h>                   
         
void test(){  
    const char EN[5] = u8"abcd";                
    const char JP[16] = u8"\u3042\u3044\u3046\u3048\u304A";      
    const char CN[7] = u8"\u6C49\u5B57";                         
     
    unsigned char enLetters[] = {'a', 'b', 'c', 'd', 0};
    unsigned char hiraganas[] = {0xE3, 0x81, 0x82,
                                 0xE3, 0x81, 0x84,
                                 0xE3, 0x81, 0x86,
                                 0xE3, 0x81, 0x88,
                                 0xE3, 0x81, 0x8A,
                                 0};    
    unsigned char HanScripts[] = {0xE6, 0xB1, 0x89,
                                   0xE5, 0xAD, 0x97,
                                   0};                                                                  
                                   
    for(int i = 0; i < 5; i++)
        assert((unsigned char)EN[i] == enLetters[i]);
    for(int i = 0; i < 16; i++)
        assert((unsigned char)JP[i] == hiraganas[i]);
    for(int i = 0; i < 7; i++)
        assert((unsigned char)CN[i] == HanScripts[i]);
}

int main(){
    test();
}
