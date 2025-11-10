#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern float v3 (void);
extern float (*v4) (void);
extern double v5 (float, unsigned int);
extern double (*v6) (float, unsigned int);
unsigned short v7 (float, unsigned char);
unsigned short (*v8) (float, unsigned char) = v7;
extern void v9 (unsigned int, float, unsigned short, float);
extern void (*v10) (unsigned int, float, unsigned short, float);
extern int history[];
extern int history_index;
extern int trace;

unsigned short v7 (float v11, unsigned char v12) {
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
unsigned short v13;
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
