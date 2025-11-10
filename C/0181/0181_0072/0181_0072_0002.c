




 
typedef int INT_ARRAY[5];

int func2() {
  INT_ARRAY i2;
  i2[0] = 10;
  i2[1] = 500;
  i2[2] = 1000;
  i2[3] = 50000;
  i2[4] = 100000;
  return i2[1];
}
