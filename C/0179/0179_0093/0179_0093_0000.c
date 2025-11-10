#include <stdio.h>
#include <stdlib.h>
unsigned short v1 (signed char, signed char, signed short, signed short);
unsigned short (*v2) (signed char, signed char, signed short, signed short) = v1;
extern float v3 (unsigned short, unsigned short, signed int, unsigned char);
extern float (*v4) (unsigned short, unsigned short, signed int, unsigned char);
extern unsigned int v5 (signed int, float, signed short, signed int);
extern unsigned int (*v6) (signed int, float, signed short, signed int);
extern signed short v7 (unsigned int);
extern signed short (*v8) (unsigned int);
extern double v9 (unsigned char, float, unsigned short);
extern double (*v10) (unsigned char, float, unsigned short);
extern int history[];
extern int history_index;
extern int trace;

unsigned short v1 (signed char v11, signed char v12, signed short v13, signed short v14) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
history[history_index++] = (int)v13;
history[history_index++] = (int)v14;
for (;;) {
trace++;
switch (trace) {
case 16: return 111;
case 0: 
{
unsigned short v15;
unsigned short v16;
signed int v17;
unsigned char v18;
float v19;
v15=111;
v16=111;
v17=-199999;
v18='A';
v19 = v3 (v15, v16, v17, v18);
history[history_index++] = (int)v19;
return 111;
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
signed char v20;
signed char v21;
signed short v22;
signed short v23;
unsigned short v24;
v20='a';
v21='a';
v22=-111;
v23=-111;
v24 = (*v2) (v20, v21, v22, v23);
history[history_index++] = (int)v24;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
