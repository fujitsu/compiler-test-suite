
typedef struct {
  int index;
} st;

#if PRIMARY
 #define EXTERN
#else 
 #define EXTERN extern
#endif 

EXTERN st *struct1;


int bar() {
  return struct1->index;
}
