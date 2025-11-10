#include <stdlib.h>
#include <stdio.h>
extern unsigned int v1 (unsigned short);
extern unsigned int (*v2) (unsigned short);
extern signed short v3 (unsigned short, unsigned char, double);
extern signed short (*v4) (unsigned short, unsigned char, double);
extern float v5 (unsigned char);
extern float (*v6) (unsigned char);
extern unsigned int v7 (unsigned short, signed int, float);
extern unsigned int (*v8) (unsigned short, signed int, float);
extern signed short v9 (unsigned short, signed char, float);
extern signed short (*v10) (unsigned short, signed char, float);

int history[1000];
int history_index = 0;
int trace = -1;
int main() {
{
unsigned short v11;
unsigned int v12;
v11=111;
v12 = (*v2) (v11);
history[history_index++] = (int)v12;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
