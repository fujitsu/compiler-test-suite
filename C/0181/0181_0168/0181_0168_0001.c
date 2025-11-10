


int foo(void){
  union str2 {
    char* name;
    int value;
  } var;
  var.value = 2;
  return var.value;
}
