#include <stdlib.h>
#include <stdio.h>
extern unsigned int v1 (float, signed short, unsigned short);
extern unsigned int (*v2) (float, signed short, unsigned short);
extern double v3 (signed int, signed char, signed short, unsigned short);
extern double (*v4) (signed int, signed char, signed short, unsigned short);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern void v7 (unsigned int, signed int, signed char, signed int);
extern void (*v8) (unsigned int, signed int, signed char, signed int);
extern signed int v9 (void);
extern signed int (*v10) (void);

int history[1000];
int history_index = 0;
int trace = -1;
int main() {
{
float v11;
signed short v12;
unsigned short v13;
unsigned int v14;
v11=1.234;
v12=-111;
v13=111;
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
