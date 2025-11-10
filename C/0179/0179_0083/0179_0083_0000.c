#include <stdio.h>
#include <stdlib.h>
extern signed short v1 (signed int, double, signed char, unsigned short);
extern signed short (*v2) (signed int, double, signed char, unsigned short);
extern unsigned short v3 (signed char, float, signed short);
extern unsigned short (*v4) (signed char, float, signed short);
signed int v5 (void);
signed int (*v6) (void) = v5;
extern float v7 (unsigned int, signed short);
extern float (*v8) (unsigned int, signed short);
extern void v9 (unsigned int, signed short);
extern void (*v10) (unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;

signed int v5 (void) {
for (;;) {
trace++;
switch (trace) {
case 14: return -199999;
case 12: return -199999;
case 10: 
{
unsigned int v11;
signed short v12;
v11=199999;
v12=-111;
(*v10) (v11, v12);
return -199999;
}
break;
case 6: 
{
unsigned int v13;
signed short v14;
v13=199999;
v14=-111;
v9 (v13, v14);
return -199999;
}
break;
case 2: return -199999;
default: abort ();
}
}
}

int history[1000];
int history_index = 0;
int trace = -1;
int main() {
{
signed int v15;
double v16;
signed char v17;
unsigned short v18;
signed short v19;
v15=-199999;
v16=111111.2222222;
v17='a';
v18=111;
v19 = (*v2) (v15, v16, v17, v18);
history[history_index++] = (int)v19;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
