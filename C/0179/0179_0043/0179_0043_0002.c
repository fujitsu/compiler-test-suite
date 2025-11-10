#include <stdlib.h>
float v1 (signed char, unsigned int);
float (*v2) (signed char, unsigned int) = v1;
float v3 (void);
float (*v4) (void) = v3;
float v5 (unsigned short);
float (*v6) (unsigned short) = v5;
unsigned int v7 (signed short);
unsigned int (*v8) (signed short) = v7;
unsigned short v9 (unsigned int, double, float, signed short);
unsigned short (*v10) (unsigned int, double, float, signed short) = v9;
extern int history[];
extern int history_index;
extern int trace;

unsigned short v9 (unsigned int v14, double v15, float v16, signed short v17) {
history[history_index++] = (int)v14;
history[history_index++] = (int)v15;
history[history_index++] = (int)v16;
history[history_index++] = (int)v17;
for (;;) {
trace++;
switch (trace) {
case 6: return 111;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

unsigned int v7 (signed short v18) {
history[history_index++] = (int)v18;
for (;;) {
trace++;
switch (trace) {
case 11: return 199999;
case 9: 
{
float v19;
v19 = v3 ();
history[history_index++] = (int)v19;
return 199999;
}
break;
case 7: 
{
float v20;
v20 = v3 ();
history[history_index++] = (int)v20;
return 199999;
}
break;
case 5: 
{
unsigned int v21;
double v22;
float v23;
signed short v24;
unsigned short v25;
v21=199999;
v22=111111.2222222;
v23=1.234;
v24=-111;
v25 = v9 (v21, v22, v23, v24);
history[history_index++] = (int)v25;
return 199999;
}
break;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

float v5 (unsigned short v26) {
history[history_index++] = (int)v26;
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

float v3 (void) {
for (;;) {
trace++;
switch (trace) {
case 10: return 1.234;
case 8: return 1.234;
case 3: return 1.234;
case 1: return 1.234;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

float v1 (signed char v27, unsigned int v28) {
history[history_index++] = (int)v27;
history[history_index++] = (int)v28;
for (;;) {
trace++;
switch (trace) {
case 12: return 1.234;
case 4: 
{
signed short v29;
unsigned int v30;
v29=-111;
v30 = (*v8) (v29);
history[history_index++] = (int)v30;
return 1.234;
}
break;
case 2: 
{
float v31;
v31 = v3 ();
history[history_index++] = (int)v31;
return 1.234;
}
break;
case 0: 
{
float v32;
v32 = (*v4) ();
history[history_index++] = (int)v32;
return 1.234;
}
break;
default: abort ();
}
}
}
