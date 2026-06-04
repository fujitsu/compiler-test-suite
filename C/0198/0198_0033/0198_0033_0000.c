#include <stdio.h>

union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
extern void v1 (void);
extern void (*v2) (void);
extern void v9 (struct ss0, struct ss0, signed int, unsigned char);
extern void (*v10) (struct ss0, struct ss0, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
double v13 = -4866707737871805308.39420;
unsigned short v12 = 35972;
union uu1 v11 = {-1668190627 };

int history[1000];
int history_index = 0;
int trace = -1;

signed int main(void)
{
do {
{
(*v2) ();
}
} while (trace < 11);
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
return 0;
}
}
