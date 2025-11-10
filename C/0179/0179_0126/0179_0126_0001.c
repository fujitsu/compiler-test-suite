#include <stdlib.h>
float v1 (unsigned int, signed int, unsigned int, signed short);
float (*v2) (unsigned int, signed int, unsigned int, signed short) = v1;
extern unsigned char v3 (unsigned char);
extern unsigned char (*v4) (unsigned char);
void v5 (void);
void (*v6) (void) = v5;
float v7 (signed short, signed char, unsigned short);
float (*v8) (signed short, signed char, unsigned short) = v7;
extern unsigned short v9 (signed short, float);
extern unsigned short (*v10) (signed short, float);
extern int history[];
extern int history_index;
extern int trace;

float v7 (signed short v16, signed char v17, unsigned short v18) {
history[history_index++] = (int)v16;
history[history_index++] = (int)v17;
history[history_index++] = (int)v18;
for (;;) {
trace++;
switch (trace) {
case 1: return 1.234;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

void v5 (void) {
for (;;) {
trace++;
switch (trace) {
case 10: return;
case 7: return;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

float v1 (unsigned int v19, signed int v20, unsigned int v21, signed short v22) {
history[history_index++] = (int)v19;
history[history_index++] = (int)v20;
history[history_index++] = (int)v21;
history[history_index++] = (int)v22;
for (;;) {
trace++;
switch (trace) {
case 12: return 1.234;
case 8: return 1.234;
case 6: 
{
(*v6) ();
return 1.234;
}
break;
case 4: 
{
signed short v23;
float v24;
unsigned short v25;
v23=-111;
v24=1.234;
v25 = (*v10) (v23, v24);
history[history_index++] = (int)v25;
return 1.234;
}
break;
case 2: 
{
signed short v26;
float v27;
unsigned short v28;
v26=-111;
v27=1.234;
v28 = v9 (v26, v27);
history[history_index++] = (int)v28;
return 1.234;
}
break;
case 0: 
{
signed short v29;
signed char v30;
unsigned short v31;
float v32;
v29=-111;
v30='a';
v31=111;
v32 = (*v8) (v29, v30, v31);
history[history_index++] = (int)v32;
return 1.234;
}
break;
default: abort ();
}
}
}
