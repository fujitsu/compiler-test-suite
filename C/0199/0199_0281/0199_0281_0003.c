#include <stdlib.h>
extern signed int v1 (unsigned short, unsigned int, unsigned short);
extern signed int (*v2) (unsigned short, unsigned int, unsigned short);
extern signed int v3 (signed int);
extern signed int (*v4) (signed int);
unsigned int v5 (signed short, unsigned int);
unsigned int (*v6) (signed short, unsigned int) = v5;
extern signed int v7 (unsigned int);
extern signed int (*v8) (unsigned int);
extern void v9 (signed char, unsigned int, signed char);
extern void (*v10) (signed char, unsigned int, signed char);
extern unsigned short v11 (unsigned char);
extern unsigned short (*v12) (unsigned char);
extern unsigned int v13 (unsigned short, signed char);
extern unsigned int (*v14) (unsigned short, signed char);
extern signed char v15 (signed short, unsigned int, signed int, signed char);
extern signed char (*v16) (signed short, unsigned int, signed int, signed char);
extern void v17 (void);
extern void (*v18) (void);
extern unsigned char v19 (signed int, unsigned short, signed short);
extern unsigned char (*v20) (signed int, unsigned short, signed short);
extern signed char v21 (unsigned short);
extern signed char (*v22) (unsigned short);
extern signed short v23 (void);
extern signed short (*v24) (void);
extern unsigned short v25 (signed int, unsigned int, signed int);
extern unsigned short (*v26) (signed int, unsigned int, signed int);
unsigned char v27 (signed int, signed short);
unsigned char (*v28) (signed int, signed short) = v27;
extern signed char v29 (unsigned int, unsigned char, signed char, unsigned int);
extern signed char (*v30) (unsigned int, unsigned char, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v119 = -4;
unsigned short v118 = 7;
unsigned short v117 = 2;

unsigned char v27 (signed int v120, signed short v121)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
unsigned char v124 = 4;
signed char v123 = 0;
unsigned short v122 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (signed short v125, unsigned int v126)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
signed char v129 = 3;
unsigned char v128 = 7;
signed char v127 = -3;
trace++;
switch (trace)
{
case 1: 
{
signed int v130;
unsigned short v131;
signed short v132;
unsigned char v133;
v130 = 3 + 2;
v131 = 0 + 6;
v132 = -4 - v125;
v133 = v19 (v130, v131, v132);
history[history_index++] = (int)v133;
}
break;
case 13: 
return 4U;
default: abort ();
}
}
}
}
