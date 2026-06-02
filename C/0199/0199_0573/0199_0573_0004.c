#include <stdlib.h>
extern unsigned int v1 (signed int, signed short, unsigned int);
extern unsigned int (*v2) (signed int, signed short, unsigned int);
extern void v3 (signed char, unsigned short, unsigned short);
extern void (*v4) (signed char, unsigned short, unsigned short);
extern void v5 (signed short, signed int, signed int, signed short);
extern void (*v6) (signed short, signed int, signed int, signed short);
extern unsigned short v7 (unsigned short, unsigned short, unsigned char);
extern unsigned short (*v8) (unsigned short, unsigned short, unsigned char);
extern void v9 (void);
extern void (*v10) (void);
signed int v11 (unsigned char);
signed int (*v12) (unsigned char) = v11;
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
void v15 (void);
void (*v16) (void) = v15;
extern unsigned char v17 (signed short, unsigned char, unsigned char, signed char);
extern unsigned char (*v18) (signed short, unsigned char, unsigned char, signed char);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern signed int v21 (signed int, signed int, signed char);
extern signed int (*v22) (signed int, signed int, signed char);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern unsigned short v25 (unsigned char, signed char, signed char);
extern unsigned short (*v26) (unsigned char, signed char, signed char);
extern unsigned char v27 (unsigned char, signed int);
extern unsigned char (*v28) (unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v118 = 1;
signed int v117 = -3;
signed short v116 = 2;

void v15 (void)
{
{
for (;;) {
unsigned short v121 = 2;
signed short v120 = 3;
signed int v119 = 2;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v122;
v122 = v19 ();
history[history_index++] = (int)v122;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

signed int v11 (unsigned char v123)
{
history[history_index++] = (int)v123;
{
for (;;) {
unsigned int v126 = 0U;
unsigned char v125 = 6;
signed char v124 = 1;
trace++;
switch (trace)
{
case 4: 
{
unsigned short v127;
unsigned short v128;
unsigned char v129;
unsigned short v130;
v127 = 2 + 2;
v128 = 4 + 2;
v129 = v123 + v123;
v130 = v7 (v127, v128, v129);
history[history_index++] = (int)v130;
}
break;
case 6: 
{
unsigned short v131;
unsigned short v132;
unsigned char v133;
unsigned short v134;
v131 = 0 + 2;
v132 = 7 + 4;
v133 = v123 + v125;
v134 = v7 (v131, v132, v133);
history[history_index++] = (int)v134;
}
break;
case 8: 
{
unsigned short v135;
unsigned short v136;
unsigned char v137;
unsigned short v138;
v135 = 2 + 3;
v136 = 1 + 4;
v137 = v123 - v125;
v138 = v7 (v135, v136, v137);
history[history_index++] = (int)v138;
}
break;
case 10: 
return -4;
default: abort ();
}
}
}
}
