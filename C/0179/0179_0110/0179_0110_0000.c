#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (float, signed int, signed char);
extern signed char (*v2) (float, signed int, signed char);
extern float v3 (signed int, unsigned int);
extern float (*v4) (signed int, unsigned int);
extern void v5 (signed short, unsigned short, signed short, double);
extern void (*v6) (signed short, unsigned short, signed short, double);
extern signed char v7 (signed int, signed short);
extern signed char (*v8) (signed int, signed short);
unsigned int v9 (unsigned int, float);
unsigned int (*v10) (unsigned int, float) = v9;
extern int history[];
extern int history_index;
extern int trace;

unsigned int v9 (unsigned int v11, float v12) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
for (;;) {
trace++;
switch (trace) {
case 11: return 199999;
case 9: 
{
signed int v13;
signed short v14;
signed char v15;
v13=-199999;
v14=-111;
v15 = v7 (v13, v14);
history[history_index++] = (int)v15;
return 199999;
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
signed int v17;
signed char v18;
signed char v19;
v16=1.234;
v17=-199999;
v18='a';
v19 = v1 (v16, v17, v18);
history[history_index++] = (int)v19;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
