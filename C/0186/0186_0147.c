#include <stdio.h>

void func(long int *array_a, long int *array_b,
	  long int init_value, long int end_value,
	  long int inc_value) {
  long int i;

  for (i=init_value; i<100; i+=2) {              
    array_b[i] = array_a[i+1];
  }
  if (array_b[64] != 65) {
    printf("1. NG %d\n",array_b[64]);
  }
  
  for (i=init_value; i<end_value; i+=2) {        
    array_b[i] = array_a[i+1];
  }
  if (array_b[12] != 13) {
    printf("2. NG %d\n",array_b[12]);
  }


  for (i=init_value; i<end_value; i=i+inc_value) {    
    array_b[i] = array_a[i+1];
  }
  if (array_b[33] != 34) {
    printf("3. NG %d\n",array_b[33]);
  }
  
  for (i=50; i<end_value; i+=2) {                
    array_b[i] = array_a[i+1];
  }
  if (array_b[84] != 85) {
    printf("4. NG %d\n",array_b[84]);
  }

  for (i=50; i<end_value; i=i+inc_value) {       
    array_b[i] = array_a[i+1];
  }
  if (array_b[50] != 51) {
    printf("5. NG %d\n",array_b[50]);
  }
  
  for (i=50; i<100; i=i+inc_value) {            
    array_b[i] = array_a[i+1];
  }
  if (array_b[77] != 78) {
    printf("6. NG %d\n",array_b[77]);
  }
  printf("end\n");
}

int main() {
  long int array_a[100], array_b[100];
  long int i;
  for (i=0; i<100; i++) {
    array_a[i] = i;
  }
  func(array_a, array_b, 0, 100, 1);
  return 0;
}
