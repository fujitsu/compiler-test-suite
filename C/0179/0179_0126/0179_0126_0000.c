#include <stdlib.h>
#include <stdio.h>
extern float v1 (unsigned int, signed int, unsigned int, signed short);
extern float (*v2) (unsigned int, signed int, unsigned int, signed short);
extern unsigned char v3 (unsigned char);
extern unsigned char (*v4) (unsigned char);
extern void v5 (void);
extern void (*v6) (void);
extern float v7 (signed short, signed char, unsigned short);
extern float (*v8) (signed short, signed char, unsigned short);
extern unsigned short v9 (signed short, float);
extern unsigned short (*v10) (signed short, float);

int history[1000];
int history_index = 0;
int trace = -1;
int main() {
{
unsigned int v11;
signed int v12;
unsigned int v13;
signed short v14;
float v15;
v11=199999;
v12=-199999;
v13=199999;
v14=-111;
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
