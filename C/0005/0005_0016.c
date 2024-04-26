#include <stdio.h>

struct person_data{
  int age;
  char name[100];
};

typedef struct person_data PERSON; 
typedef struct person_data PERSON; // OK

int main(void){
  PERSON a;

  a.age = 10;
  
  if(a.age == 10){
    printf("ok\n");
  } else {
    printf("ng\n");
  }

  return 0;
}
