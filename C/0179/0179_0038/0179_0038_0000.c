#include <stdio.h>
#include <stdlib.h>
double v1 (float);
double (*v2) (float) = v1;
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern void v5 (signed short, signed char, signed short);
extern void (*v6) (signed short, signed char, signed short);
extern double v7 (void);
extern double (*v8) (void);
float v9 (unsigned short, unsigned int, unsigned int);
float (*v10) (unsigned short, unsigned int, unsigned int) = v9;
extern int history[];
extern int history_index;
extern int trace;

float v9 (unsigned short v11, unsigned int v12, unsigned int v13) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
history[history_index++] = (int)v13;
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

double v1 (float v14) {
history[history_index++] = (int)v14;
for (;;) {
trace++;
switch (trace) {
case 4: return 111111.2222222;
case 0: 
{
unsigned int v15;
v15 = (*v4) ();
history[history_index++] = (int)v15;
return 111111.2222222;
}
break;
default: abort ();
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;
int main() {
{
float v16;
double v17;
v16=1.234;
v17 = (*v2) (v16);
history[history_index++] = (int)v17;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
