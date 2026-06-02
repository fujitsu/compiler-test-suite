#include <stdlib.h>
signed int v3 (unsigned char, signed short);
signed int (*v4) (unsigned char, signed short) = v3;
extern void v5 (signed char, unsigned int, unsigned char, unsigned char);
extern void (*v6) (signed char, unsigned int, unsigned char, unsigned char);
extern signed int v7 (unsigned char, signed int);
extern signed int (*v8) (unsigned char, signed int);
extern unsigned short v9 (unsigned short, unsigned short, unsigned int, signed char);
extern unsigned short (*v10) (unsigned short, unsigned short, unsigned int, signed char);
signed char v11 (unsigned short, signed short);
signed char (*v12) (unsigned short, signed short) = v11;
extern unsigned int v13 (unsigned char, unsigned char);
extern unsigned int (*v14) (unsigned char, unsigned char);
extern unsigned char v15 (unsigned short);
extern unsigned char (*v16) (unsigned short);
extern signed short v17 (void);
extern signed short (*v18) (void);
extern unsigned char v19 (unsigned char, unsigned short, signed short);
extern unsigned char (*v20) (unsigned char, unsigned short, signed short);
unsigned short v21 (signed int, unsigned int);
unsigned short (*v22) (signed int, unsigned int) = v21;
extern void v23 (unsigned char, unsigned short);
extern void (*v24) (unsigned char, unsigned short);
extern unsigned char v25 (unsigned short, unsigned char, signed char, unsigned short);
extern unsigned char (*v26) (unsigned short, unsigned char, signed char, unsigned short);
extern void v27 (void);
extern void (*v28) (void);
static void v29 (unsigned int, unsigned char, signed short);
static void (*v30) (unsigned int, unsigned char, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v121 = 2;
signed short v120 = -3;
signed char v119 = 0;

static void v29 (unsigned int v122, unsigned char v123, signed short v124)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned char v127 = 4;
unsigned int v126 = 0U;
signed int v125 = 0;
trace++;
switch (trace)
{
case 6: 
return;
case 8: 
return;
default: abort ();
}
}
}
}

unsigned short v21 (signed int v128, unsigned int v129)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
signed int v132 = 2;
unsigned char v131 = 7;
unsigned short v130 = 5;
trace++;
switch (trace)
{
case 1: 
return v130;
case 5: 
{
unsigned int v133;
unsigned char v134;
signed short v135;
v133 = 1U + v129;
v134 = 6 - 3;
v135 = 3 - -4;
v29 (v133, v134, v135);
}
break;
case 7: 
{
unsigned int v136;
unsigned char v137;
signed short v138;
v136 = 6U + v129;
v137 = 2 - v131;
v138 = 1 + -2;
v29 (v136, v137, v138);
}
break;
case 9: 
return v130;
default: abort ();
}
}
}
}

signed char v11 (unsigned short v139, signed short v140)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
unsigned int v143 = 2U;
signed int v142 = -3;
unsigned short v141 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (unsigned char v144, signed short v145)
{
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
{
for (;;) {
unsigned char v148 = 2;
signed short v147 = 0;
unsigned char v146 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
