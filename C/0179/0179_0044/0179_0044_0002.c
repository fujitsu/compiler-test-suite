#include <stdlib.h>
void v1 (signed char);
void (*v2) (signed char) = v1;
void v3 (signed int);
void (*v4) (signed int) = v3;
signed char v5 (signed char, unsigned int);
signed char (*v6) (signed char, unsigned int) = v5;
extern void v7 (signed short, unsigned short, signed short);
extern void (*v8) (signed short, unsigned short, signed short);
extern unsigned int v9 (float);
extern unsigned int (*v10) (float);
extern int history[];
extern int history_index;
extern int trace;

signed char v5 (signed char v19, unsigned int v20) {
history[history_index++] = (int)v19;
history[history_index++] = (int)v20;
for (;;) {
trace++;
switch (trace) {
case 4: return 'a';
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

void v3 (signed int v21) {
history[history_index++] = (int)v21;
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

void v1 (signed char v22) {
history[history_index++] = (int)v22;
for (;;) {
trace++;
switch (trace) {
case 8: return;
case 6: 
{
signed short v23;
unsigned short v24;
signed short v25;
v23=-111;
v24=111;
v25=-111;
v7 (v23, v24, v25);
return;
}
break;
case 2: 
{
float v26;
unsigned int v27;
v26=1.234;
v27 = (*v10) (v26);
history[history_index++] = (int)v27;
return;
}
break;
case 0: 
{
float v28;
unsigned int v29;
v28=1.234;
v29 = v9 (v28);
history[history_index++] = (int)v29;
return;
}
break;
default: abort ();
}
}
}
