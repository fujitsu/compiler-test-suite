#include <stdlib.h>
extern unsigned int v1 (unsigned short, signed short, unsigned char, signed int);
extern unsigned int (*v2) (unsigned short, signed short, unsigned char, signed int);
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern signed short v5 (unsigned int);
extern signed short (*v6) (unsigned int);
extern signed char v7 (signed char, signed int);
extern signed char (*v8) (signed char, signed int);
extern unsigned int v9 (unsigned short, signed short, unsigned int);
extern unsigned int (*v10) (unsigned short, signed short, unsigned int);
extern void v11 (signed char);
extern void (*v12) (signed char);
extern signed char v13 (signed char);
extern signed char (*v14) (signed char);
signed int v15 (void);
signed int (*v16) (void) = v15;
extern signed short v17 (unsigned int, unsigned char, unsigned char);
extern signed short (*v18) (unsigned int, unsigned char, unsigned char);
signed short v19 (signed char, unsigned int, unsigned short, signed short);
signed short (*v20) (signed char, unsigned int, unsigned short, signed short) = v19;
signed int v21 (signed int, signed int, signed short);
signed int (*v22) (signed int, signed int, signed short) = v21;
extern void v23 (unsigned short, signed short, signed char);
extern void (*v24) (unsigned short, signed short, signed char);
extern signed short v25 (unsigned char, unsigned short, signed short, unsigned char);
extern signed short (*v26) (unsigned char, unsigned short, signed short, unsigned char);
extern unsigned int v27 (signed int, unsigned short, signed char, unsigned char);
extern unsigned int (*v28) (signed int, unsigned short, signed char, unsigned char);
extern void v29 (signed short, unsigned char);
extern void (*v30) (signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v121 = -4;
unsigned int v120 = 1U;
unsigned short v119 = 0;

signed int v21 (signed int v122, signed int v123, signed short v124)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned char v127 = 3;
signed char v126 = -3;
unsigned int v125 = 7U;
trace++;
switch (trace)
{
case 9: 
{
signed short v128;
unsigned char v129;
v128 = v124 - -3;
v129 = v127 - v127;
v29 (v128, v129);
}
break;
case 11: 
return -2;
default: abort ();
}
}
}
}

signed short v19 (signed char v130, unsigned int v131, unsigned short v132, signed short v133)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
signed char v136 = -3;
unsigned int v135 = 6U;
unsigned char v134 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (void)
{
{
for (;;) {
unsigned short v139 = 1;
signed int v138 = 1;
signed char v137 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
