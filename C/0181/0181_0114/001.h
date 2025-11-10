

#line 10 "aa10.h"

typedef struct {
  int   st_i;
  long  st_l;
  float st_f;
} st ;

#line 30 "aa30.h"

#if ST_PRIMARY
 #define EXTERN
#else 
 #define EXTERN extern
#endif 

#line 60 "aa60.h"

EXTERN st *struct1;


