#include <stdlib.h>
signed int v1 (void);
signed int (*v2) (void) = v1;
extern unsigned short v3 (unsigned int, unsigned char, double);
extern unsigned short (*v4) (unsigned int, unsigned char, double);
double v5 (signed char, double);
double (*v6) (signed char, double) = v5;
signed short v7 (unsigned int);
signed short (*v8) (unsigned int) = v7;
extern signed short v9 (unsigned int, double);
extern signed short (*v10) (unsigned int, double);
extern int history[];
extern int history_index;
extern int trace;

signed short v7 (unsigned int v22) {
history[history_index++] = (int)v22;
for (;;) {
trace++;
switch (trace) {
case 4: return -111;
case 2: return -111;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

double v5 (signed char v23, double v24) {
history[history_index++] = (int)v23;
history[history_index++] = (int)v24;
for (;;) {
trace++;
switch (trace) {
case 13: return 111111.2222222;
case 5: 
{
unsigned int v25;
double v26;
signed short v27;
v25=199999;
v26=111111.2222222;
v27 = v9 (v25, v26);
history[history_index++] = (int)v27;
return 111111.2222222;
}
break;
case 3: 
{
unsigned int v28;
signed short v29;
v28=199999;
v29 = (*v8) (v28);
history[history_index++] = (int)v29;
return 111111.2222222;
}
break;
case 1: 
{
unsigned int v30;
signed short v31;
v30=199999;
v31 = (*v8) (v30);
history[history_index++] = (int)v31;
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

signed int v1 (void) {
for (;;) {
trace++;
switch (trace) {
case 14: return -199999;
case 11: return -199999;
case 7: 
{
unsigned int v32;
unsigned char v33;
double v34;
unsigned short v35;
v32=199999;
v33='A';
v34=111111.2222222;
v35 = (*v4) (v32, v33, v34);
history[history_index++] = (int)v35;
return -199999;
}
break;
case 0: 
{
signed char v36;
double v37;
double v38;
v36='a';
v37=111111.2222222;
v38 = (*v6) (v36, v37);
history[history_index++] = (int)v38;
return -199999;
}
break;
default: abort ();
}
}
}
