

struct str {
  char* name;
  int value;
};

int foo(void){
  struct str var;
  var.value = 2;
  return var.value;
}
