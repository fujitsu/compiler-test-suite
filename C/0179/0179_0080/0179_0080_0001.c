#include <stdlib.h>
unsigned int v1 (float, signed short, unsigned short);
unsigned int (*v2) (float, signed short, unsigned short) = v1;
double v3 (signed int, signed char, signed short, unsigned short);
double (*v4) (signed int, signed char, signed short, unsigned short) = v3;
unsigned short v5 (void);
unsigned short (*v6) (void) = v5;
extern void v7 (unsigned int, signed int, signed char, signed int);
extern void (*v8) (unsigned int, signed int, signed char, signed int);
extern signed int v9 (void);
extern signed int (*v10) (void);
extern int history[];
extern int history_index;
extern int trace;

unsigned short v5 (void) {
for (;;) {
trace++;
switch (trace) {
case 12: return 111;
case 11: return 111;
case 10: 
{
unsigned short v15;
v15 = (*v6) ();
history[history_index++] = (int)v15;
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

double v3 (signed int v16, signed char v17, signed short v18, unsigned short v19) {
history[history_index++] = (int)v16;
history[history_index++] = (int)v17;
history[history_index++] = (int)v18;
history[history_index++] = (int)v19;
for (;;) {
trace++;
switch (trace) {
case 15: return 111111.2222222;
case 7: 
{
float v20;
signed short v21;
unsigned short v22;
unsigned int v23;
v20=1.234;
v21=-111;
v22=111;
v23 = (*v2) (v20, v21, v22);
history[history_index++] = (int)v23;
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

unsigned int v1 (float v24, signed short v25, unsigned short v26) {
history[history_index++] = (int)v24;
history[history_index++] = (int)v25;
history[history_index++] = (int)v26;
for (;;) {
trace++;
switch (trace) {
case 18: return 199999;
case 16: return 199999;
case 14: return 199999;
case 8: 
{
unsigned int v27;
signed int v28;
signed char v29;
signed int v30;
v27=199999;
v28=-199999;
v29='a';
v30=-199999;
v7 (v27, v28, v29, v30);
return 199999;
}
break;
case 6: 
{
signed int v31;
signed char v32;
signed short v33;
unsigned short v34;
double v35;
v31=-199999;
v32='a';
v33=-111;
v34=111;
v35 = v3 (v31, v32, v33, v34);
history[history_index++] = (int)v35;
return 199999;
}
break;
case 4: 
{
signed int v36;
v36 = (*v10) ();
history[history_index++] = (int)v36;
return 199999;
}
break;
case 2: 
{
signed int v37;
v37 = (*v10) ();
history[history_index++] = (int)v37;
return 199999;
}
break;
case 0: 
{
signed int v38;
v38 = (*v10) ();
history[history_index++] = (int)v38;
return 199999;
}
break;
default: abort ();
}
}
}
