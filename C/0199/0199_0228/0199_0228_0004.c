#include <stdlib.h>
extern unsigned char v1 (void);
extern unsigned char (*v2) (void);
extern void v3 (signed char, unsigned short);
extern void (*v4) (signed char, unsigned short);
signed char v5 (signed short, signed char, signed char, unsigned char);
signed char (*v6) (signed short, signed char, signed char, unsigned char) = v5;
signed short v7 (void);
signed short (*v8) (void) = v7;
extern signed char v9 (signed char, signed char);
extern signed char (*v10) (signed char, signed char);
extern signed short v11 (signed int, unsigned int);
extern signed short (*v12) (signed int, unsigned int);
static unsigned char v13 (signed int, signed int);
static unsigned char (*v14) (signed int, signed int) = v13;
extern signed short v15 (unsigned short, unsigned char, unsigned short);
extern signed short (*v16) (unsigned short, unsigned char, unsigned short);
extern signed short v17 (signed int, unsigned int, signed short);
extern signed short (*v18) (signed int, unsigned int, signed short);
extern unsigned int v19 (unsigned char, unsigned int, signed char, unsigned short);
extern unsigned int (*v20) (unsigned char, unsigned int, signed char, unsigned short);
unsigned short v21 (void);
unsigned short (*v22) (void) = v21;
extern signed char v23 (signed char, unsigned short, unsigned char);
extern signed char (*v24) (signed char, unsigned short, unsigned char);
extern signed short v25 (unsigned short, unsigned char, signed int);
extern signed short (*v26) (unsigned short, unsigned char, signed int);
static void v27 (signed int);
static void (*v28) (signed int) = v27;
extern signed char v29 (signed short, unsigned int, signed short);
extern signed char (*v30) (signed short, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v113 = 6;
unsigned char v112 = 2;
unsigned short v111 = 0;

static void v27 (signed int v114)
{
history[history_index++] = (int)v114;
{
for (;;) {
signed short v117 = -2;
unsigned short v116 = 6;
signed char v115 = -3;
trace++;
switch (trace)
{
case 11: 
return;
default: abort ();
}
}
}
}

unsigned short v21 (void)
{
{
for (;;) {
unsigned short v120 = 2;
unsigned short v119 = 1;
signed char v118 = 2;
trace++;
switch (trace)
{
case 10: 
{
signed int v121;
v121 = -2 + 0;
v27 (v121);
}
break;
case 12: 
return v119;
default: abort ();
}
}
}
}

static unsigned char v13 (signed int v122, signed int v123)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
unsigned char v126 = 1;
signed char v125 = 2;
unsigned short v124 = 2;
trace++;
switch (trace)
{
case 8: 
{
signed int v127;
unsigned int v128;
signed short v129;
signed short v130;
v127 = v123 - 2;
v128 = 3U - 5U;
v129 = -2 + -2;
v130 = v17 (v127, v128, v129);
history[history_index++] = (int)v130;
}
break;
case 14: 
return v126;
default: abort ();
}
}
}
}

signed short v7 (void)
{
{
for (;;) {
unsigned int v133 = 1U;
signed int v132 = -3;
unsigned int v131 = 6U;
trace++;
switch (trace)
{
case 5: 
{
unsigned short v134;
unsigned char v135;
unsigned short v136;
signed short v137;
v134 = 0 + 0;
v135 = 0 - 3;
v136 = 3 - 4;
v137 = v15 (v134, v135, v136);
history[history_index++] = (int)v137;
}
break;
case 7: 
{
signed int v138;
signed int v139;
unsigned char v140;
v138 = v132 + -2;
v139 = -1 - -2;
v140 = v13 (v138, v139);
history[history_index++] = (int)v140;
}
break;
case 15: 
return 3;
default: abort ();
}
}
}
}

signed char v5 (signed short v141, signed char v142, signed char v143, unsigned char v144)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
{
for (;;) {
unsigned int v147 = 5U;
unsigned short v146 = 0;
signed char v145 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
