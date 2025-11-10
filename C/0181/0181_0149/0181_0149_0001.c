

struct str2 {
  int value;
};

int foo(void){
  struct str2 var;
  var.value = 2;
  return var.value;
}
