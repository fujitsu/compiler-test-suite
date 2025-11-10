#include <stdio.h>
#include <stdlib.h>
extern void v1 (unsigned short, float, unsigned short, unsigned char);
extern void (*v2) (unsigned short, float, unsigned short, unsigned char);
float v3 (void);
float (*v4) (void) = v3;
extern signed int v5 (void);
extern signed int (*v6) (void);
extern double v7 (signed char, signed int, signed int, float);
extern double (*v8) (signed char, signed int, signed int, float);
extern unsigned int v9 (unsigned char, float);
extern unsigned int (*v10) (unsigned char, float);
extern int history[];
extern int history_index;
extern int trace;

float v3 (void) {
for (;;) {
trace++;
switch (trace) {
case 1: return 1.234;
default: abort ();
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;
int main() {
{
unsigned short v11;
float v12;
unsigned short v13;
unsigned char v14;
v11=111;
v12=1.234;
v13=111;
v14='A';
(*v2) (v11, v12, v13, v14);
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
