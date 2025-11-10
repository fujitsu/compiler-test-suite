#include <stdio.h>
#include <stdlib.h>
extern void v1 (signed int);
extern void (*v2) (signed int);
extern float v3 (void);
extern float (*v4) (void);
float v5 (double, signed int);
float (*v6) (double, signed int) = v5;
extern float v7 (void);
extern float (*v8) (void);
extern float v9 (double);
extern float (*v10) (double);
extern int history[];
extern int history_index;
extern int trace;

float v5 (double v11, signed int v12) {
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
v13=-199999;
(*v2) (v13);
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
