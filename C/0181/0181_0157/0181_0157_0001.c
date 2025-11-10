


int foo(void){
  struct str{
    char *name;
    int value;
  };
  typedef struct str test;
  test var;
  var.value = 2;
  return var.value;
}
