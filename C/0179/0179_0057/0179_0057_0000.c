#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (unsigned short, signed char);
extern signed int (*v2) (unsigned short, signed char);
extern void v3 (float, unsigned char);
extern void (*v4) (float, unsigned char);
unsigned short v5 (float);
unsigned short (*v6) (float) = v5;
extern void v7 (void);
extern void (*v8) (void);
extern signed char v9 (unsigned short, signed short, signed int);
extern signed char (*v10) (unsigned short, signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;

unsigned short v5 (float v11) {
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
signed char v13;
signed int v14;
v12=111;
v13='a';
v14 = v1 (v12, v13);
history[history_index++] = (int)v14;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
