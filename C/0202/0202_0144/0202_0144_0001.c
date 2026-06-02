int n = 10;
int m = 20;
extern void fcompat(void);
extern void fvla();
int 
main (void)
{
  int c[m][m];
  fcompat();
  fvla(m,c);
}
