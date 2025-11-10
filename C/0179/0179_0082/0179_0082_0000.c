#include <stdio.h>
#include <stdlib.h>
extern unsigned int v1 (signed short, unsigned int, float);
extern unsigned int (*v2) (signed short, unsigned int, float);
signed int v3 (void);
signed int (*v4) (void) = v3;
extern signed short v5 (signed int, signed char, float);
extern signed short (*v6) (signed int, signed char, float);
void v7 (float, signed int);
void (*v8) (float, signed int) = v7;
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;

void v7 (float v11, signed int v12) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
for (;;) {
trace++;
switch (trace) {
case 16: return;
case 15: return;
case 12: return;
case 11: return;
case 10: 
{
float v13;
signed int v14;
v13=1.234;
v14=-199999;
(*v8) (v13, v14);
return;
}
break;
case 9: return;
case 8: 
{
float v15;
signed int v16;
v15=1.234;
v16=-199999;
v7 (v15, v16);
return;
}
break;
case 7: return;
case 6: 
{
float v17;
signed int v18;
v17=1.234;
v18=-199999;
v7 (v17, v18);
return;
}
break;
case 3: 
{
unsigned char v19;
v19 = (*v10) ();
history[history_index++] = (int)v19;
return;
}
break;
case 2: 
{
float v20;
signed int v21;
v20=1.234;
v21=-199999;
v7 (v20, v21);
return;
}
break;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed int v3 (void) {
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
signed short v22;
unsigned int v23;
float v24;
unsigned int v25;
v22=-111;
v23=199999;
v24=1.234;
v25 = v1 (v22, v23, v24);
history[history_index++] = (int)v25;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
