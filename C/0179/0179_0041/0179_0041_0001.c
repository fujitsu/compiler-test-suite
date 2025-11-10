#include <stdlib.h>
double v1 (void);
double (*v2) (void) = v1;
extern void v3 (unsigned char);
extern void (*v4) (unsigned char);
double v5 (double, signed char, unsigned int, signed short);
double (*v6) (double, signed char, unsigned int, signed short) = v5;
signed short v7 (void);
signed short (*v8) (void) = v7;
void v9 (unsigned short, double, signed char);
void (*v10) (unsigned short, double, signed char) = v9;
extern int history[];
extern int history_index;
extern int trace;

void v9 (unsigned short v12, double v13, signed char v14) {
history[history_index++] = (int)v12;
history[history_index++] = (int)v13;
history[history_index++] = (int)v14;
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

signed short v7 (void) {
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

double v5 (double v15, signed char v16, unsigned int v17, signed short v18) {
history[history_index++] = (int)v15;
history[history_index++] = (int)v16;
history[history_index++] = (int)v17;
history[history_index++] = (int)v18;
for (;;) {
trace++;
switch (trace) {
case 11: return 111111.2222222;
case 9: 
{
unsigned char v19;
v19='A';
(*v4) (v19);
return 111111.2222222;
}
break;
case 7: 
{
unsigned char v20;
v20='A';
(*v4) (v20);
return 111111.2222222;
}
break;
case 5: 
{
unsigned char v21;
v21='A';
v3 (v21);
return 111111.2222222;
}
break;
case 3: 
{
unsigned char v22;
v22='A';
(*v4) (v22);
return 111111.2222222;
}
break;
case 1: 
{
unsigned char v23;
v23='A';
v3 (v23);
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

double v1 (void) {
for (;;) {
trace++;
switch (trace) {
case 12: return 111111.2222222;
case 0: 
{
double v24;
signed char v25;
unsigned int v26;
signed short v27;
double v28;
v24=111111.2222222;
v25='a';
v26=199999;
v27=-111;
v28 = v5 (v24, v25, v26, v27);
history[history_index++] = (int)v28;
return 111111.2222222;
}
break;
default: abort ();
}
}
}
