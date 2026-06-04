#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern signed int v3 (unsigned short, unsigned char, signed int, unsigned int);
extern signed int (*v4) (unsigned short, unsigned char, signed int, unsigned int);
signed int v5 (unsigned short, unsigned int, unsigned int);
signed int (*v6) (unsigned short, unsigned int, unsigned int) = v5;
signed char v7 (signed int);
signed char (*v8) (signed int) = v7;
extern void v9 (signed short, unsigned short);
extern void (*v10) (signed short, unsigned short);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern unsigned short v13 (signed int, unsigned char);
extern unsigned short (*v14) (signed int, unsigned char);
unsigned int v15 (unsigned short, unsigned char);
unsigned int (*v16) (unsigned short, unsigned char) = v15;
signed char v17 (unsigned int);
signed char (*v18) (unsigned int) = v17;
extern signed char v19 (unsigned short, unsigned char);
extern signed char (*v20) (unsigned short, unsigned char);
extern signed short v21 (signed short, unsigned int, unsigned char, signed short);
extern signed short (*v22) (signed short, unsigned int, unsigned char, signed short);
extern unsigned char v23 (signed short, unsigned int, signed int);
extern unsigned char (*v24) (signed short, unsigned int, signed int);
extern void v25 (unsigned int, signed char);
extern void (*v26) (unsigned int, signed char);
extern signed char v27 (signed char, unsigned char, signed short);
extern signed char (*v28) (signed char, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v114 = 7;
signed char v113 = -1;
signed short v112 = -3;

signed char v17 (unsigned int v115)
{
history[history_index++] = (int)v115;
{
for (;;) {
signed short v118 = -2;
signed char v117 = 1;
signed short v116 = -3;
trace++;
switch (trace)
{
case 1: 
return v117;
default: abort ();
}
}
}
}

unsigned int v15 (unsigned short v119, unsigned char v120)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
unsigned int v123 = 5U;
signed short v122 = -4;
unsigned int v121 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (signed int v124)
{
history[history_index++] = (int)v124;
{
for (;;) {
signed short v127 = 0;
signed char v126 = -3;
unsigned char v125 = 4;
trace++;
switch (trace)
{
case 7: 
{
signed int v128;
unsigned char v129;
unsigned short v130;
v128 = -4 + 1;
v129 = v125 - 5;
v130 = v13 (v128, v129);
history[history_index++] = (int)v130;
}
break;
case 11: 
return v126;
default: abort ();
}
}
}
}

signed int v5 (unsigned short v131, unsigned int v132, unsigned int v133)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
signed char v136 = -4;
signed int v135 = 3;
unsigned char v134 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
