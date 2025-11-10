#include <stdio.h>

int ifgoto_const2() {
  int i = 0;
  int c = 0;
  int j = 0;

 LOOP1:
  ++i;
 LOOP2:
  c = c + 1;
  
  ++j;
  if (j < 100) {
    goto LOOP2;
  }
  j = 0;
  if (i < 100) {
    goto LOOP1;
  }
  
  return c;
  
}

int ifgoto_var2(int n) {
  int i = 0;
  int c = 0;
  int j = 0;

 LOOP1:
  ++i;
 LOOP2:
  c = c + 1;
  
  ++j;
  if (j < n) {
    goto LOOP2;
  }
  j = 0;
  if (i < n) {
    goto LOOP1;
  }
  
  return c;

}
