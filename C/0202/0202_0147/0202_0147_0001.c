int n = 10;
int m = 20;
extern void fcompat();
extern void fvla(int m, int C[m][m]);
int 
main (void)
{
  int c[m][m];
  fcompat();
  fvla(m,c);
}
