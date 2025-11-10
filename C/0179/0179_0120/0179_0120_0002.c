#include <stdlib.h>
signed int v1 (unsigned char, signed char, float);
signed int (*v2) (unsigned char, signed char, float) = v1;
signed int v3 (void);
signed int (*v4) (void) = v3;
extern float v5 (unsigned int, unsigned short);
extern float (*v6) (unsigned int, unsigned short);
void v7 (unsigned int, unsigned char, float, unsigned int);
void (*v8) (unsigned int, unsigned char, float, unsigned int) = v7;
extern float v9 (unsigned short, unsigned int, unsigned int, float);
extern float (*v10) (unsigned short, unsigned int, unsigned int, float);
extern int history[];
extern int history_index;
extern int trace;

void v7 (unsigned int v21, unsigned char v22, float v23, unsigned int v24) {
history[history_index++] = (int)v21;
history[history_index++] = (int)v22;
history[history_index++] = (int)v23;
history[history_index++] = (int)v24;
for (;;) {
trace++;
switch (trace) {
case 3: return;
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
case 11: return -199999;
case 7: return -199999;
case 1: return -199999;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed int v1 (unsigned char v25, signed char v26, float v27) {
history[history_index++] = (int)v25;
history[history_index++] = (int)v26;
history[history_index++] = (int)v27;
for (;;) {
trace++;
switch (trace) {
case 12: return -199999;
case 10: 
{
signed int v28;
v28 = (*v4) ();
history[history_index++] = (int)v28;
return -199999;
}
break;
case 8: 
{
unsigned short v29;
unsigned int v30;
unsigned int v31;
float v32;
float v33;
v29=111;
v30=199999;
v31=199999;
v32=1.234;
v33 = (*v10) (v29, v30, v31, v32);
history[history_index++] = (int)v33;
return -199999;
}
break;
case 6: 
{
signed int v34;
v34 = (*v4) ();
history[history_index++] = (int)v34;
return -199999;
}
break;
case 4: 
{
unsigned int v35;
unsigned short v36;
float v37;
v35=199999;
v36=111;
v37 = v5 (v35, v36);
history[history_index++] = (int)v37;
return -199999;
}
break;
case 2: 
{
unsigned int v38;
unsigned char v39;
float v40;
unsigned int v41;
v38=199999;
v39='A';
v40=1.234;
v41=199999;
(*v8) (v38, v39, v40, v41);
return -199999;
}
break;
case 0: 
{
signed int v42;
v42 = v3 ();
history[history_index++] = (int)v42;
return -199999;
}
break;
default: abort ();
}
}
}
