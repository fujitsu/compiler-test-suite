

union str {
  char* name;
  int value;
};

int foo(void){
  union str var;
  var.value = 2;
  return var.value;
}
