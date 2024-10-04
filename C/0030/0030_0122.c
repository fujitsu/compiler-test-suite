struct AAA {
  long A;
  double B;
};
union BBB {
  long A;
  double B;
};
int main()
{
  int A = 4;

  int C[A][3];
  long C1[A][3];
  long long C2[A][3];
  float C3[A][3];
  double C4[A][3];
  long double C5[A][3];
  char * C6[A][3];
  short C7[A][3];
  unsigned C8[A][3];
  signed C9[A][3];
  struct AAA C10[A][3];
  union BBB C11[A][3];
  _Bool C12[A][3]; 
  _Complex C13[A][3]; 
  _Complex float C14[A][3]; 
  _Complex double C15[A][3]; 
}

