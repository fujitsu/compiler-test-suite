#include <stdlib.h>
unsigned short v1 (unsigned short, signed char, double);
unsigned short (*v2) (unsigned short, signed char, double) = v1;
signed char v3 (unsigned short, double, signed int, signed short);
signed char (*v4) (unsigned short, double, signed int, signed short) = v3;
double v5 (void);
double (*v6) (void) = v5;
double v7 (unsigned short, double);
double (*v8) (unsigned short, double) = v7;
extern double v9 (unsigned char, float, signed char);
extern double (*v10) (unsigned char, float, signed char);
extern int history[];
extern int history_index;
extern int trace;

double v7 (unsigned short v15, double v16) {
history[history_index++] = (int)v15;
history[history_index++] = (int)v16;
for (;;) {
trace++;
switch (trace) {
case 6: return 111111.2222222;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

double v5 (void) {
for (;;) {
trace++;
switch (trace) {
case 8: return 111111.2222222;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

signed char v3 (unsigned short v17, double v18, signed int v19, signed short v20) {
history[history_index++] = (int)v17;
history[history_index++] = (int)v18;
history[history_index++] = (int)v19;
history[history_index++] = (int)v20;
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

unsigned short v1 (unsigned short v21, signed char v22, double v23) {
history[history_index++] = (int)v21;
history[history_index++] = (int)v22;
history[history_index++] = (int)v23;
for (;;) {
trace++;
switch (trace) {
case 16: return 111;
case 15: return 111;
case 13: return 111;
case 12: return 111;
case 11: return 111;
case 10: 
{
unsigned short v24;
signed char v25;
double v26;
unsigned short v27;
v24=111;
v25='a';
v26=111111.2222222;
v27 = (*v2) (v24, v25, v26);
history[history_index++] = (int)v27;
return 111;
}
break;
case 9: 
{
unsigned short v28;
signed char v29;
double v30;
unsigned short v31;
v28=111;
v29='a';
v30=111111.2222222;
v31 = (*v2) (v28, v29, v30);
history[history_index++] = (int)v31;
return 111;
}
break;
case 7: 
{
double v32;
v32 = v5 ();
history[history_index++] = (int)v32;
return 111;
}
break;
case 5: 
{
unsigned short v33;
double v34;
double v35;
v33=111;
v34=111111.2222222;
v35 = (*v8) (v33, v34);
history[history_index++] = (int)v35;
return 111;
}
break;
case 3: 
{
unsigned char v36;
float v37;
signed char v38;
double v39;
v36='A';
v37=1.234;
v38='a';
v39 = (*v10) (v36, v37, v38);
history[history_index++] = (int)v39;
return 111;
}
break;
case 2: 
{
unsigned short v40;
signed char v41;
double v42;
unsigned short v43;
v40=111;
v41='a';
v42=111111.2222222;
v43 = v1 (v40, v41, v42);
history[history_index++] = (int)v43;
return 111;
}
break;
case 0: 
{
unsigned char v44;
float v45;
signed char v46;
double v47;
v44='A';
v45=1.234;
v46='a';
v47 = (*v10) (v44, v45, v46);
history[history_index++] = (int)v47;
return 111;
}
break;
default: abort ();
}
}
}
