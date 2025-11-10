#include <stdlib.h>
unsigned short v1 (unsigned short, signed char, signed int, float);
unsigned short (*v2) (unsigned short, signed char, signed int, float) = v1;
extern void v3 (double, signed int);
extern void (*v4) (double, signed int);
extern signed short v5 (signed char, float);
extern signed short (*v6) (signed char, float);
extern signed int v7 (float, float);
extern signed int (*v8) (float, float);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;

unsigned short v1 (unsigned short v28, signed char v29, signed int v30, float v31) {
history[history_index++] = (int)v28;
history[history_index++] = (int)v29;
history[history_index++] = (int)v30;
history[history_index++] = (int)v31;
for (;;) {
trace++;
switch (trace) {
case 12: return 111;
case 10: 
{
signed short v32;
v32 = (*v10) ();
history[history_index++] = (int)v32;
return 111;
}
break;
case 8: 
{
float v33;
float v34;
signed int v35;
v33=1.234;
v34=1.234;
v35 = v7 (v33, v34);
history[history_index++] = (int)v35;
return 111;
}
break;
case 2: 
{
signed short v36;
v36 = (*v10) ();
history[history_index++] = (int)v36;
return 111;
}
break;
case 0: 
{
signed char v37;
float v38;
signed short v39;
v37='a';
v38=1.234;
v39 = (*v6) (v37, v38);
history[history_index++] = (int)v39;
return 111;
}
break;
default: abort ();
}
}
}
