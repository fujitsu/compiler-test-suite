#include <cassert>

void test_u(){       
    char16_t c16_t[] = u"ab" ;
    
    char16_t c16_t1[] = u"a" u"b" ;    
    assert( (u"a" u"b"[0])== (u"ab"[0]) );
    assert( (u"a" u"b"[1])== (u"ab"[1]) );
    
    char16_t c16_t2[] = u"a" "b" ;
    assert( (u"a" "b"[0]) == (u"ab"[0]) );
    assert( (u"a" "b"[1]) == (u"ab"[1]) );
          
    char16_t c16_t3[] = "a" u"b" ;
    assert( ("a" u"b"[0]) == (u"ab"[0]) );
    assert( ("a" u"b"[1]) == (u"ab"[1]) );
}

void test_U(){       
    char32_t c32_t[] = U"ab" ;
    
    char32_t c32_t1[] = U"a" U"b" ;    
    assert( (U"a" U"b"[0])== (U"ab"[0]) );
    assert( (U"a" U"b"[1])== (U"ab"[1]) );
    
    char32_t c32_t2[] = U"a" "b" ;
    assert( (U"a" "b"[0]) == (U"ab"[0]) );
    assert( (U"a" "b"[1]) == (U"ab"[1]) );
          
    char32_t c32_t3[] = "a" U"b" ;
    assert( ("a" U"b"[0]) == (U"ab"[0]) );
    assert( ("a" U"b"[1]) == (U"ab"[1]) );
}

void test_L(){       
    wchar_t wc_t[] = L"ab" ;
    
    wchar_t wc_t1[] = L"a" L"b" ;    
    assert( (L"a" L"b"[0])== (L"ab"[0]) );
    assert( (L"a" L"b"[1])== (L"ab"[1]) );
    
    wchar_t wc_t2[] = L"a" "b" ;
    assert( (L"a" "b"[0]) == (L"ab"[0]) );
    assert( (L"a" "b"[1]) == (L"ab"[1]) );
          
    wchar_t wc_t3[] = "a" L"b" ;
    assert( ("a" L"b"[0]) == (L"ab"[0]) );
    assert( ("a" L"b"[1]) == (L"ab"[1]) );
}

int main(){
    test_u();
    test_U();
    test_L();
} 


