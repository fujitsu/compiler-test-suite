#include <stdio.h>

#define SIZE 100

#define INCREMENTAL_VALUE_TYPE_1 int
#define INCREMENTAL_VALUE_TYPE_2 unsigned int
#define ARRAY_A_TYPE unsigned int
#define ARRAY_B_TYPE unsigned int

typedef enum test_num {
  INIT,
  INCREMENT_1,
  DECREMENT_1,
  PREPOSITION_INCREMENT_1,
  PREPOSITION_DECREMENT_1,
  INCREMENT_2,
  DECREMENT_2,
  PREPOSITION_INCREMENT_2,
  PREPOSITION_DECREMENT_2,
} TEST_NUMBER;

void init(ARRAY_A_TYPE a[SIZE][SIZE], ARRAY_B_TYPE b[SIZE][SIZE]);
int check(ARRAY_A_TYPE a[SIZE][SIZE], ARRAY_B_TYPE b[SIZE][SIZE],
          TEST_NUMBER n);

void loop_parallel_increment_1(ARRAY_A_TYPE a[SIZE][SIZE],
                               ARRAY_B_TYPE b[SIZE][SIZE]) {
  INCREMENTAL_VALUE_TYPE_1 i, j;
  for (i = 0; i < SIZE; i++) {
    for (j = 0; j < SIZE; j++) {
      a[i][j] += i;
    }
  }
  for (i = 0; i < SIZE; i++) {
    for (j = 0; j < SIZE; j++) {
      b[i][j] += i;
    }
  }
}
void loop_parallel_decrement_1(ARRAY_A_TYPE a[SIZE][SIZE],
                               ARRAY_B_TYPE b[SIZE][SIZE]) {
  INCREMENTAL_VALUE_TYPE_1 i, j;
  for (i = SIZE - 1; i > 0; i--) {
    for (j = SIZE - 1; j > 0; j--) {
      a[i][j] += i;
    }
  }
  for (i = SIZE - 1; i > 0; i--) {
    for (j = SIZE - 1; j > 0; j--) {
      b[i][j] += i;
    }
  }
}

void loop_parallel_preposition_increment_1(ARRAY_A_TYPE a[SIZE][SIZE],
                                           ARRAY_B_TYPE b[SIZE][SIZE]) {
  INCREMENTAL_VALUE_TYPE_1 i, j;
  for (i = 0; i < SIZE; i++) {
    for (j = SIZE - 1; j > 0; j--) {
      a[i][j] += i;
    }
  }
  for (i = 0; i < SIZE; i++) {
    for (j = SIZE - 1; j > 0; j--) {
      b[i][j] += i;
    }
  }
}
void loop_parallel_preposition_decrement_1(ARRAY_A_TYPE a[SIZE][SIZE],
                                           ARRAY_B_TYPE b[SIZE][SIZE]) {
  INCREMENTAL_VALUE_TYPE_1 i, j;
  for (i = SIZE - 1; i > 0; i--) {
    for (j = 0; j < SIZE; j++) {
      a[i][j] += i;
    }
  }
  for (i = SIZE - 1; i > 0; i--) {
    for (j = 0; j < SIZE; j++) {
      b[i][j] += i;
    }
  }
}

void loop_parallel_increment_2(ARRAY_A_TYPE a[SIZE][SIZE],
                               ARRAY_B_TYPE b[SIZE][SIZE]) {
  INCREMENTAL_VALUE_TYPE_1 i;
  INCREMENTAL_VALUE_TYPE_2 j;
  for (i = 0; i < SIZE; i++) {
    for (j = 0; j < SIZE; j++) {
      a[i][j] += i;
    }
  }
  for (i = 0; i < SIZE; i++) {
    for (j = 0; j < SIZE; j++) {
      b[i][j] += i;
    }
  }
}
void loop_parallel_decrement_2(ARRAY_A_TYPE a[SIZE][SIZE],
                               ARRAY_B_TYPE b[SIZE][SIZE]) {
  INCREMENTAL_VALUE_TYPE_1 i;
  INCREMENTAL_VALUE_TYPE_2 j;
  for (i = SIZE - 1; i > 0; i--) {
    for (j = SIZE - 1; j > 0; j--) {
      a[i][j] += i;
    }
  }
  for (i = SIZE - 1; i > 0; i--) {
    for (j = SIZE - 1; j > 0; j--) {
      b[i][j] += i;
    }
  }
}

