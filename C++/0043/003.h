#ifndef __CPP11_TEST_HEADER___CONFIG_H__
#define __CPP11_TEST_HEADER___CONFIG_H__

#define _HAS_CXX11_RVALUE_REFERENCE

#define PASS_CASE_RUN_OK_INFO "ok"
#define FAIL_CASE_RUN_OK_INFO "should not compile success"






#ifdef _HAS_CXX11_NOEXCEPT
#  define _CXX11_NOEXCEPT noexcept
#  define _CXX11_NOEXCEPT_(x) noexcept(x)
#else
#  define _CXX11_NOEXCEPT throw()
#  define _CXX11_NOEXCEPT_(x)
#endif

#endif 
