

union str2 {
  int value;
};

int foo(void){
  union str2 var;
  var.value = 2;
  return var.value;
}
