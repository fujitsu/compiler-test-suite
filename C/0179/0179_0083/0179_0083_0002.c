#include <stdlib.h>
signed short v1 (signed int, double, signed char, unsigned short);
signed short (*v2) (signed int, double, signed char, unsigned short) = v1;
extern unsigned short v3 (signed char, float, signed short);
extern unsigned short (*v4) (signed char, float, signed short);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern float v7 (unsigned int, signed short);
extern float (*v8) (unsigned int, signed short);
void v9 (unsigned int, signed short);
void (*v10) (unsigned int, signed short) = v9;
extern int history[];
extern int history_index;
extern int trace;

void v9 (unsigned int v25, signed short v26) {
history[history_index++] = (int)v25;
history[history_index++] = (int)v26;
for (;;) {
trace++;
switch (trace) {
case 15: return;
case 13: return;
case 11: return;
case 9: 
{
signed int v27;
v27 = v5 ();
history[history_index++] = (int)v27;
return;
}
break;
case 7: 
{
signed char v28;
float v29;
signed short v30;
unsigned short v31;
v28='a';
v29=1.234;
v30=-111;
v31 = v3 (v28, v29, v30);
history[history_index++] = (int)v31;
return;
}
break;
case 5: 
{
signed int v32;
v32 = (*v6) ();
history[history_index++] = (int)v32;
return;
}
break;
case 3: 
{
signed char v33;
float v34;
signed short v35;
unsigned short v36;
v33='a';
v34=1.234;
v35=-111;
v36 = (*v4) (v33, v34, v35);
history[history_index++] = (int)v36;
return;
}
break;
case 1: 
{
signed int v37;
v37 = (*v6) ();
history[history_index++] = (int)v37;
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

signed short v1 (signed int v38, double v39, signed char v40, unsigned short v41) {
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
history[history_index++] = (int)v40;
history[history_index++] = (int)v41;
for (;;) {
trace++;
switch (trace) {
case 16: return -111;
case 0: 
{
unsigned int v42;
signed short v43;
v42=199999;
v43=-111;
(*v10) (v42, v43);
return -111;
}
break;
default: abort ();
}
}
}
