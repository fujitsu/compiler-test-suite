#include <stdio.h>
#include <stdlib.h>
signed int v1 (signed int, signed char);
signed int (*v2) (signed int, signed char) = v1;
extern unsigned int v3 (unsigned int, signed short, signed short, unsigned char);
extern unsigned int (*v4) (unsigned int, signed short, signed short, unsigned char);
extern signed int v5 (unsigned int, unsigned char, signed short, unsigned char);
extern signed int (*v6) (unsigned int, unsigned char, signed short, unsigned char);
extern signed short v7 (double);
extern signed short (*v8) (double);
extern double v9 (void);
extern double (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;

signed int v1 (signed int v11, signed char v12) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
for (;;) {
trace++;
switch (trace) {
case 12: return -199999;
case 10: 
{
unsigned int v13;
signed short v14;
signed short v15;
unsigned char v16;
unsigned int v17;
v13=199999;
v14=-111;
v15=-111;
v16='A';
v17 = (*v4) (v13, v14, v15, v16);
history[history_index++] = (int)v17;
return -199999;
}
break;
case 0: 
{
unsigned int v18;
unsigned char v19;
signed short v20;
unsigned char v21;
signed int v22;
v18=199999;
v19='A';
v20=-111;
v21='A';
v22 = (*v6) (v18, v19, v20, v21);
history[history_index++] = (int)v22;
return -199999;
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
signed int v23;
signed char v24;
signed int v25;
v23=-199999;
v24='a';
v25 = v1 (v23, v24);
history[history_index++] = (int)v25;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
