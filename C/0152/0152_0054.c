

#include <stdio.h>

struct data {
  long int array_ref1;
  long int array_ref2;
  long int array_def;
};

struct data test_data;

int main() {
  long int i;
  
  for (i=0; i<100; i++) {
    test_data.array_ref1 = i;
    test_data.array_ref2 = i+1;
  }

  
  for (i=0; i<50; i++) {
    test_data.array_def =
      test_data.array_ref1 + test_data.array_ref2;
  }

  if (test_data.array_def == 199) {
    printf("OK\n");
  } else {
    printf("NG(%d)\n",test_data.array_def);
  }
  return 1;
}
