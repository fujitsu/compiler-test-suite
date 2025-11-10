#include <stdlib.h>
extern unsigned short v1 (unsigned short, signed char, signed int, float);
extern unsigned short (*v2) (unsigned short, signed char, signed int, float);
void v3 (double, signed int);
void (*v4) (double, signed int) = v3;
extern signed short v5 (signed char, float);
extern signed short (*v6) (signed char, float);
signed int v7 (float, float);
signed int (*v8) (float, float) = v7;
signed short v9 (void);
signed short (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;

signed short v9 (void) {
for (;;) {
trace++;
switch (trace) {
case 11: return -111;
case 7: return -111;
case 5: 
{
signed char v18;
float v19;
signed short v20;
v18='a';
v19=1.234;
v20 = v5 (v18, v19);
history[history_index++] = (int)v20;
return -111;
}
break;
case 3: 
{
signed char v21;
float v22;
signed short v23;
v21='a';
v22=1.234;
v23 = v5 (v21, v22);
history[history_index++] = (int)v23;
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

signed int v7 (float v24, float v25) {
history[history_index++] = (int)v24;
history[history_index++] = (int)v25;
for (;;) {
trace++;
switch (trace) {
case 9: return -199999;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

void v3 (double v26, signed int v27) {
history[history_index++] = (int)v26;
history[history_index++] = (int)v27;
for (;;) {
trace++;
switch (trace) {
default: abort ();
}
}
}
