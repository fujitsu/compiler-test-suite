#include <stdio.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern signed int v1 (void);
extern signed int (*v2) (void);
extern struct ss1 v5 (struct ss1, unsigned int, struct ss0, unsigned int);
extern struct ss1 (*v6) (struct ss1, unsigned int, struct ss0, unsigned int);
extern struct ss1 v9 (signed char, unsigned char);
extern struct ss1 (*v10) (signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v13 = 2351;
union uu0 v12 = {1348243285U };
unsigned char v11 = 54;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
signed int v16;
v16 = (*v2) ();
history[history_index++] = (int)v16;
}
} while (trace < 16);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
