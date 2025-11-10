


int foo(void){
  struct str {
    char* name;
    int value;
  } var;
  var.value = 2;
  return var.value;
}
