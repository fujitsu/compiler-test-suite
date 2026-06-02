#include <stdio.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern signed short v1 (double);
extern signed short (*v2) (double);
extern union uu1 v3 (void);
extern union uu1 (*v4) (void);
extern struct ss0 v7 (struct ss0);
extern struct ss0 (*v8) (struct ss0);
extern int history[];
extern int history_index;
extern int trace;
union uu0 v13 = {4233905281U };
signed int v12 = -1042919854;
signed char v11 = 34;

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
double v16;
signed short v17;

#if defined(__aarch64__)
v16 = -2147483648;
#else
v16 = -2997488298713701230.39975;
#endif
v17 = (*v2) (v16);
history[history_index++] = (int)v17;
}
} while (trace < 12);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
