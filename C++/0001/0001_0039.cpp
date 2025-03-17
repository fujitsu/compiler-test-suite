#include <iostream>
#include <array>

#define N 100
#define Master 4950
#define ELEMENT_TYPE int

struct S {
  bool action();
  bool action2();
  bool action3();
  bool action4();
  bool action5();
  bool action6();
  bool action7();
  bool action8();
  bool action9();
  bool action10();
  bool action11();
};

ELEMENT_TYPE dummy[10000];

static ELEMENT_TYPE *begin() {
  return dummy;
}

static ELEMENT_TYPE *end() {
  return &dummy[10000-1];
}

using namespace std;


bool S::action() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  const int max = N;
  array<ELEMENT_TYPE,max> arr;
  array<ELEMENT_TYPE,max>::iterator it;  

  for (int i=0; i<N; ++i) {
    arr[i] = i;
  }
  for (it = arr.begin(); it != end(); ++it) {
    m += *it;
  }

  if (m != Master) {
    flg = true;
  }

  return flg;
}


bool S::action2() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  const int max = N;
  array<ELEMENT_TYPE,max> arr;
  array<ELEMENT_TYPE,max>::iterator it;  

  for (int i=0; i<N; ++i) {
    arr[i] = i;
  }
  for (it = arr.begin(); it != (ELEMENT_TYPE *)10000; ++it) {
    m += *it;
  }

  if (m != Master) {
    flg = true;
  }

  return flg;
}


bool S::action3() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  const int max = N;
  array<ELEMENT_TYPE,max> arr,arr2;
  array<ELEMENT_TYPE,max>::iterator it;  

  for (int i=0; i<N; ++i) {
    arr[i] = i;
  }
  for (it = arr.begin(); it != arr2.end(); ++it) {
    m += *it;
  }

  if (m != Master) {
    flg = true;
  }

  return flg;
}


bool S::action4() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  const int max = N;
  array<ELEMENT_TYPE,max> arr;
  array<ELEMENT_TYPE,max>::iterator it;  

  for (int i=0; i<N; ++i) {
    arr[i] = i;
  }
  for (it = begin(); it != arr.end(); ++it) {
    m += *it;
  }

  if (m != Master) {
    flg = true;
  }

  return flg;
}


bool S::action5() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  const int max = N;
  array<ELEMENT_TYPE,max> arr;
  array<ELEMENT_TYPE,max>::iterator it;

  for (int i=0; i<N; ++i) {
    arr[i] = i;
  }
  for (it = begin(); it != end(); ++it) {
    m += *it;
  }

  if (m != Master) {
    flg = true;
  }

  return flg;
}


bool S::action6() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  const int max = N;
  array<ELEMENT_TYPE,max> arr;
  array<ELEMENT_TYPE,max>::iterator it;  

  for (int i=0; i<N; ++i) {
    arr[i] = i;
  }
  for (it = begin(); it != (ELEMENT_TYPE *)10000; ++it) {
    m += *it;
  }

  if (m != Master) {
    flg = true;
  }

  return flg;
}


bool S::action7() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  const int max = N;
  array<ELEMENT_TYPE,max> arr;
  array<ELEMENT_TYPE,max>::iterator it;  

  for (int i=0; i<N; ++i) {
    arr[i] = i;
  }
  for (it = begin(); it != arr.end(); ++it) {
    m += *it;
  }

  if (m != Master) {
    flg = true;
  }

  return flg;
}


bool S::action8() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  const int max = N;
  array<ELEMENT_TYPE,max> arr;
  array<ELEMENT_TYPE,max>::iterator it;  

  for (int i=0; i<N; ++i) {
    arr[i] = i;
  }
  for (it = (ELEMENT_TYPE *)10000; it != arr.end(); ++it) {
    m += *it;
  }

  if (m != Master) {
    flg = true;
  }

  return flg;
}


bool S::action9() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  const int max = N;
  array<ELEMENT_TYPE,max> arr;
  array<ELEMENT_TYPE,max>::iterator it;  

  for (int i=0; i<N; ++i) {
    arr[i] = i;
  }
  for (it = (ELEMENT_TYPE *)10000; it != end(); ++it) {
    m += *it;
  }

  if (m != Master) {
    flg = true;
  }

  return flg;
}


bool S::action10() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  const int max = N;
  array<ELEMENT_TYPE,max> arr;
  array<ELEMENT_TYPE,max>::iterator it;  

  for (int i=0; i<N; ++i) {
    arr[i] = i;
  }
  for (it = (ELEMENT_TYPE *)10000; it != (ELEMENT_TYPE *)20000; ++it) {
    m += *it;
  }

  if (m != Master) {
    flg = true;
  }

  return flg;
}


bool S::action11() {
  bool flg = false;
  ELEMENT_TYPE m = 0;

  const int max = N;
  array<ELEMENT_TYPE,max> arr;
  array<ELEMENT_TYPE,max>::iterator it;  

  for (int i=0; i<N; ++i) {
    arr[i] = i;
  }
  for (it = (ELEMENT_TYPE *)10000; it != (ELEMENT_TYPE *)20000; ++it) {
    m += *it;
  }

  if (m != Master) {
    flg = true;
  }

  return flg;
}

int main() {
  S obj;

  if (obj.action() == true) {
    printf("NG\n");
  } 
  if (obj.action2() == true) {
    printf("NG\n");
  } 
  if (obj.action3() == true) {
    printf("NG\n");
  } 
  if (obj.action4() == true) {
    printf("NG\n");
  } 
  if (obj.action5() == true) {
    printf("NG\n");
  } 
  if (obj.action6() == true) {
    printf("NG\n");
  } 
  if (obj.action7() == true) {
    printf("NG\n");
  } 
  if (obj.action8() == true) {
    printf("NG\n");
  } 
  if (obj.action9() == true) {
    printf("NG\n");
  } 
  if (obj.action10() == true) {
    printf("NG\n");
  } 
  if (obj.action11() == true) {
    printf("NG\n");
  } 

  printf("OK\n");

  return 0;
}
