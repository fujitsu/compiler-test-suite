

typedef union {
  char* name;
  int value;
} pthread_attr_t;

int foo(void){
  pthread_attr_t var;
  var.value = 2;
  return var.value;
}
