#include <stdlib.h>
#include <stdio.h>
extern unsigned short v1 (signed char, double, float);
extern unsigned short (*v2) (signed char, double, float);
extern unsigned int v3 (unsigned int, double, signed char, float);
extern unsigned int (*v4) (unsigned int, double, signed char, float);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern double v7 (double, double, unsigned int);
extern double (*v8) (double, double, unsigned int);
extern signed int v9 (signed char, unsigned int);
extern signed int (*v10) (signed char, unsigned int);

int history[1000];
int history_index = 0;
int trace = -1;
int main() {
{
signed char v11;
double v12;
float v13;
unsigned short v14;
v11='a';
v12=111111.2222222;
v13=1.234;
v14 = (*v2) (v11, v12, v13);
history[history_index++] = (int)v14;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
