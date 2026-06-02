#include <stdlib.h>
extern unsigned int v1 (unsigned char, signed short);
extern unsigned int (*v2) (unsigned char, signed short);
unsigned char v3 (signed short, unsigned char, signed char);
unsigned char (*v4) (signed short, unsigned char, signed char) = v3;
extern unsigned char v5 (unsigned char);
extern unsigned char (*v6) (unsigned char);
signed short v7 (unsigned int, unsigned int);
signed short (*v8) (unsigned int, unsigned int) = v7;
extern unsigned int v9 (signed char, signed short, unsigned char, signed char);
extern unsigned int (*v10) (signed char, signed short, unsigned char, signed char);
signed short v11 (signed char, signed short, unsigned short, unsigned short);
signed short (*v12) (signed char, signed short, unsigned short, unsigned short) = v11;
extern signed char v13 (unsigned char);
extern signed char (*v14) (unsigned char);
extern void v15 (unsigned int, signed int);
extern void (*v16) (unsigned int, signed int);
extern signed char v17 (unsigned int);
extern signed char (*v18) (unsigned int);
extern unsigned char v19 (signed char, unsigned char);
extern unsigned char (*v20) (signed char, unsigned char);
void v21 (signed short);
void (*v22) (signed short) = v21;
extern unsigned short v23 (unsigned char);
extern unsigned short (*v24) (unsigned char);
extern signed int v25 (unsigned char);
extern signed int (*v26) (unsigned char);
extern void v27 (unsigned char);
extern void (*v28) (unsigned char);
extern unsigned short v29 (signed char, signed int, signed int);
extern unsigned short (*v30) (signed char, signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v71 = 6;
signed char v70 = -2;
unsigned short v69 = 0;

void v21 (signed short v72)
{
history[history_index++] = (int)v72;
{
for (;;) {
signed short v75 = -3;
signed char v74 = 2;
signed short v73 = 2;
trace++;
switch (trace)
{
case 2: 
{
unsigned char v76;
signed short v77;
unsigned int v78;
v76 = 0 - 6;
v77 = v73 + v75;
v78 = v1 (v76, v77);
history[history_index++] = (int)v78;
}
break;
case 5: 
return;
case 7: 
return;
case 9: 
return;
case 11: 
return;
case 14: 
return;
default: abort ();
}
}
}
}

signed short v11 (signed char v79, signed short v80, unsigned short v81, unsigned short v82)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
signed int v85 = 2;
signed short v84 = -3;
unsigned short v83 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned int v86, unsigned int v87)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
unsigned char v90 = 2;
unsigned char v89 = 7;
signed int v88 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (signed short v91, unsigned char v92, signed char v93)
{
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
signed short v96 = -3;
signed short v95 = 2;
signed char v94 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
