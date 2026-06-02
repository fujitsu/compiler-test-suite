#include <stdlib.h>
signed char v1 (unsigned char, signed int, unsigned short, signed int);
signed char (*v2) (unsigned char, signed int, unsigned short, signed int) = v1;
extern signed char v3 (void);
extern signed char (*v4) (void);
extern signed short v5 (unsigned int);
extern signed short (*v6) (unsigned int);
extern unsigned int v7 (signed char);
extern unsigned int (*v8) (signed char);
extern unsigned char v9 (unsigned int);
extern unsigned char (*v10) (unsigned int);
unsigned short v11 (void);
unsigned short (*v12) (void) = v11;
extern signed int v13 (signed char, unsigned short, unsigned char);
extern signed int (*v14) (signed char, unsigned short, unsigned char);
extern signed char v15 (unsigned int, signed int, unsigned char);
extern signed char (*v16) (unsigned int, signed int, unsigned char);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern signed short v21 (signed int, signed char);
extern signed short (*v22) (signed int, signed char);
extern signed int v23 (unsigned int);
extern signed int (*v24) (unsigned int);
extern unsigned char v25 (unsigned char, signed int, signed short, unsigned short);
extern unsigned char (*v26) (unsigned char, signed int, signed short, unsigned short);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v120 = 3;
signed char v119 = 1;
signed int v118 = -2;

unsigned short v11 (void)
{
{
for (;;) {
signed char v123 = -1;
unsigned int v122 = 3U;
signed int v121 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (unsigned char v124, signed int v125, unsigned short v126, signed int v127)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
signed int v130 = -3;
unsigned short v129 = 7;
signed char v128 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v131;
signed int v132;
signed short v133;
unsigned short v134;
unsigned char v135;
v131 = v124 + 4;
v132 = -4 + v130;
v133 = 0 + -4;
v134 = v126 - v129;
v135 = v25 (v131, v132, v133, v134);
history[history_index++] = (int)v135;
}
break;
case 14: 
return v128;
default: abort ();
}
}
}
}
