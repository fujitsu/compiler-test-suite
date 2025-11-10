

struct _IO_FILE {
  char* name;
  int value;
};

int foo(void){
  struct _IO_FILE var;
  var.value = 2;
  return var.value;
}
