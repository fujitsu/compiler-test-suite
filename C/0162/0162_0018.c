#include <stdio.h>
int sub_int(int j, int i) {
  int k;
  k = j+3;
  if(j == 1) {
    j = i+1;
    if(i == 5) {
      j = i+2;
    } else {
      j = i+3;
    }
  } else if( j == 3){
    j = j+1;
    if(i == 5) {
      j = i+2;
    } else {
      j = i+3 ;
    }
  } else {
    j = i+ 5;
  }
  j = k + j;
  return j;
}
unsigned int sub_uint(unsigned int j, unsigned int i) {
  unsigned int k;
  k = j+3;
  if(j == 1) {
    j = i+1;
    if(i == 5) {
      j = i+2;
    } else {
      j = i+3;
    }
  } else if( j == 3){
    j = j+1;
    if(i == 5) {
      j = i+2;
    } else {
      j = i+3 ;
    }
  } else {
    j = i+ 5;
  }
  j = k + j;
  return j;
}
long int sub_lint(long int j, long int i) {
  long int k;
  k = j+3;
  if(j == 1) {
    j = i+1;
    if(i == 5) {
      j = i+2;
    } else {
      j = i+3;
    }
  } else if( j == 3){
    j = j+1;
    if(i == 5) {
      j = i+2;
    } else {
      j = i+3 ;
    }
  } else {
    j = i+ 5;
  }
  j = k + j;
  return j;
}
unsigned long int sub_ulint(unsigned long int j, unsigned long int i) {
  unsigned long int k;
  k = j+3;
  if(j == 1) {
    j = i+1;
    if(i == 5) {
      j = i+2;
    } else {
      j = i+3;
    }
  } else if( j == 3){
    j = j+1;
    if(i == 5) {
      j = i+2;
    } else {
      j = i+3 ;
    }
  } else {
    j = i+ 5;
  }
  j = k + j;
  return j;
}
float sub_float(float j, float i) {
  float k;
  k = j+3;
  if(j == 1.0) {
    j = i+1;
    if(i == 5.0) {
      j = i+2;
    } else {
      j = i+3;
    }
  } else if( j == 3.0){
    j = j+1;
    if(i == 5.0) {
      j = i+2;
    } else {
      j = i+3 ;
    }
  } else {
    j = i+ 5;
  }
  j = k + j;
  return j;
}
double sub_double(double j, double i) {
  double k;
  k = j+3;
  if(j == 1.0) {
    j = i+1;
    if(i == 5.0) {
      j = i+2;
    } else {
      j = i+3;
    }
  } else if( j == 3.0){
    j = j+1;
    if(i == 5.0) {
      j = i+2;
    } else {
      j = i+3 ;
    }
  } else {
    j = i+ 5;
  }
  j = k + j;
  return j;
}
long double sub_ldouble(long double j, long double i) {
  long double k;
  k = j+3;
  if(j == 1.0) {
    j = i+1;
    if(i == 5.0) {
      j = i+2;
    } else {
      j = i+3;
    }
  } else if( j == 3.0){
    j = j+1;
    if(i == 5.0) {
      j = i+2;
    } else {
      j = i+3 ;
    }
  } else {
    j = i+ 5;
  }
  j = k + j;
  return j;
}
short sub_short(short j, short i) {
  short k;
  k = j+3;
  if(j == 1) {
    j = i+1;
    if(i == 5) {
      j = i+2;
    } else {
      j = i+3;
    }
  } else if( j == 3){
    j = j+1;
    if(i == 5) {
      j = i+2;
    } else {
      j = i+3 ;
    }
  } else {
    j = i+ 5;
  }
  j = k + j;
  return j;
}
int main() {
  printf("%s\n",sub_int(2,3) == 13 ? "sub_int:ok":"sub_int:ng");
  printf("%s\n",sub_uint(2,3) == 13 ? "sub_uint:ok":"sub_uint:ng");
  printf("%s\n",sub_lint(2,3) == 13 ? "sub_lint:ok":"sub_lint:ng");
  printf("%s\n",sub_ulint(2,3) == 13 ? "sub_ulint:ok":"sub_ulint:ng");
  printf("%s\n",sub_float(2.0,3.0) == 13.0 ? "sub_float:ok":"sub_float:ng");
  printf("%s\n",sub_double(2.0,3.0) == 13.0 ? "sub_double:ok":"sub_double:ng");
  printf("%s\n",sub_ldouble(2.0,3.0) == 13.0 ? "sub_ldouble:ok":"sub_ldouble:ng");
  printf("%s\n",sub_short(2,3) == 13 ? "sub_short:ok":"sub_short:ng");
}
