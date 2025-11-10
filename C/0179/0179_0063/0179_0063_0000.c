#include <stdlib.h>
#include <stdio.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern double v3 (unsigned char, signed short, unsigned short);
extern double (*v4) (unsigned char, signed short, unsigned short);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern signed int v7 (double, signed short, unsigned int);
extern signed int (*v8) (double, signed short, unsigned int);
extern void v9 (unsigned short);
extern void (*v10) (unsigned short);

int history[1000];
int history_index = 0;
int trace = -1;
int main() {
{
signed short v11;
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
