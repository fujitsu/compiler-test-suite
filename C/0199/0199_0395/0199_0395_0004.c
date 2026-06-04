#include <stdlib.h>
extern signed char v3 (unsigned short);
extern signed char (*v4) (unsigned short);
signed char v5 (unsigned int);
signed char (*v6) (unsigned int) = v5;
extern unsigned int v7 (signed char, unsigned int, unsigned char);
extern unsigned int (*v8) (signed char, unsigned int, unsigned char);
extern void v9 (signed char, unsigned char);
extern void (*v10) (signed char, unsigned char);
extern unsigned short v11 (unsigned char, unsigned char, unsigned short, signed char);
extern unsigned short (*v12) (unsigned char, unsigned char, unsigned short, signed char);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern unsigned char v15 (signed short, unsigned char);
extern unsigned char (*v16) (signed short, unsigned char);
unsigned char v17 (signed short, signed short);
unsigned char (*v18) (signed short, signed short) = v17;
extern void v19 (void);
extern void (*v20) (void);
unsigned short v21 (unsigned char, unsigned short, unsigned int);
unsigned short (*v22) (unsigned char, unsigned short, unsigned int) = v21;
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern signed int v25 (signed short, signed char, unsigned char);
extern signed int (*v26) (signed short, signed char, unsigned char);
extern signed char v27 (unsigned int, unsigned char);
extern signed char (*v28) (unsigned int, unsigned char);
static void v29 (signed int);
static void (*v30) (signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v110 = 0;
signed short v109 = 3;
signed char v108 = 2;

static void v29 (signed int v111)
{
history[history_index++] = (int)v111;
{
for (;;) {
unsigned char v114 = 7;
unsigned short v113 = 5;
unsigned int v112 = 5U;
trace++;
switch (trace)
{
case 2: 
return;
case 8: 
return;
default: abort ();
}
}
}
}

unsigned short v21 (unsigned char v115, unsigned short v116, unsigned int v117)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned int v120 = 5U;
unsigned int v119 = 6U;
unsigned char v118 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v17 (signed short v121, signed short v122)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
signed int v125 = -2;
signed int v124 = -2;
unsigned short v123 = 1;
trace++;
switch (trace)
{
case 1: 
{
signed int v126;
v126 = v124 - 2;
v29 (v126);
}
break;
case 3: 
{
signed char v127;
unsigned char v128;
v127 = -4 + 1;
v128 = 1 - 5;
v9 (v127, v128);
}
break;
case 5: 
{
signed char v129;
unsigned char v130;
v129 = 3 - 2;
v130 = 6 - 1;
v9 (v129, v130);
}
break;
case 7: 
{
signed int v131;
v131 = 3 + v124;
v29 (v131);
}
break;
case 9: 
{
unsigned short v132;
v132 = v23 ();
history[history_index++] = (int)v132;
}
break;
case 13: 
return 4;
default: abort ();
}
}
}
}

signed char v5 (unsigned int v133)
{
history[history_index++] = (int)v133;
{
for (;;) {
unsigned int v136 = 7U;
signed int v135 = -2;
unsigned char v134 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
