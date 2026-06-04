#include <stdlib.h>
unsigned char v1 (unsigned int, unsigned char, signed int);
unsigned char (*v2) (unsigned int, unsigned char, signed int) = v1;
extern void v3 (void);
extern void (*v4) (void);
extern signed char v5 (signed char);
extern signed char (*v6) (signed char);
signed short v7 (void);
signed short (*v8) (void) = v7;
signed int v9 (unsigned char, signed char, unsigned int);
signed int (*v10) (unsigned char, signed char, unsigned int) = v9;
extern unsigned short v11 (signed char, unsigned short, signed int, unsigned int);
extern unsigned short (*v12) (signed char, unsigned short, signed int, unsigned int);
extern signed char v13 (unsigned short, signed char, signed char);
extern signed char (*v14) (unsigned short, signed char, signed char);
extern unsigned char v15 (unsigned char);
extern unsigned char (*v16) (unsigned char);
signed char v17 (signed int, unsigned int, signed char);
signed char (*v18) (signed int, unsigned int, signed char) = v17;
extern signed char v19 (signed char, unsigned short, unsigned short);
extern signed char (*v20) (signed char, unsigned short, unsigned short);
extern void v21 (signed char, signed char);
extern void (*v22) (signed char, signed char);
extern unsigned char v23 (signed char, signed char, unsigned short);
extern unsigned char (*v24) (signed char, signed char, unsigned short);
extern void v25 (unsigned int, unsigned char, signed short, unsigned int);
extern void (*v26) (unsigned int, unsigned char, signed short, unsigned int);
extern unsigned short v27 (unsigned int, unsigned short);
extern unsigned short (*v28) (unsigned int, unsigned short);
extern signed int v29 (unsigned int, signed char, signed short, unsigned short);
extern signed int (*v30) (unsigned int, signed char, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed short v63 = 3;
signed short v62 = -1;
unsigned short v61 = 1;

signed char v17 (signed int v64, unsigned int v65, signed char v66)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
unsigned short v69 = 2;
signed short v68 = -4;
signed char v67 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (unsigned char v70, signed char v71, unsigned int v72)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
{
for (;;) {
unsigned short v75 = 4;
signed int v74 = -2;
signed int v73 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (void)
{
{
for (;;) {
signed int v78 = -4;
unsigned short v77 = 4;
unsigned int v76 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned int v79, unsigned char v80, signed int v81)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
{
for (;;) {
signed char v84 = -2;
unsigned short v83 = 7;
unsigned char v82 = 4;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v85;
unsigned char v86;
v85 = v80 + v82;
v86 = v15 (v85);
history[history_index++] = (int)v86;
}
break;
case 12: 
return v80;
default: abort ();
}
}
}
}
