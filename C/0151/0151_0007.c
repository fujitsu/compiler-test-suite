















  #include <stdio.h>
  #include "001.h"
  union unitag1{
          char      unichar[2];
          short int unisint1;
          short int unisint2;
          int       uniint1;
  };
                                                         
  typedef volatile union unitag1 VOLATILE_UNION_UNITAG1_DTD01_004;
                                                         
  typedef const float CONST_FLOATTYPE_PROTOTYPE_DTD0105;



  int func04( VOLATILE_UNION_UNITAG1_DTD01_004 * );
  float func05( CONST_FLOATTYPE_PROTOTYPE_DTD0105 );
  char func06( int int0601 );







int func04( volatile union unitag1 *puni0104 )
{
  return puni0104->uniint1;
}







float func05( CONST_FLOATTYPE_PROTOTYPE_DTD0105 argflt )
{
  return argflt + 1.25f;
}







char func06( int int0601 )
{
  char char0601;
  typedef const enum enum0601 {X,Y,Z}TYPEDEF_CONST_ENUM_DTD0106\
_FUNCTION_SCOPE_TYPEDEF_NAME_TEST_C_V11L20\
_LIMITED_1991;

  switch(int0601){
    case X  : char0601 = 'A';
              break;
    case Y  : char0601 = 'B';
              break;
    case Z  : char0601 = 'C';
              break;
    default : char0601 = 'D';
              break;
  }
  return char0601;
}




int main()
{



  struct strtag1{
           char      strchar01;
           char      strchar02;
           short int strsint01;
           int       strint01;
  };

  typedef unsigned char UCHAR101;                        
                                                         
  typedef volatile short int VOLATILE_SHORT_INT_TYPE_DTD0103;







  header("","typedef name test proc no.1.") ;



{
  UCHAR101 type_char01 = 'A';
  unsigned char char02 = 0x01;

  char02 += type_char01;
  cchck("DTD01_01",'B',char02,
        "char type, function scope, 8characters test");
}



{
  int int0102;
  typedef struct strtag1 STRTYP102;                      
  STRTYP102 dtd0102;

  dtd0102.strchar01 = 0x01;
  dtd0102.strchar02 = 0x02;
  dtd0102.strsint01 = 0x03;
  dtd0102.strint01  = 0x04;

  int0102 = dtd0102.strchar01 + dtd0102.strchar02 +
            dtd0102.strsint01 + dtd0102.strint01;

  ichck("DTD01_02",0x0a,int0102,
        "struct type, block scope, 9characters test");
}



{
  VOLATILE_SHORT_INT_TYPE_DTD0103 sint0301 = 0;
  VOLATILE_SHORT_INT_TYPE_DTD0103 sint0302 = 1;
  VOLATILE_SHORT_INT_TYPE_DTD0103 sint0303 = 2;

  sint0301 = sint0302 + sint0303;

  sichck("DTD01_03", 3, sint0301,
         "short int type, file scope, 31characters test");
}



{
  int int0104;
  static volatile union unitag1 dtd0104;

  dtd0104.unisint1 = 0xff;

  int0104 = func04(&dtd0104);
#if defined(os2) || defined(_WIN32) || defined(__i386__) || defined(__i386) || defined(__x86_64__) || defined(__aarch64__)
  ichck("DTD01_04",0xff, int0104,
        "short int type, file scope, 31characters test");
#elif defined(INT64)
  ichck("DTD01_04",0xff000000000000, int0104,
        "short int type, file scope, 31characters test");
#else
  ichck("DTD01_04",0xff0000, int0104,
        "short int type, file scope, 31characters test");
#endif
}



{
  float flt0105;

  flt0105 = func05(1.25f);

  fchck("DTD01_05", 2.5f, flt0105, 0.0f,
        "const flolat type, block scope, 33characters test");
}



{
  char char0106;
  int int0106 = 2;

  char0106 = func06(int0106);

  cchck("DTD01_06", 'C', char0106,
        "const enum type, function scope, 100characters test");
}




  header("","typedef name test proc no.1.") ;
}
