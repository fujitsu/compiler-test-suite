#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern unsigned int v3 (signed char);
extern unsigned int (*v4) (signed char);
extern double v5 (signed short, signed char);
extern double (*v6) (signed short, signed char);
unsigned short v7 (double, unsigned char);
unsigned short (*v8) (double, unsigned char) = v7;
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;

unsigned short v7 (double v11, unsigned char v12) {
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
signed int v13;
v13 = (*v2) ();
history[history_index++] = (int)v13;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
