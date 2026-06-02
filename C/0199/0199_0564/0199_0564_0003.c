#include <stdlib.h>
signed int v1 (void);
signed int (*v2) (void) = v1;
extern unsigned int v3 (unsigned short, signed short, signed int, unsigned char);
extern unsigned int (*v4) (unsigned short, signed short, signed int, unsigned char);
static void v5 (unsigned short, unsigned int);
static void (*v6) (unsigned short, unsigned int) = v5;
extern unsigned short v7 (signed short, unsigned int);
extern unsigned short (*v8) (signed short, unsigned int);
extern unsigned int v9 (unsigned short, signed char, signed int);
extern unsigned int (*v10) (unsigned short, signed char, signed int);
extern signed short v11 (signed char, unsigned short, unsigned short, unsigned char);
extern signed short (*v12) (signed char, unsigned short, unsigned short, unsigned char);
unsigned short v13 (signed short, unsigned short);
unsigned short (*v14) (signed short, unsigned short) = v13;
signed short v15 (signed char, unsigned int);
signed short (*v16) (signed char, unsigned int) = v15;
static signed int v17 (signed char);
static signed int (*v18) (signed char) = v17;
extern void v19 (signed short, signed char, unsigned char);
extern void (*v20) (signed short, signed char, unsigned char);
extern unsigned char v21 (signed char, unsigned int, unsigned char, signed char);
extern unsigned char (*v22) (signed char, unsigned int, unsigned char, signed char);
extern unsigned char v23 (unsigned short, signed int);
extern unsigned char (*v24) (unsigned short, signed int);
extern unsigned short v25 (unsigned int, signed char, unsigned char, unsigned char);
extern unsigned short (*v26) (unsigned int, signed char, unsigned char, unsigned char);
extern unsigned char v27 (unsigned char, signed char);
extern unsigned char (*v28) (unsigned char, signed char);
unsigned char v29 (unsigned short, unsigned short, signed int);
unsigned char (*v30) (unsigned short, unsigned short, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v104 = 6;
unsigned short v103 = 7;
signed int v102 = 0;

unsigned char v29 (unsigned short v105, unsigned short v106, signed int v107)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
unsigned char v110 = 5;
unsigned int v109 = 3U;
unsigned char v108 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v17 (signed char v111)
{
history[history_index++] = (int)v111;
{
for (;;) {
unsigned char v114 = 2;
unsigned short v113 = 7;
signed char v112 = 2;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v115;
signed int v116;
unsigned char v117;
v115 = v113 - 3;
v116 = 1 + -2;
v117 = v23 (v115, v116);
history[history_index++] = (int)v117;
}
break;
case 7: 
{
unsigned short v118;
signed int v119;
unsigned char v120;
v118 = v113 + v113;
v119 = 0 - -2;
v120 = v23 (v118, v119);
history[history_index++] = (int)v120;
}
break;
case 13: 
return 0;
default: abort ();
}
}
}
}

signed short v15 (signed char v121, unsigned int v122)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
unsigned char v125 = 7;
signed char v124 = 3;
unsigned char v123 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (signed short v126, unsigned short v127)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
unsigned short v130 = 3;
signed short v129 = 3;
unsigned char v128 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static void v5 (unsigned short v131, unsigned int v132)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
unsigned short v135 = 1;
signed int v134 = -2;
signed int v133 = 2;
trace++;
switch (trace)
{
case 2: 
{
unsigned int v136;
signed char v137;
unsigned char v138;
unsigned char v139;
unsigned short v140;
v136 = v132 + v132;
v137 = 2 - 0;
v138 = 7 - 2;
v139 = 3 - 2;
v140 = v25 (v136, v137, v138, v139);
history[history_index++] = (int)v140;
}
break;
case 4: 
{
signed char v141;
signed int v142;
v141 = 0 + 2;
v142 = v17 (v141);
history[history_index++] = (int)v142;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}

signed int v1 (void)
{
{
for (;;) {
unsigned int v145 = 5U;
unsigned int v144 = 7U;
signed int v143 = -3;
trace++;
switch (trace)
{
case 0: 
return 0;
case 1: 
{
unsigned short v146;
unsigned int v147;
v146 = 6 + 7;
v147 = v144 + 7U;
v5 (v146, v147);
}
break;
case 15: 
return -2;
default: abort ();
}
}
}
}
