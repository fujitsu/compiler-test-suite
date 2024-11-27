
#include <stdio.h>
#include <assert.h>
#include <string.h>
#include <uchar.h>
#include <wchar.h>

void test1() {
    char  str1[] = u8"a" u8"bc";
    char  str2[] = u8"abc";
    size_t  len=sizeof(str1);
    int ret=memcmp(str1, str2, len);
    assert(ret==0);
}

void test2() {
    char16_t  str1[] = "a" "b" u"c";
    char16_t  str2[] = u"abc";
    size_t  len=sizeof(str1);
    int ret=memcmp(str1, str2, len);
    assert(ret==0);
}

void test3() {
    char16_t  str1[] = u"a" u"bc";
    char16_t  str2[] = u"abc";
    size_t  len=sizeof(str1);
    int ret=memcmp(str1, str2, len);
    assert(ret==0);
}

void test4() {
    char32_t  str1[] = "a" "b" U"c";
    char32_t  str2[] = U"abc";
    size_t  len=sizeof(str1);
    int ret=memcmp(str1, str2, len);
    assert(ret==0);
}

void test5() {
    char32_t  str1[] = U"a" U"bc";
    char32_t  str2[] = U"abc";
    size_t  len=sizeof(str1);
    int ret=memcmp(str1, str2, len);
    assert(ret==0);
}

int main(){
    test1();
    test2();
    test3();
    test4();
    test5();
    return 0;
}
