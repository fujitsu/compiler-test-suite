#include <stdio.h>
#include <stdlib.h>
extern unsigned char v1 (signed char, unsigned short);
extern unsigned char (*v2) (signed char, unsigned short);
extern void v3 (float);
extern void (*v4) (float);
extern unsigned short v5 (unsigned short, float);
extern unsigned short (*v6) (unsigned short, float);
extern double v7 (float, unsigned int, double);
extern double (*v8) (float, unsigned int, double);
void v9 (unsigned char);
void (*v10) (unsigned char) = v9;
extern int history[];
extern int history_index;
extern int trace;

void v9 (unsigned char v11) {
history[history_index++] = (int)v11;
for (;;) {
trace++;
switch (trace) {
case 9: return;
case 7: return;
case 5: return;
case 1: return;
default: abort ();
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;
int main() {
{
signed char v12;
unsigned short v13;
unsigned char v14;
v12='a';
v13=111;
v14 = (*v2) (v12, v13);
history[history_index++] = (int)v14;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
