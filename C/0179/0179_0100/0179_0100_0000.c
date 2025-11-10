#include <stdio.h>
#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern double v3 (void);
extern double (*v4) (void);
float v5 (unsigned int, double);
float (*v6) (unsigned int, double) = v5;
extern signed short v7 (unsigned char, unsigned int);
extern signed short (*v8) (unsigned char, unsigned int);
extern float v9 (signed short, signed int);
extern float (*v10) (signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;

float v5 (unsigned int v11, double v12) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
for (;;) {
trace++;
switch (trace) {
case 12: return 1.234;
case 10: return 1.234;
case 6: 
{
unsigned char v13;
unsigned int v14;
signed short v15;
v13='A';
v14=199999;
v15 = (*v8) (v13, v14);
history[history_index++] = (int)v15;
return 1.234;
}
break;
case 2: 
{
unsigned char v16;
unsigned int v17;
signed short v18;
v16='A';
v17=199999;
v18 = (*v8) (v16, v17);
history[history_index++] = (int)v18;
return 1.234;
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
signed int v19;
v19 = (*v2) ();
history[history_index++] = (int)v19;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
