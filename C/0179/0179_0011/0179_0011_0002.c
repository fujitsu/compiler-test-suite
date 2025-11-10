#include <stdio.h>

int ifgoto_const3() {
  int c = 0;
  int i = 0;
  int j = 0;
  int k = 0;

 LOOP1:
  ++i;
 LOOP2:
  ++j;
 LOOP3:
  c = c + 1;
  
  ++k;
  if (k < 100) {
    goto LOOP3;
  }
  k = 0;
  if (j < 100) {
    goto LOOP2;
  }
  j = 0;
  if (i < 100) {
    goto LOOP1;
  }
  
  return c;
  
}

int ifgoto_var3(int n) {
  int c = 0;
  int i = 0;
  int j = 0;
  int k = 0;

 LOOP1:
  ++i;
 LOOP2:
  ++j;
 LOOP3:
  c = c + 1;
  
  ++k;
  if (k < n) {
    goto LOOP3;
  }
  k = 0;
  if (j < n) {
    goto LOOP2;
  }
  j = 0;
  if (i < n) {
    goto LOOP1;
  }

  return c;

}
