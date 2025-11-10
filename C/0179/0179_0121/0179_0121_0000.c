#include <stdlib.h>
#include <stdio.h>
extern signed short v1 (unsigned short, unsigned int, float);
extern signed short (*v2) (unsigned short, unsigned int, float);
extern signed short v3 (unsigned short, double, unsigned short);
extern signed short (*v4) (unsigned short, double, unsigned short);
extern float v5 (float, unsigned char, unsigned int);
extern float (*v6) (float, unsigned char, unsigned int);
extern unsigned short v7 (signed short);
extern unsigned short (*v8) (signed short);
extern unsigned short v9 (double, signed char, float);
extern unsigned short (*v10) (double, signed char, float);

int history[1000];
int history_index = 0;
int trace = -1;
int main() {
{
unsigned short v11;
unsigned int v12;
float v13;
signed short v14;
v11=111;
v12=199999;
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
