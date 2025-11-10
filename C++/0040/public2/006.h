#ifndef __CPP11_TEST_HEADER_CSTDDEF_H__
#define __CPP11_TEST_HEADER_CSTDDEF_H__

# include "003.h"

#ifdef _HAS_CXX11_HEADER_CSTDDEF

# include <cstddef>

#else 

# ifdef __GLIBC__
#  define __need_NULL
#  define __need_ptrdiff_t
#  define __need_size_t
# endif  

# include <stddef.h>

namespace std
{
    using ::ptrdiff_t;
    using ::size_t;
    typedef decltype(nullptr) nullptr_t;
}

#endif 

#endif 
