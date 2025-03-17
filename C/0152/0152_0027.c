

#include <stdio.h>

struct data {
  long int array_ref1;
  long int array_ref2;
  long int array_def;
};

int main() {
  struct data test_data;
  long int i;
  
  for (i=0; i<100; i++) {
    test_data.array_ref1 = i;
    test_data.array_ref2 = i + 1;
  }

  
  for (i=0; i<50; i++) {
    test_data.array_def = 
      test_data.array_ref1 + test_data.array_ref2 +
      test_data.array_ref1 + test_data.array_ref2;
  }

  printf("OK\n");

  return 1;
}
