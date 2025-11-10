


int foo(void){
  union str {
    char* name;
    int value;
  } var;
  var.value = 2;
  return var.value;
}
