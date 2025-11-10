#include <stdlib.h>
signed char v1 (void);
signed char (*v2) (void) = v1;
unsigned short v3 (void);
unsigned short (*v4) (void) = v3;
extern unsigned int v5 (float, signed int, float);
extern unsigned int (*v6) (float, signed int, float);
float v7 (signed int, double, float, unsigned char);
float (*v8) (signed int, double, float, unsigned char) = v7;
unsigned short v9 (signed char, signed short, signed int, unsigned short);
unsigned short (*v10) (signed char, signed short, signed int, unsigned short) = v9;
extern int history[];
extern int history_index;
extern int trace;

unsigned short v9 (signed char v15, signed short v16, signed int v17, unsigned short v18) {
history[history_index++] = (int)v15;
history[history_index++] = (int)v16;
history[history_index++] = (int)v17;
history[history_index++] = (int)v18;
for (;;) {
trace++;
switch (trace) {
case 11: return 111;
case 10: return 111;
case 9: 
{
signed char v19;
signed short v20;
signed int v21;
unsigned short v22;
unsigned short v23;
v19='a';
v20=-111;
v21=-199999;
v22=111;
v23 = (*v10) (v19, v20, v21, v22);
history[history_index++] = (int)v23;
return 111;
}
break;
case 8: return 111;
case 7: return 111;
case 6: 
{
signed char v24;
signed short v25;
signed int v26;
unsigned short v27;
unsigned short v28;
v24='a';
v25=-111;
v26=-199999;
v27=111;
v28 = (*v10) (v24, v25, v26, v27);
history[history_index++] = (int)v28;
return 111;
}
break;
case 5: 
{
signed char v29;
signed short v30;
signed int v31;
unsigned short v32;
unsigned short v33;
v29='a';
v30=-111;
v31=-199999;
v32=111;
v33 = (*v10) (v29, v30, v31, v32);
history[history_index++] = (int)v33;
return 111;
}
break;
case 1: return 111;
default: abort ();
}
}
}
extern int history[];
extern int history_index;
extern int trace;

float v7 (signed int v34, double v35, float v36, unsigned char v37) {
history[history_index++] = (int)v34;
history[history_index++] = (int)v35;
history[history_index++] = (int)v36;
history[history_index++] = (int)v37;
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

unsigned short v3 (void) {
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

signed char v1 (void) {
for (;;) {
trace++;
switch (trace) {
case 12: return 'a';
case 4: 
{
signed char v38;
signed short v39;
signed int v40;
unsigned short v41;
unsigned short v42;
v38='a';
v39=-111;
v40=-199999;
v41=111;
v42 = v9 (v38, v39, v40, v41);
history[history_index++] = (int)v42;
return 'a';
}
break;
case 2: 
{
float v43;
signed int v44;
float v45;
unsigned int v46;
v43=1.234;
v44=-199999;
v45=1.234;
v46 = (*v6) (v43, v44, v45);
history[history_index++] = (int)v46;
return 'a';
}
break;
case 0: 
{
signed char v47;
signed short v48;
signed int v49;
unsigned short v50;
unsigned short v51;
v47='a';
v48=-111;
v49=-199999;
v50=111;
v51 = (*v10) (v47, v48, v49, v50);
history[history_index++] = (int)v51;
return 'a';
}
break;
default: abort ();
}
}
}
