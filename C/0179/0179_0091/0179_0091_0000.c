#include <stdio.h>
#include <stdlib.h>
unsigned short v1 (signed int, float, signed short, unsigned int);
unsigned short (*v2) (signed int, float, signed short, unsigned int) = v1;
extern signed int v3 (void);
extern signed int (*v4) (void);
extern unsigned char v5 (unsigned int, unsigned short, signed short, float);
extern unsigned char (*v6) (unsigned int, unsigned short, signed short, float);
extern signed short v7 (float);
extern signed short (*v8) (float);
extern signed int v9 (signed char, unsigned char);
extern signed int (*v10) (signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;

unsigned short v1 (signed int v11, float v12, signed short v13, unsigned int v14) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
history[history_index++] = (int)v13;
history[history_index++] = (int)v14;
for (;;) {
trace++;
switch (trace) {
case 16: return 111;
case 15: return 111;
case 5: return 111;
case 3: 
{
signed char v15;
unsigned char v16;
signed int v17;
v15='a';
v16='A';
v17 = v9 (v15, v16);
history[history_index++] = (int)v17;
return 111;
}
break;
case 2: 
{
signed int v18;
float v19;
signed short v20;
unsigned int v21;
unsigned short v22;
v18=-199999;
v19=1.234;
v20=-111;
v21=199999;
v22 = (*v2) (v18, v19, v20, v21);
history[history_index++] = (int)v22;
return 111;
}
break;
case 0: 
{
unsigned int v23;
unsigned short v24;
signed short v25;
float v26;
unsigned char v27;
v23=199999;
v24=111;
v25=-111;
v26=1.234;
v27 = (*v6) (v23, v24, v25, v26);
history[history_index++] = (int)v27;
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
signed int v28;
float v29;
signed short v30;
unsigned int v31;
unsigned short v32;
v28=-199999;
v29=1.234;
v30=-111;
v31=199999;
v32 = v1 (v28, v29, v30, v31);
history[history_index++] = (int)v32;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
