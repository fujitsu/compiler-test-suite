
#include <stdio.h>
#include <assert.h>
#include <string.h>

void test(){
    char  str1[] = "a" "b" u8"c";
    char  str2[] = u8"abc";
    int ret=strcmp(str1, str2);
    assert(ret==0);
}

int main(){
    test();
}
