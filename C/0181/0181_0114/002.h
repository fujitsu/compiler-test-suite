

#include "001.h"

#line 100 "bb10.h"

typedef union {
  int   un_i;
  long  un_l;
  float un_f;
} un ;

#line 300 "bb30.h"

#if UN_PRIMARY
 #define EXTERN
#else 
 #define EXTERN extern
#endif 

#line 600 "bb60.h"

EXTERN un *union1;
