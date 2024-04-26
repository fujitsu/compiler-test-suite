/***************************************************************************************
 * This is a test program for structure variables with the restrict qualification .
 ***************************************************************************************/

#include <stdio.h>
#include <stdlib.h>

typedef struct s_type{
  char a01;
  int a02;
  unsigned char a03;
  long a04;
  unsigned int a05;
  short a06;
  unsigned short a07;
  unsigned long a08;
  float a09;
  double a10;
  long double a11;
  long long a12;
}type;

void func01(type * restrict s, type * restrict t){
  t->a01 = 1;
  s->a01 = 3;
  t->a01 = t->a01 +1;

  if(t->a01 == 2 && s->a01 == 3){
    puts("ta01&sa01 optimization : ok");
  }else{
    puts("ta01&sa01 optimization : ng");
  }
}


void func02(type * restrict s, type * restrict t){
  t->a02 = 1;
  s->a02 = 3;
  t->a02 = t->a02 +1;

  if(t->a02 == 2 && s->a02 == 3){
    puts("ta02&sa02 optimization : ok");
  }else{
    puts("ta02&sa02 optimization : ng");
  }
}

void func03(type * restrict s, type * restrict t){
  t->a03 = 1;
  s->a03 = 3;
  t->a03 = t->a03 +1;

  if(t->a03 == 2 && s->a03 == 3){
    puts("ta03&sa03 optimization : ok");
  }else{
    puts("ta03&sa03 optimization : ng");
  }
}

void func04(type * restrict s, type * restrict t){
  t->a04 = 1;
  s->a04 = 3;
  t->a04 = t->a04 +1;

  if(t->a04 == 2 && s->a04 == 3){
    puts("ta04&sa04 optimization : ok");
  }else{
    puts("ta04&sa04 optimization : ng");
  }
}

void func05(type * restrict s, type * restrict t){
  t->a05 = 1;
  s->a05 = 3;
  t->a05 = t->a05 +1;

  if(t->a05 == 2 && s->a05 == 3){
    puts("ta05&sa05 optimization : ok");
  }else{
    puts("ta05&sa05 optimization : ng");
  }
}

void func06(type * restrict s, type * restrict t){
  t->a06 = 1;
  s->a06 = 3;
  t->a06 = t->a06 +1;

  if(t->a06 == 2 && s->a06 == 3){
    puts("ta06&sa06 optimization : ok");
  }else{
    puts("ta06&sa06 optimization : ng");
  }
}

void func07(type * restrict s, type * restrict t){
  t->a07 = 1;
  s->a07 = 3;
  t->a07 = t->a07 +1;

  if(t->a07 == 2 && s->a07 == 3){
    puts("ta07&sa07 optimization : ok");
  }else{
    puts("ta07&sa07 optimization : ng");
  }
}

void func08(type * restrict s, type * restrict t){
  t->a08 = 1;
  s->a08 = 3;
  t->a08 = t->a08 +1;

  if(t->a08 == 2 && s->a08 == 3){
    puts("ta08&sa08 optimization : ok");
  }else{
    puts("ta08&sa08 optimization : ng");
  }
}

void func09(type * restrict s, type * restrict t){
  t->a09 = 1.0;
  s->a09 = 3.0;
  t->a09 = t->a09 +1.0;

  if(t->a09 == 2.0 && s->a09 == 3.0){
    puts("ta09&sa09 optimization : ok");
  }else{
    puts("ta09&sa09 optimization : ng");
  }
}

void func10(type * restrict s, type * restrict t){
  t->a10 = 1.0;
  s->a10 = 3.0;
  t->a10 = t->a10 +1.0;

  if(t->a10 == 2.0 && s->a10 == 3.0){
    puts("ta10&sa10 optimization : ok");
  }else{
    puts("ta10&sa10 optimization : ng");
  }
}

void func11(type * restrict s, type * restrict t){
  t->a11 = 1;
  s->a11 = 3;
  t->a11 = t->a11 +1;

  if(t->a11 == 2 && s->a11 == 3){
    puts("ta11&sa11 optimization : ok");
  }else{
    puts("ta11&sa11 optimization : ng");
  }
}

void func12(type * restrict s, type * restrict t){
  t->a12 = 1;
  s->a12 = 3;
  t->a12 = t->a12 +1;

  if(t->a12 == 2 && s->a12 == 3){
    puts("ta12&sa12 optimization : ok");
  }else{
    puts("ta12&sa12 optimization : ng");
  }
}

int main(){
  type *s = (type *)malloc(sizeof(type));
  type *restrict t;

  t = s;
  func01(t, s);
  func02(t, s);
  func03(t, s);
  func04(t, s);
  func05(t, s);
  func06(t, s);
  func07(t, s);
  func08(t, s);
  func09(t, s);
  func10(t, s);
  func11(t, s);
  func12(t, s);

  free(s);
  return 0;
}
