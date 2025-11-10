#include "004.h"

char c00 = '\u0000';
char c1f = '\u001f';
char c20 = '\u0020';
char c23 = '\u0023';
char c25 = '\u0025';
char c3f = '\u003f';
char c41 = '\u0041';
char c5f = '\u005f';
char c61 = '\u0061';
char c7e = '\u007e';
char c7f = '\u007f';
wchar_t wc7f = L'\u007f';
wchar_t wc9f = L'\u009f';

const char* p1 = "\u0000\u001f\u0020\u0023\u0025\u003f\u0041\u005f\u0061\u007e\u007f";
const wchar_t* p2 = L"\u007f\u009f";

void test() {}

PASS_CASE_MAIN_FUNCTION
