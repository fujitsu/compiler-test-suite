#include <stdio.h>
#include <stdlib.h>
extern unsigned short v1 (double, signed int);
extern unsigned short (*v2) (double, signed int);
unsigned int v3 (void);
unsigned int (*v4) (void) = v3;
extern signed int v5 (void);
extern signed int (*v6) (void);
extern unsigned short v7 (unsigned int, signed int, unsigned short);
extern unsigned short (*v8) (unsigned int, signed int, unsigned short);
unsigned char v9 (signed short, unsigned short, double);
unsigned char (*v10) (signed short, unsigned short, double) = v9;
extern int history[];
extern int history_index;
extern int trace;

unsigned char v9 (signed short v11, unsigned short v12, double v13) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
history[history_index++] = (int)v13;
for (;;) {
trace++;
switch (trace) {
case 15: return 'A';
case 12: return 'A';
case 4: 
{
unsigned int v14;
signed int v15;
unsigned short v16;
unsigned short v17;
v14=199999;
v15=-199999;
v16=111;
v17 = (*v8) (v14, v15, v16);
history[history_index++] = (int)v17;
return 'A';
}
break;
case 1: 
{
unsigned int v18;
signed int v19;
unsigned short v20;
unsigned short v21;
v18=199999;
v19=-199999;
v20=111;
v21 = (*v8) (v18, v19, v20);
history[history_index++] = (int)v21;
return 'A';
}
break;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

unsigned int v3 (void) {
for (;;) {
trace++;
switch (trace) {
case 10: return 199999;
case 9: return 199999;
case 8: return 199999;
case 7: 
{
unsigned int v22;
v22 = v3 ();
history[history_index++] = (int)v22;
return 199999;
}
break;
case 6: 
{
unsigned int v23;
v23 = (*v4) ();
history[history_index++] = (int)v23;
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
double v24;
signed int v25;
unsigned short v26;
v24=111111.2222222;
v25=-199999;
v26 = (*v2) (v24, v25);
history[history_index++] = (int)v26;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
