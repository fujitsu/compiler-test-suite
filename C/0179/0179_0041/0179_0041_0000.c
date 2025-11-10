#include <stdlib.h>
#include <stdio.h>
extern double v1 (void);
extern double (*v2) (void);
extern void v3 (unsigned char);
extern void (*v4) (unsigned char);
extern double v5 (double, signed char, unsigned int, signed short);
extern double (*v6) (double, signed char, unsigned int, signed short);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern void v9 (unsigned short, double, signed char);
extern void (*v10) (unsigned short, double, signed char);

int history[1000];
int history_index = 0;
int trace = -1;
int main() {
{
double v11;
v11 = (*v2) ();
history[history_index++] = (int)v11;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
