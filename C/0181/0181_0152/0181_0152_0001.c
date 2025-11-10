


struct str2 {
  char* name;
  int value;
};
typedef struct str2 str;

int foo(void){
  str var;
  var.value = 2;
  return var.value;
}
