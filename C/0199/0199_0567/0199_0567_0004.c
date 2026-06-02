#include <stdlib.h>
signed char v1 (signed int);
signed char (*v2) (signed int) = v1;
extern unsigned int v3 (signed int, signed int, signed short);
extern unsigned int (*v4) (signed int, signed int, signed short);
unsigned char v5 (unsigned short, unsigned short);
unsigned char (*v6) (unsigned short, unsigned short) = v5;
extern signed char v7 (signed int, signed short, unsigned int, signed char);
extern signed char (*v8) (signed int, signed short, unsigned int, signed char);
extern signed char v9 (unsigned short, signed short, unsigned short, signed int);
extern signed char (*v10) (unsigned short, signed short, unsigned short, signed int);
extern unsigned int v11 (unsigned short, signed short, unsigned int, signed char);
extern unsigned int (*v12) (unsigned short, signed short, unsigned int, signed char);
void v13 (unsigned char, signed char);
void (*v14) (unsigned char, signed char) = v13;
extern unsigned int v15 (signed int);
extern unsigned int (*v16) (signed int);
extern void v17 (unsigned int);
extern void (*v18) (unsigned int);
extern unsigned int v19 (signed short, unsigned int, unsigned int, signed char);
extern unsigned int (*v20) (signed short, unsigned int, unsigned int, signed char);
extern signed short v21 (unsigned short, unsigned short, signed char);
extern signed short (*v22) (unsigned short, unsigned short, signed char);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern unsigned char v25 (unsigned char, unsigned char);
extern unsigned char (*v26) (unsigned char, unsigned char);
static unsigned char v27 (signed short, unsigned int, signed char);
static unsigned char (*v28) (signed short, unsigned int, signed char) = v27;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v114 = 2U;
signed short v113 = -3;
unsigned char v112 = 2;

static unsigned char v27 (signed short v115, unsigned int v116, signed char v117)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned int v120 = 3U;
unsigned char v119 = 4;
unsigned short v118 = 2;
trace++;
switch (trace)
{
case 1: 
return v119;
default: abort ();
}
}
}
}

void v13 (unsigned char v121, signed char v122)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
signed char v125 = -2;
signed char v124 = 1;
signed int v123 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned short v126, unsigned short v127)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
signed short v130 = 2;
unsigned short v129 = 2;
signed char v128 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (signed int v131)
{
history[history_index++] = (int)v131;
{
for (;;) {
unsigned short v134 = 0;
signed int v133 = 3;
signed short v132 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed short v135;
unsigned int v136;
signed char v137;
unsigned char v138;
v135 = 1 + 3;
v136 = 2U - 5U;
v137 = 3 - -1;
v138 = v27 (v135, v136, v137);
history[history_index++] = (int)v138;
}
break;
case 2: 
{
unsigned short v139;
v139 = v23 ();
history[history_index++] = (int)v139;
}
break;
case 4: 
{
unsigned short v140;
unsigned short v141;
signed char v142;
signed short v143;
v140 = v134 - 6;
v141 = v134 - v134;
v142 = 0 + 2;
v143 = v21 (v140, v141, v142);
history[history_index++] = (int)v143;
}
break;
case 6: 
{
signed short v144;
unsigned int v145;
unsigned int v146;
signed char v147;
unsigned int v148;
v144 = 0 + -2;
v145 = 2U + 6U;
v146 = 3U + 2U;
v147 = 2 + -2;
v148 = v19 (v144, v145, v146, v147);
history[history_index++] = (int)v148;
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}
