
  #include <stdio.h>
  #include "001.h"
  union unitag1{
          char      unichar[2];
          short int unisint1;
          short int unisint2;
          int       uniint1;
  };
  struct strtag1{
           char      strchar[2];
           short int strsint1;
           short int strsint2;
           int       strint1;
  };

  typedef const void CONST_VOID_FUNCTION_TYPE_DTD0107_FILE_\
SCOPE_TYPEDEF_NAME_TEST_AAAABBB_CV11L20_BY_AAAABBB_LIMITED_1991;

#if defined(os2)
  typedef volatile const void TYPEDEF_VOLATILE_CONST_VOID_TY\
PE_DTD0110_FUNCTION_\
FUNCTION_TYPEDEF_NAM\
E_TEST_AAAABBB_C_V11\
L20_BY_AAAABBB_LIMIT\
ED_1991YEAR_AAAAAAAA\
AAAAAAAAAAAAAAAAAAAA\
BBBBBBBBBBBBBBBBBBBB\
BBBBBBBBBBBBBBBBBBBB\
CCCCCCCCCCCCCCCCCCCC\
CCCCCCCCCCCCCCCCCCCC\
DDDDDDDDDDD;
#else
  typedef void TYPEDEF_VOLATILE_CONST_VOID_TY\
PE_DTD0110_FUNCTION_\
FUNCTION_TYPEDEF_NAM\
E_TEST_AAAABBB_C_V11\
L20_BY_AAAABBB_LIMIT\
ED_1991YEAR_AAAAAAAA\
AAAAAAAAAAAAAAAAAAAA\
BBBBBBBBBBBBBBBBBBBB\
BBBBBBBBBBBBBBBBBBBB\
CCCCCCCCCCCCCCCCCCCC\
CCCCCCCCCCCCCCCCCCCC\
DDDDDDDDDDD;
#endif

  const void func07(int);
  short int func10(void);
#if defined(os2)
  short int funcdmy(volatile const void);
#else
  short int funcdmy(void);
#endif
  volatile void *funcdmy2(void);

  CONST_VOID_FUNCTION_\
TYPE_DTD0107_FILE_SC\
OPE_TYPEDEF_NAME_TES\
T_AAAABBB_CV11L20_BY\
_AAAABBB_LIMITED_1991 func07(int int0701)
{
  ichck("DTD01_07",1,int0701,
        "const void function type,file scope,101characters test");
  return;
}

short int func10(void)
{
  short int sint1001;

  sint1001 = funcdmy() + 1;
  return sint1001;
}

short int funcdmy( TYPEDEF_VOLATILE_CONST_VOID_TY\
PE_DTD0110_FUNCTION_\
FUNCTION_TYPEDEF_NAM\
E_TEST_AAAABBB_C_V11\
L20_BY_AAAABBB_LIMIT\
ED_1991YEAR_AAAAAAAA\
AAAAAAAAAAAAAAAAAAAA\
BBBBBBBBBBBBBBBBBBBB\
BBBBBBBBBBBBBBBBBBBB\
CCCCCCCCCCCCCCCCCCCC\
CCCCCCCCCCCCCCCCCCCC\
DDDDDDDDDDD )
{
  return 1;
}

volatile void *func11(void)
{
  typedef volatile void * TYPEDEF_VOLATILE_CON\
ST_VOID_POINTER_TYPE\
_DTD0111_FUNCTION_TY\
PEDEF_NAME_TEST_AAAA\
BBB_C_V11L20_BY_AAAA\
BBB_LIMITED_1991YEAR\
_EEEEEEEEEEEEEEEEEEE\
EEEEEEEEEEEEEEEEEEEE\
FFFFFFFFFFFFFFFFFFFF\
FFFFFFFFFFFFFFFFFFFF\
GGGGGGGGGGGGGGGGGGGG\
GGGGGGGGGGGGGGGGGGGG\
H ;
  TYPEDEF_VOLATILE_CON\
ST_VOID_POINTER_TYPE\
_DTD0111_FUNCTION_TY\
PEDEF_NAME_TEST_AAAA\
BBB_C_V11L20_BY_AAAA\
BBB_LIMITED_1991YEAR\
_EEEEEEEEEEEEEEEEEEE\
EEEEEEEEEEEEEEEEEEEE\
FFFFFFFFFFFFFFFFFFFF\
FFFFFFFFFFFFFFFFFFFF\
GGGGGGGGGGGGGGGGGGGG\
GGGGGGGGGGGGGGGGGGGG\
H ptr11;

  ptr11 = funcdmy2();

  return ptr11;
}

volatile void *funcdmy2(void)
{
  static int intdmy = 3;
  return &intdmy;
}

int main()
{

  struct strtag2{
           char      strchar01;
           char      strchar02;
           short int strsint01;
           int       strint01;
  }strara = { 0x01, 0x02, 0x03, 0x04 };


  typedef volatile const struct strtag2 * VOLATILE_CONST_STRUCT_\
POINTER_TYPE_DTD0109_FUNCTION_SCOPE_TYPEDEF_NAME_TEST_AAAABBB\
_C_V11L20_BY_AAAABBB_LIMITED_1991_YEAR ;


  header("","typedef name test proc no.2.") ;

{
  func07(1);
}

{
  typedef volatile const char VOLATILE_CONST_CHAR_\
ARRAY_TYPE_DTD0108_BLOCK_SCOPE_TYPEDEF_NAME_TEST_PROC\
NO1_AAAABBB_CV11L20_BY_AAAABBB_LIMITED_1991YEAR ;

  VOLATILE_CONST_CHAR_ARRAY_TYPE_DTD0108_BLOCK_SCOPE_\
TYPEDEF_NAME_TEST_PROCNO1_AAAABBB_CV11L20_BY_AAAABBB_\
LIMITED_1991YEAR chararr[3] = {'a','b','c'};

  cchck("DTD01_08",'b',chararr[1],
        "voaltile const array type,block scope,120characters test");
}

{
  VOLATILE_CONST_STRUCT_POI\
NTER_TYPE_DTD0109_FUNCTIO\
N_SCOPE_TYPEDEF_NAME_TEST\
_AAAABBB_C_V11L20_BY_AAAA\
BBB_LIMITED_1991_YEAR dtd0109 = &strara;

  ichck("DTD01_09",0x04,dtd0109->strint01,
    "voaltile const pointer type,function scope,121characters test");
}

{
  short int sintret;
  sintret = func10();
  sichck("DTD01_10",2,sintret,
        "voaltile const void type,function scope,241characters test");
}

{
  volatile int *intptr;
  intptr = func11();
  ichck("DTD01_11",3,*intptr,
      "voaltile const void * type,function scope,242characters test");
}

  header("","typedef name test proc no.2.") ;
}
