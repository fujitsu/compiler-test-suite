#include <stdlib.h>
extern unsigned short v1 (unsigned char, signed char, unsigned char, signed short);
extern unsigned short (*v2) (unsigned char, signed char, unsigned char, signed short);
extern signed short v3 (void);
extern signed short (*v4) (void);
extern void v5 (unsigned char, signed char);
extern void (*v6) (unsigned char, signed char);
signed short v7 (unsigned short);
signed short (*v8) (unsigned short) = v7;
void v9 (unsigned char, unsigned int, unsigned char, unsigned char);
void (*v10) (unsigned char, unsigned int, unsigned char, unsigned char) = v9;
unsigned int v11 (void);
unsigned int (*v12) (void) = v11;
extern unsigned short v13 (unsigned char, signed short, signed short);
extern unsigned short (*v14) (unsigned char, signed short, signed short);
extern unsigned int v15 (unsigned char, unsigned int, signed short);
extern unsigned int (*v16) (unsigned char, unsigned int, signed short);
extern signed int v17 (unsigned int, unsigned short, unsigned int, signed char);
extern signed int (*v18) (unsigned int, unsigned short, unsigned int, signed char);
extern signed int v19 (unsigned char, signed int);
extern signed int (*v20) (unsigned char, signed int);
extern unsigned short v21 (signed short, unsigned int, unsigned short, signed int);
extern unsigned short (*v22) (signed short, unsigned int, unsigned short, signed int);
signed int v23 (void);
signed int (*v24) (void) = v23;
extern signed char v25 (void);
extern signed char (*v26) (void);
extern signed short v27 (signed char, unsigned int, unsigned char, signed char);
extern signed short (*v28) (signed char, unsigned int, unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v118 = 0;
signed char v117 = 0;
unsigned short v116 = 1;

signed int v23 (void)
{
{
for (;;) {
unsigned short v121 = 3;
signed int v120 = 1;
signed short v119 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (void)
{
{
for (;;) {
unsigned short v124 = 0;
unsigned short v123 = 1;
signed char v122 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (unsigned char v125, unsigned int v126, unsigned char v127, unsigned char v128)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
signed char v131 = -2;
unsigned short v130 = 1;
unsigned char v129 = 4;
trace++;
switch (trace)
{
case 2: 
{
signed char v132;
v132 = v25 ();
history[history_index++] = (int)v132;
}
break;
case 4: 
{
signed char v133;
v133 = v25 ();
history[history_index++] = (int)v133;
}
break;
case 6: 
{
unsigned char v134;
unsigned int v135;
signed short v136;
unsigned int v137;
v134 = v127 - v129;
v135 = v126 - v126;
v136 = -2 - 2;
v137 = v15 (v134, v135, v136);
history[history_index++] = (int)v137;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

signed short v7 (unsigned short v138)
{
history[history_index++] = (int)v138;
{
for (;;) {
signed char v141 = 1;
signed int v140 = 1;
unsigned int v139 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