void loop_parallel_preposition_increment_2(ARRAY_A_TYPE a[SIZE][SIZE],
                                           ARRAY_B_TYPE b[SIZE][SIZE]) {
  INCREMENTAL_VALUE_TYPE_1 i;
  INCREMENTAL_VALUE_TYPE_2 j;
  for (i = 0; i < SIZE; i++) {
    for (j = SIZE - 1; j > 0; j--) {
      a[i][j] += i;
    }
  }
  for (i = 0; i < SIZE; i++) {
    for (j = SIZE - 1; j > 0; j--) {
      b[i][j] += i;
    }
  }
}
void loop_parallel_preposition_decrement_2(ARRAY_A_TYPE a[SIZE][SIZE],
                                           ARRAY_B_TYPE b[SIZE][SIZE]) {
  INCREMENTAL_VALUE_TYPE_1 i;
  INCREMENTAL_VALUE_TYPE_2 j;
  for (i = SIZE - 1; i > 0; i--) {
    for (j = 0; j < SIZE; j++) {
      a[i][j] += i;
    }
  }
  for (i = SIZE - 1; i > 0; i--) {
    for (j = 0; j < SIZE; j++) {
      b[i][j] += i;
    }
  }
}

void init(ARRAY_A_TYPE a[SIZE][SIZE], ARRAY_B_TYPE b[SIZE][SIZE]) {
  unsigned int i, j;
  for (i = 0; i < SIZE; i++) {
    for (j = 0; j < SIZE; j++) {
      a[i][j] = i;
    }
  }
  for (i = 0; i < SIZE; i++) {
    for (j = 0; j < SIZE; j++) {
      b[i][j] = i;
    }
  }
}

int check(ARRAY_A_TYPE a[SIZE][SIZE], ARRAY_B_TYPE b[SIZE][SIZE],
          TEST_NUMBER n) {
  unsigned int i, j;
  int check_count;
  check_count = 0;
  for (i = 0; i < SIZE; i++) {
    for (j = 0; j < SIZE; j++) {
      if (a[i][j] != b[i][j]) {
        printf("a[%d] = %d, b[%d] = %d, NG NUM %d\n", i, a[i][j], i, b[i][j],
               n);
        check_count++;
      }
    }
  }
  return check_count;
}

int main() {
  ARRAY_A_TYPE a[SIZE][SIZE];
  ARRAY_B_TYPE b[SIZE][SIZE];
  int error_count;

  error_count = 0;

  init(a, b);
  error_count += check(a, b, INIT);

  init(a, b);
  loop_parallel_increment_1(a, b);
  error_count += check(a, b, INCREMENT_1);

  init(a, b);
  loop_parallel_decrement_1(a, b);
  error_count += check(a, b, DECREMENT_1);

  init(a, b);
  loop_parallel_preposition_increment_1(a, b);
  error_count += check(a, b, PREPOSITION_INCREMENT_1);

  init(a, b);
  loop_parallel_preposition_decrement_1(a, b);
  error_count += check(a, b, PREPOSITION_DECREMENT_1);

  init(a, b);
  loop_parallel_increment_2(a, b);
  error_count += check(a, b, INCREMENT_2);

  init(a, b);
  loop_parallel_decrement_2(a, b);
  error_count += check(a, b, DECREMENT_2);

  init(a, b);
  loop_parallel_preposition_increment_2(a, b);
  error_count += check(a, b, PREPOSITION_INCREMENT_2);

  init(a, b);
  loop_parallel_preposition_decrement_2(a, b);
  error_count += check(a, b, PREPOSITION_DECREMENT_2);

  if (error_count == 0) {
    printf(" *** TEST OK ***\n");
  }
  return 0;
}
