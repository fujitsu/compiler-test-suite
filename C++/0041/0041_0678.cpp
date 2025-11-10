#include "public3/004.h"

#ifdef _HAS_CXX11_UNICODE_CHARS

# define ENUM_BASE_TEST(ns_name, class_key, cv) \
    namespace ns_name \
    { \
        enum class_key EBool               : cv bool                   {}; \
        enum class_key EChar               : cv char                   {}; \
        enum class_key EChar16_t           : cv char16_t               {}; \
        enum class_key EChar32_t           : cv char32_t               {}; \
        enum class_key EWchar_t            : cv wchar_t                {}; \
        enum class_key ESignedChar         : cv signed char            {}; \
        enum class_key EShortInt           : cv short int              {}; \
        enum class_key EInt                : cv int                    {}; \
        enum class_key ELongInt            : cv long int               {}; \
        enum class_key ELongLongInt        : cv long long int          {}; \
        enum class_key EUnsignedChar       : cv unsigned char          {}; \
        enum class_key EUnsignedShortInt   : cv unsigned short int     {}; \
        enum class_key EUnsignedInt        : cv unsigned int           {}; \
        enum class_key EUnsignedLongInt    : cv unsigned long int      {}; \
        enum class_key EUnsignedLongLongInt: cv unsigned long long int {}; \
    }

#else 

# define ENUM_BASE_TEST(ns_name, class_key, cv) \
    namespace ns_name \
    { \
        enum class_key EBool               : cv bool                   {}; \
        enum class_key EChar               : cv char                   {}; \
        enum class_key EWchar_t            : cv wchar_t                {}; \
        enum class_key ESignedChar         : cv signed char            {}; \
        enum class_key EShortInt           : cv short int              {}; \
        enum class_key EInt                : cv int                    {}; \
        enum class_key ELongInt            : cv long int               {}; \
        enum class_key ELongLongInt        : cv long long int          {}; \
        enum class_key EUnsignedChar       : cv unsigned char          {}; \
        enum class_key EUnsignedShortInt   : cv unsigned short int     {}; \
        enum class_key EUnsignedInt        : cv unsigned int           {}; \
        enum class_key EUnsignedLongInt    : cv unsigned long int      {}; \
        enum class_key EUnsignedLongLongInt: cv unsigned long long int {}; \
    }

#endif 

#define NO_CV

ENUM_BASE_TEST(ns_class,    class, NO_CV)
ENUM_BASE_TEST(ns_class_c,  class, const)
ENUM_BASE_TEST(ns_class_v,  class, volatile)
ENUM_BASE_TEST(ns_class_cv, class, const volatile)

ENUM_BASE_TEST(ns_struct,    struct, NO_CV)
ENUM_BASE_TEST(ns_struct_c,  struct, const)
ENUM_BASE_TEST(ns_struct_v,  struct, volatile)
ENUM_BASE_TEST(ns_struct_cv, struct, const volatile)

void test() {}

PASS_CASE_MAIN_FUNCTION
