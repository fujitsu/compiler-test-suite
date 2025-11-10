#include "001.h"

class A;

char (&__test(int A::*))[1];
char (&__test(int (A::*)(int)))[2];
char (&__test(int (A::*)(int) const))[3];

void test()
{
    
    {
        int A::*pmd = nullptr;
        int (A::*pmf1)() = nullptr;
        void(A::*pmf2)(int) const = nullptr;
    }
    {
        int A::*pmd = prvalue<nullptr_t>();
        int (A::*pmf1)() = prvalue<nullptr_t>();
        void(A::*pmf2)(int) const = prvalue<nullptr_t>();
    }
    {
        int A::*pmd = prvalue<const nullptr_t>();
        int (A::*pmf1)() = prvalue<const nullptr_t>();
        void(A::*pmf2)(int) const = prvalue<const nullptr_t>();
    }
    {
        int A::*pmd = prvalue<volatile nullptr_t>();
        int (A::*pmf1)() = prvalue<volatile nullptr_t>();
        void(A::*pmf2)(int) const = prvalue<volatile nullptr_t>();
    }
    {
        int A::*pmd = prvalue<const volatile nullptr_t>();
        int (A::*pmf1)() = prvalue<const volatile nullptr_t>();
        void(A::*pmf2)(int) const = prvalue<const volatile nullptr_t>();
    }
    
    
    typedef int A::*PMemDataType;
    typedef int (A::*PMemFunType1)(int);
    typedef int (A::*PMemFunType2)(int) const;
    {
        assert_true(sizeof(__test((PMemDataType)nullptr)) == sizeof(char[1]));
        assert_true(sizeof(__test((PMemFunType1)nullptr)) == sizeof(char[2]));
        assert_true(sizeof(__test((PMemFunType2)nullptr)) == sizeof(char[3]));
        
        assert((PMemDataType)nullptr == (PMemDataType)nullptr);
        assert((PMemFunType1)nullptr == (PMemFunType1)nullptr);
        assert((PMemFunType2)nullptr == (PMemFunType2)nullptr);
    }
    {
        assert_true(sizeof(__test((PMemDataType)prvalue<nullptr_t>())) == sizeof(char[1]));
        assert_true(sizeof(__test((PMemFunType1)prvalue<nullptr_t>())) == sizeof(char[2]));
        assert_true(sizeof(__test((PMemFunType2)prvalue<nullptr_t>())) == sizeof(char[3]));
        
        assert((PMemDataType)prvalue<nullptr_t>() == (PMemDataType)prvalue<nullptr_t>());
        assert((PMemFunType1)prvalue<nullptr_t>() == (PMemFunType1)prvalue<nullptr_t>());
        assert((PMemFunType2)prvalue<nullptr_t>() == (PMemFunType2)prvalue<nullptr_t>());
    }
    {
        assert_true(sizeof(__test((PMemDataType)prvalue<const nullptr_t>())) == sizeof(char[1]));
        assert_true(sizeof(__test((PMemFunType1)prvalue<const nullptr_t>())) == sizeof(char[2]));
        assert_true(sizeof(__test((PMemFunType2)prvalue<const nullptr_t>())) == sizeof(char[3]));
        
        assert((PMemDataType)prvalue<const nullptr_t>() == (PMemDataType)prvalue<const nullptr_t>());
        assert((PMemFunType1)prvalue<const nullptr_t>() == (PMemFunType1)prvalue<const nullptr_t>());
        assert((PMemFunType2)prvalue<const nullptr_t>() == (PMemFunType2)prvalue<const nullptr_t>());
    }
    {
        assert_true(sizeof(__test((PMemDataType)prvalue<volatile nullptr_t>())) == sizeof(char[1]));
        assert_true(sizeof(__test((PMemFunType1)prvalue<volatile nullptr_t>())) == sizeof(char[2]));
        assert_true(sizeof(__test((PMemFunType2)prvalue<volatile nullptr_t>())) == sizeof(char[3]));
        
        assert((PMemDataType)prvalue<volatile nullptr_t>() == (PMemDataType)prvalue<volatile nullptr_t>());
        assert((PMemFunType1)prvalue<volatile nullptr_t>() == (PMemFunType1)prvalue<volatile nullptr_t>());
        assert((PMemFunType2)prvalue<volatile nullptr_t>() == (PMemFunType2)prvalue<volatile nullptr_t>());
    }
    {
        assert_true(sizeof(__test((PMemDataType)prvalue<const volatile nullptr_t>())) == sizeof(char[1]));
        assert_true(sizeof(__test((PMemFunType1)prvalue<const volatile nullptr_t>())) == sizeof(char[2]));
        assert_true(sizeof(__test((PMemFunType2)prvalue<const volatile nullptr_t>())) == sizeof(char[3]));
        
        assert((PMemDataType)prvalue<const volatile nullptr_t>() == (PMemDataType)prvalue<const volatile nullptr_t>());
        assert((PMemFunType1)prvalue<const volatile nullptr_t>() == (PMemFunType1)prvalue<const volatile nullptr_t>());
        assert((PMemFunType2)prvalue<const volatile nullptr_t>() == (PMemFunType2)prvalue<const volatile nullptr_t>());
    }
}

PASS_CASE_MAIN_FUNCTION
