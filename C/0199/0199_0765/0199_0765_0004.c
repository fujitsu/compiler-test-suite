#include <stdlib.h>
void v1 (signed char, signed int, signed int);
void (*v2) (signed char, signed int, signed int) = v1;
extern unsigned int v3 (unsigned short);
extern unsigned int (*v4) (unsigned short);
extern void v5 (signed char, signed char, unsigned int, unsigned int);
extern void (*v6) (signed char, signed char, unsigned int, unsigned int);
extern unsigned int v7 (unsigned int, unsigned int, signed int, unsigned short);
extern unsigned int (*v8) (unsigned int, unsigned int, signed int, unsigned short);
extern unsigned char v9 (signed int, signed short);
extern unsigned char (*v10) (signed int, signed short);
static unsigned int v11 (signed int, unsigned int, unsigned short, signed char);
static unsigned int (*v12) (signed int, unsigned int, unsigned short, signed char) = v11;
extern signed short v13 (unsigned short, unsigned char, signed char);
extern signed short (*v14) (unsigned short, unsigned char, signed char);
extern signed int v15 (unsigned char, signed short, unsigned char, unsigned char);
extern signed int (*v16) (unsigned char, signed short, unsigned char, unsigned char);
extern void v17 (void);
extern void (*v18) (void);
extern unsigned int v19 (signed int, signed short, unsigned int, signed short);
extern unsigned int (*v20) (signed int, signed short, unsigned int, signed short);
extern void v21 (void);
extern void (*v22) (void);
extern void v23 (void);
extern void (*v24) (void);
extern signed short v27 (void);
extern signed short (*v28) (void);
signed char v29 (signed int, unsigned int);
signed char (*v30) (signed int, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v115 = -4;
unsigned char v114 = 2;
signed int v113 = 3;

signed char v29 (signed int v116, unsigned int v117)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned char v120 = 1;
signed int v119 = -3;
signed int v118 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v11 (signed int v121, unsigned int v122, unsigned short v123, signed char v124)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned char v127 = 0;
signed char v126 = -2;
signed short v125 = -2;
trace++;
switch (trace)
{
case 3: 
{
v17 ();
}
break;
case 15: 
return 4U;
default: abort ();
}
}
}
}

void v1 (signed char v128, signed int v129, signed int v130)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
unsigned int v133 = 4U;
unsigned char v132 = 5;
signed char v131 = 0;
trace++;
switch (trace)
{
case 0: 
{
v23 ();
}
break;
case 2: 
{
signed int v134;
unsigned int v135;
unsigned short v136;
signed char v137;
unsigned int v138;
v134 = -2 + 3;
v135 = 3U + v133;
v136 = 7 + 3;
v137 = v131 - v131;
v138 = v11 (v134, v135, v136, v137);
history[history_index++] = (int)v138;
}
break;
case 5: 
{
unsigned char v139;
signed short v140;
unsigned char v141;
unsigned char v142;
signed int v143;
v139 = 2 + 6;
v140 = -1 + -4;
v141 = 2 - 2;
v142 = 4 + v132;
v143 = v15 (v139, v140, v141, v142);
history[history_index++] = (int)v143;
}
break;
case 7: 
{
signed int v144;
signed short v145;
unsigned int v146;
signed short v147;
unsigned int v148;
v144 = v129 + v130;
v145 = -4 - -1;
v146 = v133 - 1U;
v147 = 2 - -2;
v148 = v19 (v144, v145, v146, v147);
history[history_index++] = (int)v148;
}
break;
case 13: 
return;
case 16: 
return;
default: abort ();
}
}
}
}
