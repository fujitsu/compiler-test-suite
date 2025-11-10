#include <stdio.h>
#include <stdlib.h>
extern signed char v1 (unsigned int, signed short);
extern signed char (*v2) (unsigned int, signed short);
extern signed char v3 (double, signed short, unsigned short);
extern signed char (*v4) (double, signed short, unsigned short);
double v5 (signed int);
double (*v6) (signed int) = v5;
extern unsigned char v7 (double, double, unsigned char);
extern unsigned char (*v8) (double, double, unsigned char);
extern float v9 (signed short, signed char, float, unsigned char);
extern float (*v10) (signed short, signed char, float, unsigned char);
extern int history[];
extern int history_index;
extern int trace;

double v5 (signed int v11) {
history[history_index++] = (int)v11;
for (;;) {
trace++;
switch (trace) {
case 5: return 111111.2222222;
case 3: return 111111.2222222;
case 1: 
{
double v12;
double v13;
unsigned char v14;
unsigned char v15;
v12=111111.2222222;
v13=111111.2222222;
v14='A';
v15 = (*v8) (v12, v13, v14);
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
unsigned int v16;
signed short v17;
signed char v18;
v16=199999;
v17=-111;
v18 = (*v2) (v16, v17);
history[history_index++] = (int)v18;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
