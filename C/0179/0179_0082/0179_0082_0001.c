#include <stdlib.h>
unsigned int v1 (signed short, unsigned int, float);
unsigned int (*v2) (signed short, unsigned int, float) = v1;
extern signed int v3 (void);
extern signed int (*v4) (void);
signed short v5 (signed int, signed char, float);
signed short (*v6) (signed int, signed char, float) = v5;
extern void v7 (float, signed int);
extern void (*v8) (float, signed int);
unsigned char v9 (void);
unsigned char (*v10) (void) = v9;
extern int history[];
extern int history_index;
extern int trace;

unsigned char v9 (void) {
for (;;) {
trace++;
switch (trace) {
case 14: return 'A';
case 4: 
{
signed int v26;
signed char v27;
float v28;
signed short v29;
v26=-199999;
v27='a';
v28=1.234;
v29 = (*v6) (v26, v27, v28);
history[history_index++] = (int)v29;
return 'A';
}
break;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed short v5 (signed int v30, signed char v31, float v32) {
history[history_index++] = (int)v30;
history[history_index++] = (int)v31;
history[history_index++] = (int)v32;
for (;;) {
trace++;
switch (trace) {
case 17: return -111;
case 13: return -111;
case 5: 
{
float v33;
signed int v34;
v33=1.234;
v34=-199999;
(*v8) (v33, v34);
return -111;
}
break;
case 1: 
{
float v35;
signed int v36;
v35=1.234;
v36=-199999;
(*v8) (v35, v36);
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

unsigned int v1 (signed short v37, unsigned int v38, float v39) {
history[history_index++] = (int)v37;
history[history_index++] = (int)v38;
history[history_index++] = (int)v39;
for (;;) {
trace++;
switch (trace) {
case 18: return 199999;
case 0: 
{
signed int v40;
signed char v41;
float v42;
signed short v43;
v40=-199999;
v41='a';
v42=1.234;
v43 = (*v6) (v40, v41, v42);
history[history_index++] = (int)v43;
return 199999;
}
break;
default: abort ();
}
}
}
