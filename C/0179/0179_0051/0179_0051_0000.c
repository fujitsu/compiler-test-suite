#include <stdio.h>
#include <stdlib.h>
float v1 (signed char);
float (*v2) (signed char) = v1;
extern signed char v3 (double, float);
extern signed char (*v4) (double, float);
extern void v5 (signed char);
extern void (*v6) (signed char);
void v7 (void);
void (*v8) (void) = v7;
extern unsigned int v9 (unsigned short, signed char);
extern unsigned int (*v10) (unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;

void v7 (void) {
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

float v1 (signed char v11) {
history[history_index++] = (int)v11;
for (;;) {
trace++;
switch (trace) {
case 0: return 1.234;
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
float v13;
v12='a';
v13 = (*v2) (v12);
history[history_index++] = (int)v13;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
