
extern unsigned int iarray[2];

int func() {
  iarray[0] = 10;
  iarray[1] = 500;
  return (int)iarray[0];
}
