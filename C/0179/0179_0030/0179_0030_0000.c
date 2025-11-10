#include <stdlib.h>
#include <stdio.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern unsigned int v5 (float, signed int, float);
extern unsigned int (*v6) (float, signed int, float);
extern float v7 (signed int, double, float, unsigned char);
extern float (*v8) (signed int, double, float, unsigned char);
extern unsigned short v9 (signed char, signed short, signed int, unsigned short);
extern unsigned short (*v10) (signed char, signed short, signed int, unsigned short);

int history[1000];
int history_index = 0;
int trace = -1;
int main() {
{
signed char v11;
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
