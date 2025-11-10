#include <stdlib.h>
signed short v1 (unsigned char, signed short, double);
signed short (*v2) (unsigned char, signed short, double) = v1;
extern signed int v3 (signed int, signed char, unsigned short);
extern signed int (*v4) (signed int, signed char, unsigned short);
double v5 (signed int, signed char);
double (*v6) (signed int, signed char) = v5;
extern float v7 (signed char, signed char, unsigned short, unsigned char);
extern float (*v8) (signed char, signed char, unsigned short, unsigned char);
unsigned short v9 (signed short, float);
unsigned short (*v10) (signed short, float) = v9;
extern int history[];
extern int history_index;
extern int trace;

unsigned short v9 (signed short v19, float v20) {
history[history_index++] = (int)v19;
history[history_index++] = (int)v20;
for (;;) {
trace++;
switch (trace) {
case 11: return 111;
case 10: return 111;
case 8: 
{
signed int v21;
signed char v22;
double v23;
v21=-199999;
v22='a';
v23 = (*v6) (v21, v22);
history[history_index++] = (int)v23;
return 111;
}
break;
case 6: 
{
unsigned char v24;
signed short v25;
double v26;
signed short v27;
v24='A';
v25=-111;
v26=111111.2222222;
v27 = (*v2) (v24, v25, v26);
history[history_index++] = (int)v27;
return 111;
}
break;
case 5: return 111;
case 4: 
{
signed short v28;
float v29;
unsigned short v30;
v28=-111;
v29=1.234;
v30 = (*v10) (v28, v29);
history[history_index++] = (int)v30;
return 111;
}
break;
case 3: return 111;
case 2: 
{
signed short v31;
float v32;
unsigned short v33;
v31=-111;
v32=1.234;
v33 = (*v10) (v31, v32);
history[history_index++] = (int)v33;
return 111;
}
break;
case 1: 
{
signed short v34;
float v35;
unsigned short v36;
v34=-111;
v35=1.234;
v36 = v9 (v34, v35);
history[history_index++] = (int)v36;
return 111;
}
break;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

double v5 (signed int v37, signed char v38) {
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
for (;;) {
trace++;
switch (trace) {
case 9: return 111111.2222222;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed short v1 (unsigned char v39, signed short v40, double v41) {
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
for (;;) {
trace++;
switch (trace) {
case 12: return -111;
case 7: return -111;
case 0: 
{
signed short v42;
float v43;
unsigned short v44;
v42=-111;
v43=1.234;
v44 = (*v10) (v42, v43);
history[history_index++] = (int)v44;
return -111;
}
break;
default: abort ();
}
}
}
