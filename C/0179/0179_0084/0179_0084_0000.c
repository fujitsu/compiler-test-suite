#include <stdio.h>
#include <stdlib.h>
signed int v1 (float, signed int, double);
signed int (*v2) (float, signed int, double) = v1;
signed short v3 (unsigned short, signed short);
signed short (*v4) (unsigned short, signed short) = v3;
signed char v5 (signed char, double);
signed char (*v6) (signed char, double) = v5;
extern signed int v7 (unsigned char, double, unsigned short);
extern signed int (*v8) (unsigned char, double, unsigned short);
extern signed int v9 (unsigned char, unsigned char);
extern signed int (*v10) (unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;

signed char v5 (signed char v11, double v12) {
history[history_index++] = (int)v11;
history[history_index++] = (int)v12;
for (;;) {
trace++;
switch (trace) {
case 4: return 'a';
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed short v3 (unsigned short v13, signed short v14) {
history[history_index++] = (int)v13;
history[history_index++] = (int)v14;
for (;;) {
trace++;
switch (trace) {
case 11: return -111;
case 9: 
{
float v15;
signed int v16;
double v17;
signed int v18;
v15=1.234;
v16=-199999;
v17=111111.2222222;
v18 = v1 (v15, v16, v17);
history[history_index++] = (int)v18;
return -111;
}
break;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed int v1 (float v19, signed int v20, double v21) {
history[history_index++] = (int)v19;
history[history_index++] = (int)v20;
history[history_index++] = (int)v21;
for (;;) {
trace++;
switch (trace) {
case 12: return -199999;
case 10: return -199999;
case 8: 
{
unsigned short v22;
signed short v23;
signed short v24;
v22=111;
v23=-111;
v24 = v3 (v22, v23);
history[history_index++] = (int)v24;
return -199999;
}
break;
case 6: 
{
unsigned char v25;
double v26;
unsigned short v27;
signed int v28;
v25='A';
v26=111111.2222222;
v27=111;
v28 = (*v8) (v25, v26, v27);
history[history_index++] = (int)v28;
return -199999;
}
break;
case 2: 
{
unsigned char v29;
unsigned char v30;
signed int v31;
v29='A';
v30='A';
v31 = (*v10) (v29, v30);
history[history_index++] = (int)v31;
return -199999;
}
break;
case 0: 
{
unsigned char v32;
double v33;
unsigned short v34;
signed int v35;
v32='A';
v33=111111.2222222;
v34=111;
v35 = (*v8) (v32, v33, v34);
history[history_index++] = (int)v35;
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
float v36;
signed int v37;
double v38;
signed int v39;
v36=1.234;
v37=-199999;
v38=111111.2222222;
v39 = (*v2) (v36, v37, v38);
history[history_index++] = (int)v39;
}
{
int i;
for (i = 0; i < history_index; i++)
printf ("%d\n", history[i]);
exit (0);
}
}
