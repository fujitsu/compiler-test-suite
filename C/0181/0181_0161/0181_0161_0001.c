


struct str2{
  char *name;
  int value;
};
typedef struct str2 test2;

int foo(void){
  test2 var;
  var.value = 2;
  return var.value;
}
