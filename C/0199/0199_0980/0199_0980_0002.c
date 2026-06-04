#include <stdlib.h>
void v1 (unsigned short, signed char, unsigned short);
void (*v2) (unsigned short, signed char, unsigned short) = v1;
extern signed char v3 (signed char, signed short, signed int);
extern signed char (*v4) (signed char, signed short, signed int);
extern void v5 (signed char, signed char);
extern void (*v6) (signed char, signed char);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
signed char v9 (signed short, signed short, unsigned int);
signed char (*v10) (signed short, signed short, unsigned int) = v9;
extern signed char v11 (signed char, unsigned int, signed short, unsigned int);
extern signed char (*v12) (signed char, unsigned int, signed short, unsigned int);
extern unsigned short v13 (unsigned char, signed int, signed int, unsigned short);
extern unsigned short (*v14) (unsigned char, signed int, signed int, unsigned short);
extern void v17 (void);
extern void (*v18) (void);
unsigned short v19 (signed int, signed int, unsigned char, signed char);
unsigned short (*v20) (signed int, signed int, unsigned char, signed char) = v19;
extern unsigned int v21 (signed char, unsigned short);
extern unsigned int (*v22) (signed char, unsigned short);
extern unsigned int v23 (signed char);
extern unsigned int (*v24) (signed char);
extern signed short v25 (unsigned short, unsigned short);
extern signed short (*v26) (unsigned short, unsigned short);
extern unsigned char v29 (unsigned int, unsigned char);
extern unsigned char (*v30) (unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v66 = -4;
unsigned int v65 = 1U;
unsigned char v64 = 4;

unsigned short v19 (signed int v67, signed int v68, unsigned char v69, signed char v70)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
unsigned short v73 = 3;
signed char v72 = 3;
unsigned int v71 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (signed short v74, signed short v75, unsigned int v76)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
{
for (;;) {
unsigned short v79 = 2;
signed short v78 = -2;
signed char v77 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (unsigned short v80, signed char v81, unsigned short v82)
{
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
signed short v85 = 2;
signed char v84 = -4;
unsigned char v83 = 6;
trace++;
switch (trace)
{
case 0: 
{
signed char v86;
signed short v87;
signed int v88;
signed char v89;
v86 = v84 + v84;
v87 = -2 - v85;
v88 = 3 + -4;
v89 = v3 (v86, v87, v88);
history[history_index++] = (int)v89;
}
break;
case 16: 
return;
default: abort ();
}
}
}
}
