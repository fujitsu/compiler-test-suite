#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (unsigned short, signed char, signed int, float);
extern unsigned short (*v2) (unsigned short, signed char, signed int, float);
extern void v3 (double, signed int);
extern void (*v4) (double, signed int);
signed short v5 (signed char, float);
signed short (*v6) (signed char, float) = v5;
extern signed int v7 (float, float);
extern signed int (*v8) (float, float);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;

signed short v5 (signed char v11, float v12) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
for (;;) {
trace++;
switch (trace) {
case 6: return -111;
case 4: return -111;
case 1: return -111;
default: abort ();
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;
int main() {
{
unsigned short v13;
signed char v14;
signed int v15;
float v16;
unsigned short v17;
v13=111;
v14='a';
v15=-199999;
v16=1.234;
v17 = (*v2) (v13, v14, v15, v16);
history[history_index++] = (int)v17;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
