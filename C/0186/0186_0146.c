#include <stdio.h>

void func(long int *array_a, long int *array_b) {
  long int i;
  for (i=0; i<100; i++) {
    array_b[i] = array_a[i+1];      
  }
  if (array_b[55] != 56) {
    printf("1. NG %d\n",array_b[55]);
  }

  for (i=0; i<100; i++) {
    array_b[i] = array_a[i+4095];   
  }
  if (array_b[5] != 4100) {
    printf("2. NG %d\n",array_b[5]);
  }

  for (i=0; i<100; i++) {
    array_b[i] = array_a[i+4096];    
  }
  if (array_b[30] != 4126) {
    printf("3. NG %d\n",array_b[30]);
  }

  for (i=10; i>0; i--) {
    array_b[i] = array_a[i-1];       
  }
  if (array_b[7] != 6) {
    printf("4. NG %d\n",array_b[7]);
  }

  for (i=100; i>32; i--) {
    array_b[i] = array_a[i-32];      
  }
  if (array_b[66] != 34) {
    printf("5. NG %d\n",array_b[66]);
  }

  for (i=100; i>33; i--) {
    array_b[i] = array_a[i-33];      
  }
  if (array_b[70] != 37) {
    printf("6. NG %d\n",array_b[70]);
  }

  for (i=0; i<500; i+=31) {          
    array_b[i] = array_a[i+3];
  }
  if (array_b[62] != 65) {
    printf("7. NG %d\n",array_b[62]);
  }
  
  for (i=0; i<500; i+=32) {          
    array_b[i] = array_a[i+4];
  }
  if (array_b[160] != 164) {
    printf("8. NG %d\n",array_b[160]);
  }

  
  for (i=500; i>0; i-=32) {          
    array_b[i] = array_a[i-5];
  }
  if (array_b[372] != 367) {
    printf("9. NG %d\n",array_b[372]);
  }
  
  for (i=500; i>0; i-=33) {          
    array_b[i] = array_a[i-6];
  }
  if (array_b[236] != 230) {
    printf("10. NG %d\n",array_b[236]);
  }
  printf("end\n");
}

int main() {
  long int array_a[5000], array_b[5000];
  long int i;
  for (i=0; i<5000; i++) {
    array_a[i] = i;
  }
  func(array_a, array_b);
  return 0;
}
