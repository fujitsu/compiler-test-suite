


struct str2{
  char *name;
  int value;
};
typedef struct str2 test;

int foo(void){
  test var;
  var.value = 2;
  return var.value;
}
