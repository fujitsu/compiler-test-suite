static int iarray[2][2][2];

int func2() {
  iarray[0][0][0] = 10;
  iarray[1][0][0] = 500;
  return iarray[1][0][0];
}
