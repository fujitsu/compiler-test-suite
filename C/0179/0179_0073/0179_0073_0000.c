#include <stdlib.h>
#include <stdio.h>
extern signed short v1 (double, double, signed short, double);
extern signed short (*v2) (double, double, signed short, double);
extern signed int v3 (signed short);
extern signed int (*v4) (signed short);
extern signed short v5 (float, double, signed char, float);
extern signed short (*v6) (float, double, signed char, float);
extern unsigned char v7 (unsigned short);
extern unsigned char (*v8) (unsigned short);
extern unsigned int v9 (unsigned short, unsigned char, float);
extern unsigned int (*v10) (unsigned short, unsigned char, float);

int history[1000];
int history_index = 0;
int trace = -1;
int main() {
{
double v11;
double v12;
signed short v13;
double v14;
signed short v15;
v11=111111.2222222;
v12=111111.2222222;
v13=-111;
v14=111111.2222222;
v15 = v1 (v11, v12, v13, v14);
history[history_index++] = (int)v15;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
