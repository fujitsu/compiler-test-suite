


struct str{
  char *name;
  int value;
};
typedef struct str test;

int foo(void){
  test var;
  var.value = 2;
  return var.value;
}
