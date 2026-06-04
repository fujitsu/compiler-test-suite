#include <stdlib.h>
extern unsigned int v3 (void);
extern unsigned int (*v4) (void);
extern void v5 (unsigned int);
extern void (*v6) (unsigned int);
void v7 (unsigned short, signed int, unsigned short);
void (*v8) (unsigned short, signed int, unsigned short) = v7;
extern unsigned short v9 (signed int, unsigned short);
extern unsigned short (*v10) (signed int, unsigned short);
extern unsigned short v11 (unsigned short, unsigned int);
extern unsigned short (*v12) (unsigned short, unsigned int);
extern signed short v13 (signed short, signed short, signed char, signed int);
extern signed short (*v14) (signed short, signed short, signed char, signed int);
extern signed char v15 (signed char, signed int, signed short, signed char);
extern signed char (*v16) (signed char, signed int, signed short, signed char);
extern unsigned char v17 (unsigned int, signed int, signed short, signed char);
extern unsigned char (*v18) (unsigned int, signed int, signed short, signed char);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
unsigned short v21 (signed short, signed short, signed int);
unsigned short (*v22) (signed short, signed short, signed int) = v21;
extern unsigned char v23 (unsigned int, unsigned char, unsigned char);
extern unsigned char (*v24) (unsigned int, unsigned char, unsigned char);
extern unsigned char v25 (signed int, unsigned int, signed short, unsigned char);
extern unsigned char (*v26) (signed int, unsigned int, signed short, unsigned char);
extern signed short v27 (unsigned int, unsigned char, unsigned int, signed short);
extern signed short (*v28) (unsigned int, unsigned char, unsigned int, signed short);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v121 = 5;
signed int v120 = -4;
signed char v119 = 2;

unsigned short v21 (signed short v122, signed short v123, signed int v124)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed short v127 = -2;
signed short v126 = 3;
signed int v125 = 2;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v128;
unsigned char v129;
unsigned int v130;
signed short v131;
signed short v132;
v128 = 4U + 6U;
v129 = 1 - 0;
v130 = 3U - 1U;
v131 = v122 - v127;
v132 = v27 (v128, v129, v130, v131);
history[history_index++] = (int)v132;
}
break;
case 13: 
return 0;
default: abort ();
}
}
}
}

void v7 (unsigned short v133, signed int v134, unsigned short v135)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
signed short v138 = 1;
unsigned short v137 = 7;
unsigned short v136 = 1;
trace++;
switch (trace)
{
case 1: 
return;
default: abort ();
}
}
}
}
