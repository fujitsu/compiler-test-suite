#include <stdio.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern struct ss1 v5 (unsigned short, signed short);
extern struct ss1 (*v6) (unsigned short, signed short);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v13 = 4156271331U;
union uu0 v12 = {3921579158U };
union uu0 v11 = {2735119477U };

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
unsigned short v16;
v16 = v1 ();
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
