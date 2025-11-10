#include <stdlib.h>
unsigned char v1 (unsigned char, double, signed char, float);
unsigned char (*v2) (unsigned char, double, signed char, float) = v1;
extern signed short v3 (unsigned int, float, unsigned int);
extern signed short (*v4) (unsigned int, float, unsigned int);
extern signed char v5 (unsigned char, unsigned int, unsigned int, signed short);
extern signed char (*v6) (unsigned char, unsigned int, unsigned int, signed short);
signed char v7 (signed int, signed short);
signed char (*v8) (signed int, signed short) = v7;
unsigned short v9 (double, unsigned short);
unsigned short (*v10) (double, unsigned short) = v9;
extern int history[];
extern int history_index;
extern int trace;

unsigned short v9 (double v23, unsigned short v24) {
history[history_index++] = (int)v23;
history[history_index++] = (int)v24;
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

signed char v7 (signed int v25, signed short v26) {
history[history_index++] = (int)v25;
history[history_index++] = (int)v26;
for (;;) {
trace++;
switch (trace) {
case 3: return 'a';
case 1: 
{
unsigned char v27;
double v28;
signed char v29;
float v30;
unsigned char v31;
v27='A';
v28=111111.2222222;
v29='a';
v30=1.234;
v31 = (*v2) (v27, v28, v29, v30);
history[history_index++] = (int)v31;
return 'a';
}
break;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

unsigned char v1 (unsigned char v32, double v33, signed char v34, float v35) {
history[history_index++] = (int)v32;
history[history_index++] = (int)v33;
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
for (;;) {
trace++;
switch (trace) {
case 4: return 'A';
case 2: return 'A';
case 0: 
{
signed int v36;
signed short v37;
signed char v38;
v36=-199999;
v37=-111;
v38 = (*v8) (v36, v37);
history[history_index++] = (int)v38;
return 'A';
}
break;
default: abort ();
}
}
}
