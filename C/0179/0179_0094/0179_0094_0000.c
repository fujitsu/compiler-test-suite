#include <stdlib.h>
#include <stdio.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern double v3 (unsigned char, signed char, signed char, signed short);
extern double (*v4) (unsigned char, signed char, signed char, signed short);
extern float v5 (signed int, signed short, unsigned short);
extern float (*v6) (signed int, signed short, unsigned short);
extern signed int v7 (signed int, signed char, unsigned int);
extern signed int (*v8) (signed int, signed char, unsigned int);
extern unsigned char v9 (unsigned short);
extern unsigned char (*v10) (unsigned short);

int history[1000];
int history_index = 0;
int trace = -1;
int main() {
{
unsigned int v11;
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
