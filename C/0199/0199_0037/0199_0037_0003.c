#include <stdlib.h>
extern unsigned int v1 (unsigned short, signed short);
extern unsigned int (*v2) (unsigned short, signed short);
extern signed short v3 (signed short);
extern signed short (*v4) (signed short);
void v5 (signed char, signed char, signed int);
void (*v6) (signed char, signed char, signed int) = v5;
extern unsigned char v7 (signed short, unsigned short, unsigned int, signed short);
extern unsigned char (*v8) (signed short, unsigned short, unsigned int, signed short);
void v9 (unsigned char, signed char, signed short);
void (*v10) (unsigned char, signed char, signed short) = v9;
extern unsigned char v11 (unsigned char, unsigned short, signed short);
extern unsigned char (*v12) (unsigned char, unsigned short, signed short);
extern signed char v13 (unsigned short, signed short, unsigned char, signed int);
extern signed char (*v14) (unsigned short, signed short, unsigned char, signed int);
extern void v15 (unsigned short, signed char, unsigned int, unsigned char);
extern void (*v16) (unsigned short, signed char, unsigned int, unsigned char);
signed int v17 (void);
signed int (*v18) (void) = v17;
extern unsigned int v19 (unsigned int, unsigned int, signed int, unsigned char);
extern unsigned int (*v20) (unsigned int, unsigned int, signed int, unsigned char);
static void v21 (signed int, signed short, unsigned short, unsigned int);
static void (*v22) (signed int, signed short, unsigned short, unsigned int) = v21;
extern unsigned int v23 (unsigned char, signed char, unsigned int, signed int);
extern unsigned int (*v24) (unsigned char, signed char, unsigned int, signed int);
extern signed char v25 (unsigned int);
extern signed char (*v26) (unsigned int);
extern signed char v27 (unsigned char);
extern signed char (*v28) (unsigned char);
extern void v29 (signed short, signed int);
extern void (*v30) (signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v107 = -2;
signed short v106 = -2;
unsigned short v105 = 2;

static void v21 (signed int v108, signed short v109, unsigned short v110, unsigned int v111)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
signed int v114 = 0;
unsigned int v113 = 5U;
signed int v112 = 1;
trace++;
switch (trace)
{
case 6: 
return;
default: abort ();
}
}
}
}

signed int v17 (void)
{
{
for (;;) {
signed short v117 = -1;
unsigned short v116 = 0;
unsigned int v115 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (unsigned char v118, signed char v119, signed short v120)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
unsigned char v123 = 2;
signed char v122 = -1;
signed int v121 = -1;
trace++;
switch (trace)
{
case 5: 
{
signed int v124;
signed short v125;
unsigned short v126;
unsigned int v127;
v124 = v121 + -2;
v125 = -1 + 2;
v126 = 1 + 5;
v127 = 3U - 7U;
v21 (v124, v125, v126, v127);
}
break;
case 7: 
{
unsigned char v128;
signed char v129;
unsigned int v130;
signed int v131;
unsigned int v132;
v128 = v118 - 4;
v129 = 3 + v119;
v130 = 1U + 3U;
v131 = v121 - -4;
v132 = v23 (v128, v129, v130, v131);
history[history_index++] = (int)v132;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

void v5 (signed char v133, signed char v134, signed int v135)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
signed char v138 = 3;
signed char v137 = -2;
signed int v136 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
