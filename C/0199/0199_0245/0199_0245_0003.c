#include <stdlib.h>
signed short v1 (signed char, unsigned short, signed short, signed char);
signed short (*v2) (signed char, unsigned short, signed short, signed char) = v1;
extern signed int v3 (unsigned short, signed int, unsigned char, unsigned char);
extern signed int (*v4) (unsigned short, signed int, unsigned char, unsigned char);
extern unsigned short v5 (unsigned char, unsigned short, signed short, signed short);
extern unsigned short (*v6) (unsigned char, unsigned short, signed short, signed short);
extern unsigned short v7 (signed char, unsigned char, signed char, unsigned int);
extern unsigned short (*v8) (signed char, unsigned char, signed char, unsigned int);
extern signed char v9 (unsigned int, unsigned int, unsigned short);
extern signed char (*v10) (unsigned int, unsigned int, unsigned short);
unsigned char v11 (unsigned int);
unsigned char (*v12) (unsigned int) = v11;
static void v13 (void);
static void (*v14) (void) = v13;
unsigned int v15 (signed char, signed int, signed int);
unsigned int (*v16) (signed char, signed int, signed int) = v15;
unsigned short v17 (void);
unsigned short (*v18) (void) = v17;
unsigned int v19 (signed short, unsigned short, signed int);
unsigned int (*v20) (signed short, unsigned short, signed int) = v19;
extern signed char v21 (unsigned short);
extern signed char (*v22) (unsigned short);
extern signed char v23 (signed int, unsigned short, unsigned char, unsigned short);
extern signed char (*v24) (signed int, unsigned short, unsigned char, unsigned short);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern void v27 (signed short, signed int, signed short);
extern void (*v28) (signed short, signed int, signed short);
extern unsigned int v29 (signed short, unsigned int);
extern unsigned int (*v30) (signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v100 = 2U;
signed int v99 = -3;
signed short v98 = -3;

unsigned int v19 (signed short v101, unsigned short v102, signed int v103)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed short v106 = 2;
unsigned int v105 = 4U;
unsigned short v104 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v17 (void)
{
{
for (;;) {
unsigned int v109 = 2U;
unsigned short v108 = 6;
signed short v107 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (signed char v110, signed int v111, signed int v112)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
signed char v115 = 3;
signed char v114 = -4;
signed int v113 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v13 (void)
{
{
for (;;) {
unsigned short v118 = 0;
signed char v117 = 1;
unsigned int v116 = 1U;
trace++;
switch (trace)
{
case 10: 
return;
default: abort ();
}
}
}
}

unsigned char v11 (unsigned int v119)
{
history[history_index++] = (int)v119;
{
for (;;) {
unsigned short v122 = 0;
signed int v121 = 2;
unsigned int v120 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed char v123, unsigned short v124, signed short v125, signed char v126)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
signed short v129 = -1;
signed char v128 = -4;
signed char v127 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v130;
unsigned short v131;
signed short v132;
signed short v133;
unsigned short v134;
v130 = 1 + 5;
v131 = v124 - v124;
v132 = v125 - v125;
v133 = -2 - v129;
v134 = v5 (v130, v131, v132, v133);
history[history_index++] = (int)v134;
}
break;
case 2: 
return v125;
case 3: 
{
signed char v135;
unsigned char v136;
signed char v137;
unsigned int v138;
unsigned short v139;
v135 = v126 + v128;
v136 = 7 - 4;
v137 = 0 + v123;
v138 = 7U + 7U;
v139 = v7 (v135, v136, v137, v138);
history[history_index++] = (int)v139;
}
break;
case 9: 
{
v13 ();
}
break;
case 11: 
return -4;
default: abort ();
}
}
}
}
