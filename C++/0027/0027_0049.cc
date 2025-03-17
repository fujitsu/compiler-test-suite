#include <stdio.h>

#define SIZE 100

#define INCREMENTAL_VALUE_TYPE unsigned long
#define ARRAY_A_TYPE unsigned int
#define ARRAY_B_TYPE unsigned int

typedef enum test_num {
  INIT,
  PREPOSITION_INCREMENT,
  POSTPOSITION_INCREMENT,
  PREPOSITION_DECREMENT,
  POSTPOSITION_DECREMENT,
} TEST_NUMBER;

void init(ARRAY_A_TYPE a[], ARRAY_B_TYPE b[]);
int check(ARRAY_A_TYPE a[], ARRAY_B_TYPE b[], TEST_NUMBER n);

void loop_parallel_preposition_increment(ARRAY_A_TYPE a[], ARRAY_B_TYPE b[]) {
  INCREMENTAL_VALUE_TYPE i;
  for (i = 0; i < SIZE; i++) {
    a[i] += i;
  }
  for (i = 0; i < SIZE; i++) {
    b[i] += i;
  }
}
void loop_parallel_postposition_increment(ARRAY_A_TYPE a[], ARRAY_B_TYPE b[]) {
  INCREMENTAL_VALUE_TYPE i;
  for (i = 0; i < SIZE; ++i) {
    a[i] += i;
  }
  for (i = 0; i < SIZE; ++i) {
    b[i] += i;
  }
}
void loop_parallel_preposition_decrement(ARRAY_A_TYPE a[], ARRAY_B_TYPE b[]) {
  INCREMENTAL_VALUE_TYPE i;
  for (i = SIZE - 1; i > 0; i--) {
    a[i] += i;
  }
  for (i = SIZE - 1; i > 0; i--) {
    b[i] += i;
  }
}
void loop_parallel_postposition_decrement(ARRAY_A_TYPE a[], ARRAY_B_TYPE b[]) {
  INCREMENTAL_VALUE_TYPE i;
  for (i = SIZE - 1; i > 0; --i) {
    a[i] += i;
  }
  for (i = SIZE - 1; i > 0; --i) {
    b[i] += i;
  }
}

void init(ARRAY_A_TYPE a[], ARRAY_B_TYPE b[]) {
  unsigned int i;
  for (i = 0; i < SIZE; i++) {
    a[i] = i;
  }
  for (i = 0; i < SIZE; i++) {
    b[i] = i;
  }
}

int check(ARRAY_A_TYPE a[], ARRAY_B_TYPE b[], TEST_NUMBER n) {
  unsigned int i;
  int check_count;
  check_count = 0;
  for (i = 0; i < SIZE; i++) {
    if (a[i] != b[i]) {
      printf("a[%d] = %d, b[%d] = %d, NG NUM %d\n", i, a[i], i, b[i], n);
      check_count++;
    }
  }
  return check_count;
}

int main() {
  ARRAY_A_TYPE a[SIZE];
  ARRAY_B_TYPE b[SIZE];
  int error_count;

  error_count = 0;

  init(a, b);
  error_count += check(a, b, INIT);

  init(a, b);
  loop_parallel_preposition_increment(a, b);
  error_count += check(a, b, PREPOSITION_INCREMENT);

  init(a, b);
  loop_parallel_postposition_increment(a, b);
  error_count += check(a, b, POSTPOSITION_INCREMENT);

  init(a, b);
  loop_parallel_preposition_decrement(a, b);
  error_count += check(a, b, PREPOSITION_DECREMENT);

  init(a, b);
  loop_parallel_postposition_decrement(a, b);
  error_count += check(a, b, POSTPOSITION_DECREMENT);

  if (error_count == 0) {
    printf(" *** TEST OK ***\n");
  }
  return 0;
}
