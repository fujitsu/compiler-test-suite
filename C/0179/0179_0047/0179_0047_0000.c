#include <stdio.h>
#include <stdlib.h>
double v1 (signed short, signed int, signed short);
double (*v2) (signed short, signed int, signed short) = v1;
extern unsigned char v3 (signed char, unsigned short);
extern unsigned char (*v4) (signed char, unsigned short);
extern unsigned int v5 (signed char, unsigned int, float, unsigned short);
extern unsigned int (*v6) (signed char, unsigned int, float, unsigned short);
extern signed short v7 (signed char, unsigned short, double);
extern signed short (*v8) (signed char, unsigned short, double);
extern double v9 (float);
extern double (*v10) (float);
extern int history[];
extern int history_index;
extern int trace;

double v1 (signed short v11, signed int v12, signed short v13) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
history[history_index++] = (int)v13;
for (;;) {
trace++;
switch (trace) {
case 2: return 111111.2222222;
case 0: 
{
signed char v14;
unsigned short v15;
unsigned char v16;
v14='a';
v15=111;
v16 = (*v4) (v14, v15);
history[history_index++] = (int)v16;
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
signed short v17;
signed int v18;
signed short v19;
double v20;
v17=-111;
v18=-199999;
v19=-111;
v20 = (*v2) (v17, v18, v19);
history[history_index++] = (int)v20;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
