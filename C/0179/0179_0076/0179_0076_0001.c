#include <stdlib.h>
unsigned short v1 (signed int, signed int, unsigned short, signed int);
unsigned short (*v2) (signed int, signed int, unsigned short, signed int) = v1;
extern unsigned short v3 (float, unsigned char, unsigned short, signed char);
extern unsigned short (*v4) (float, unsigned char, unsigned short, signed char);
extern signed int v5 (double, double, unsigned int, unsigned short);
extern signed int (*v6) (double, double, unsigned int, unsigned short);
extern double v7 (float);
extern double (*v8) (float);
double v9 (unsigned char);
double (*v10) (unsigned char) = v9;
extern int history[];
extern int history_index;
extern int trace;

double v9 (unsigned char v21) {
history[history_index++] = (int)v21;
for (;;) {
trace++;
switch (trace) {
case 3: return 111111.2222222;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

unsigned short v1 (signed int v22, signed int v23, unsigned short v24, signed int v25) {
history[history_index++] = (int)v22;
history[history_index++] = (int)v23;
history[history_index++] = (int)v24;
history[history_index++] = (int)v25;
for (;;) {
trace++;
switch (trace) {
case 4: return 111;
case 2: 
{
unsigned char v26;
double v27;
v26='A';
v27 = v9 (v26);
history[history_index++] = (int)v27;
return 111;
}
break;
case 0: 
{
double v28;
double v29;
unsigned int v30;
unsigned short v31;
signed int v32;
v28=111111.2222222;
v29=111111.2222222;
v30=199999;
v31=111;
v32 = (*v6) (v28, v29, v30, v31);
history[history_index++] = (int)v32;
return 111;
}
break;
default: abort ();
}
}
}
