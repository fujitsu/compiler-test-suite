#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (signed short, double, signed char);
extern signed char (*v2) (signed short, double, signed char);
unsigned short v3 (double, unsigned char);
unsigned short (*v4) (double, unsigned char) = v3;
extern void v5 (unsigned short, unsigned char, signed int, double);
extern void (*v6) (unsigned short, unsigned char, signed int, double);
extern signed int v7 (signed short);
extern signed int (*v8) (signed short);
extern signed int v9 (unsigned int);
extern signed int (*v10) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;

unsigned short v3 (double v11, unsigned char v12) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;
int main() {
{
signed short v13;
double v14;
signed char v15;
signed char v16;
v13=-111;
v14=111111.2222222;
v15='a';
v16 = (*v2) (v13, v14, v15);
history[history_index++] = (int)v16;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
