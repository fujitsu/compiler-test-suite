#include "public2/004.h"


static_assert(R"(a\"b)"[0] == 'a',  "error");
static_assert(R"(a\"b)"[1] == '\\', "error");
static_assert(R"(a\"b)"[2] == '\"', "error");
static_assert(R"(a\"b)"[3] == 'b',  "error");
static_assert(R"(a\"b)"[4] == '\0', "error");
static_assert(R"0123456789ABCDEF(a\"b)0123456789ABCDEF"[0] == 'a',  "error");
static_assert(R"0123456789ABCDEF(a\"b)0123456789ABCDEF"[1] == '\\', "error");
static_assert(R"0123456789ABCDEF(a\"b)0123456789ABCDEF"[2] == '\"', "error");
static_assert(R"0123456789ABCDEF(a\"b)0123456789ABCDEF"[3] == 'b',  "error");
static_assert(R"0123456789ABCDEF(a\"b)0123456789ABCDEF"[4] == '\0', "error");


static_assert(u8R"(a\"b)"[0] == 'a',  "error");
static_assert(u8R"(a\"b)"[1] == '\\', "error");
static_assert(u8R"(a\"b)"[2] == '\"', "error");
static_assert(u8R"(a\"b)"[3] == 'b',  "error");
static_assert(u8R"(a\"b)"[4] == '\0', "error");
static_assert(u8R"0123456789ABCDEF(a\"b)0123456789ABCDEF"[0] == 'a',  "error");
static_assert(u8R"0123456789ABCDEF(a\"b)0123456789ABCDEF"[1] == '\\', "error");
static_assert(u8R"0123456789ABCDEF(a\"b)0123456789ABCDEF"[2] == '\"', "error");
static_assert(u8R"0123456789ABCDEF(a\"b)0123456789ABCDEF"[3] == 'b',  "error");
static_assert(u8R"0123456789ABCDEF(a\"b)0123456789ABCDEF"[4] == '\0', "error");


static_assert(uR"(a\"b)"[0] == u'a',  "error");
static_assert(uR"(a\"b)"[1] == u'\\', "error");
static_assert(uR"(a\"b)"[2] == u'\"', "error");
static_assert(uR"(a\"b)"[3] == u'b',  "error");
static_assert(uR"(a\"b)"[4] == u'\0', "error");
static_assert(uR"0123456789ABCDEF(a\"b)0123456789ABCDEF"[0] == u'a',  "error");
static_assert(uR"0123456789ABCDEF(a\"b)0123456789ABCDEF"[1] == u'\\', "error");
static_assert(uR"0123456789ABCDEF(a\"b)0123456789ABCDEF"[2] == u'\"', "error");
static_assert(uR"0123456789ABCDEF(a\"b)0123456789ABCDEF"[3] == u'b',  "error");
static_assert(uR"0123456789ABCDEF(a\"b)0123456789ABCDEF"[4] == u'\0', "error");


static_assert(UR"(a\"b)"[0] == U'a',  "error");
static_assert(UR"(a\"b)"[1] == U'\\', "error");
static_assert(UR"(a\"b)"[2] == U'\"', "error");
static_assert(UR"(a\"b)"[3] == U'b',  "error");
static_assert(UR"(a\"b)"[4] == U'\0', "error");
static_assert(UR"0123456789ABCDEF(a\"b)0123456789ABCDEF"[0] == U'a',  "error");
static_assert(UR"0123456789ABCDEF(a\"b)0123456789ABCDEF"[1] == U'\\', "error");
static_assert(UR"0123456789ABCDEF(a\"b)0123456789ABCDEF"[2] == U'\"', "error");
static_assert(UR"0123456789ABCDEF(a\"b)0123456789ABCDEF"[3] == U'b',  "error");
static_assert(UR"0123456789ABCDEF(a\"b)0123456789ABCDEF"[4] == U'\0', "error");


static_assert(LR"(a\"b)"[0] == L'a',  "error");
static_assert(LR"(a\"b)"[1] == L'\\', "error");
static_assert(LR"(a\"b)"[2] == L'\"', "error");
static_assert(LR"(a\"b)"[3] == L'b',  "error");
static_assert(LR"(a\"b)"[4] == L'\0', "error");
static_assert(LR"0123456789ABCDEF(a\"b)0123456789ABCDEF"[0] == L'a',  "error");
static_assert(LR"0123456789ABCDEF(a\"b)0123456789ABCDEF"[1] == L'\\', "error");
static_assert(LR"0123456789ABCDEF(a\"b)0123456789ABCDEF"[2] == L'\"', "error");
static_assert(LR"0123456789ABCDEF(a\"b)0123456789ABCDEF"[3] == L'b',  "error");
static_assert(LR"0123456789ABCDEF(a\"b)0123456789ABCDEF"[4] == L'\0', "error");

void test() {}

PASS_CASE_MAIN_FUNCTION
