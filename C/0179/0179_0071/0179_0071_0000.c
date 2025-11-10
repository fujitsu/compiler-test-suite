#include <stdio.h>
#include <stdlib.h>
signed short v1 (unsigned short);
signed short (*v2) (unsigned short) = v1;
unsigned int v3 (double);
unsigned int (*v4) (double) = v3;
signed int v5 (signed int, signed int, unsigned char);
signed int (*v6) (signed int, signed int, unsigned char) = v5;
extern signed int v7 (signed char, signed int, unsigned short);
extern signed int (*v8) (signed char, signed int, unsigned short);
extern signed short v9 (double, unsigned char, signed char);
extern signed short (*v10) (double, unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;

signed int v5 (signed int v11, signed int v12, unsigned char v13) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
history[history_index++] = (int)v13;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

unsigned int v3 (double v14) {
history[history_index++] = (int)v14;
for (;;) {
trace++;
switch (trace) {
case 3: return 199999;
case 1: return 199999;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed short v1 (unsigned short v15) {
history[history_index++] = (int)v15;
for (;;) {
trace++;
switch (trace) {
case 4: return -111;
case 2: 
{
double v16;
unsigned int v17;
v16=111111.2222222;
v17 = (*v4) (v16);
history[history_index++] = (int)v17;
return -111;
}
break;
case 0: 
{
double v18;
unsigned int v19;
v18=111111.2222222;
v19 = (*v4) (v18);
history[history_index++] = (int)v19;
return -111;
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
unsigned short v20;
signed short v21;
v20=111;
v21 = (*v2) (v20);
history[history_index++] = (int)v21;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
