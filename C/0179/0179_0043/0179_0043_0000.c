#include <stdlib.h>
#include <stdio.h>
extern float v1 (signed char, unsigned int);
extern float (*v2) (signed char, unsigned int);
extern float v3 (void);
extern float (*v4) (void);
extern float v5 (unsigned short);
extern float (*v6) (unsigned short);
extern unsigned int v7 (signed short);
extern unsigned int (*v8) (signed short);
extern unsigned short v9 (unsigned int, double, float, signed short);
extern unsigned short (*v10) (unsigned int, double, float, signed short);

int history[1000];
int history_index = 0;
int trace = -1;
int main() {
{
signed char v11;
unsigned int v12;
float v13;
v11='a';
v12=199999;
v13 = (*v2) (v11, v12);
history[history_index++] = (int)v13;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
