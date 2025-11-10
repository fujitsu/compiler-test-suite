#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (unsigned short, signed int, unsigned int, signed char);
extern unsigned char (*v2) (unsigned short, signed int, unsigned int, signed char);
extern unsigned int v3 (double, unsigned int, signed char, double);
extern unsigned int (*v4) (double, unsigned int, signed char, double);
extern unsigned char v5 (signed char, unsigned short, signed int);
extern unsigned char (*v6) (signed char, unsigned short, signed int);
extern signed int v7 (unsigned char, double);
extern signed int (*v8) (unsigned char, double);
unsigned int v9 (unsigned char);
unsigned int (*v10) (unsigned char) = v9;
extern int history[];
extern int history_index;
extern int trace;

unsigned int v9 (unsigned char v11) {
history[history_index++] = (int)v11;
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
unsigned short v12;
signed int v13;
unsigned int v14;
signed char v15;
unsigned char v16;
v12=111;
v13=-199999;
v14=199999;
v15='a';
v16 = (*v2) (v12, v13, v14, v15);
history[history_index++] = (int)v16;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
