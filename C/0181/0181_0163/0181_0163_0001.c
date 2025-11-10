


int foo(void){
  struct str2{
    char *name;
    int value;
  };
  typedef struct str2 test2;
  test2 var;
  var.value = 2;
  return var.value;
}
