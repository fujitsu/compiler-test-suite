#include <stdlib.h>
signed int v1 (void);
signed int (*v2) (void) = v1;
float v3 (double);
float (*v4) (double) = v3;
extern signed short v5 (signed char);
extern signed short (*v6) (signed char);
double v7 (signed char, signed int, signed int);
double (*v8) (signed char, signed int, signed int) = v7;
extern unsigned int v9 (void);
extern unsigned int (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;

double v7 (signed char v17, signed int v18, signed int v19) {
history[history_index++] = (int)v17;
history[history_index++] = (int)v18;
history[history_index++] = (int)v19;
for (;;) {
trace++;
switch (trace) {
case 12: return 111111.2222222;
case 8: 
{
double v20;
float v21;
v20=111111.2222222;
v21 = v3 (v20);
history[history_index++] = (int)v21;
return 111111.2222222;
}
break;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

float v3 (double v22) {
history[history_index++] = (int)v22;
for (;;) {
trace++;
switch (trace) {
case 11: return 1.234;
case 9: 
{
unsigned int v23;
v23 = v9 ();
history[history_index++] = (int)v23;
return 1.234;
}
break;
case 5: return 1.234;
case 3: 
{
unsigned int v24;
v24 = (*v10) ();
history[history_index++] = (int)v24;
return 1.234;
}
break;
case 1: 
{
unsigned int v25;
v25 = (*v10) ();
history[history_index++] = (int)v25;
return 1.234;
}
break;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed int v1 (void) {
for (;;) {
trace++;
switch (trace) {
case 14: return -199999;
case 6: 
{
signed char v26;
signed short v27;
v26='a';
v27 = (*v6) (v26);
history[history_index++] = (int)v27;
return -199999;
}
break;
case 0: 
{
double v28;
float v29;
v28=111111.2222222;
v29 = (*v4) (v28);
history[history_index++] = (int)v29;
return -199999;
}
break;
default: abort ();
}
}
}
