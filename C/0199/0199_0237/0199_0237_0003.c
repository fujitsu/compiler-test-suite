#include <stdlib.h>
unsigned short v1 (void);
unsigned short (*v2) (void) = v1;
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern void v5 (signed int, signed short, signed char);
extern void (*v6) (signed int, signed short, signed char);
signed short v7 (void);
signed short (*v8) (void) = v7;
extern unsigned char v9 (signed int, unsigned int);
extern unsigned char (*v10) (signed int, unsigned int);
extern signed int v11 (signed int, signed int, unsigned int);
extern signed int (*v12) (signed int, signed int, unsigned int);
extern signed char v13 (signed short, unsigned int, unsigned short);
extern signed char (*v14) (signed short, unsigned int, unsigned short);
unsigned int v15 (unsigned char, unsigned int, unsigned short);
unsigned int (*v16) (unsigned char, unsigned int, unsigned short) = v15;
extern signed short v17 (signed char, unsigned char, unsigned short, signed int);
extern signed short (*v18) (signed char, unsigned char, unsigned short, signed int);
extern void v19 (signed short, unsigned char, unsigned char, signed int);
extern void (*v20) (signed short, unsigned char, unsigned char, signed int);
extern unsigned int v21 (unsigned short, unsigned int, signed char, unsigned int);
extern unsigned int (*v22) (unsigned short, unsigned int, signed char, unsigned int);
void v23 (unsigned short, unsigned int, signed char, unsigned int);
void (*v24) (unsigned short, unsigned int, signed char, unsigned int) = v23;
extern signed char v25 (signed int, signed char, signed int);
extern signed char (*v26) (signed int, signed char, signed int);
extern unsigned short v27 (unsigned char, signed char, unsigned short, unsigned short);
extern unsigned short (*v28) (unsigned char, signed char, unsigned short, unsigned short);
static void v29 (unsigned short, signed short, signed int, unsigned char);
static void (*v30) (unsigned short, signed short, signed int, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v102 = 1;
unsigned short v101 = 6;
signed int v100 = 2;

static void v29 (unsigned short v103, signed short v104, signed int v105, unsigned char v106)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed short v109 = 3;
unsigned short v108 = 7;
signed short v107 = 0;
trace++;
switch (trace)
{
case 9: 
{
signed char v110;
unsigned char v111;
unsigned short v112;
signed int v113;
signed short v114;
v110 = 2 + 1;
v111 = 0 - 3;
v112 = 5 + v108;
v113 = 1 - 1;
v114 = v17 (v110, v111, v112, v113);
history[history_index++] = (int)v114;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

void v23 (unsigned short v115, unsigned int v116, signed char v117, unsigned int v118)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed char v121 = -4;
signed short v120 = 0;
unsigned char v119 = 4;
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

unsigned int v15 (unsigned char v122, unsigned int v123, unsigned short v124)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed int v127 = 1;
signed int v126 = -1;
unsigned char v125 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (void)
{
{
for (;;) {
unsigned short v130 = 4;
unsigned int v129 = 1U;
signed int v128 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (void)
{
{
for (;;) {
unsigned int v133 = 1U;
unsigned short v132 = 0;
signed int v131 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed int v134;
signed short v135;
signed char v136;
v134 = 2 + 2;
v135 = -4 - 3;
v136 = 3 + 2;
v5 (v134, v135, v136);
}
break;
case 2: 
{
signed int v137;
unsigned int v138;
unsigned char v139;
v137 = v131 + v131;
v138 = v133 - 0U;
v139 = v9 (v137, v138);
history[history_index++] = (int)v139;
}
break;
case 4: 
{
signed short v140;
unsigned int v141;
unsigned short v142;
signed char v143;
v140 = -2 + -2;
v141 = v133 + v133;
v142 = 5 - v132;
v143 = v13 (v140, v141, v142);
history[history_index++] = (int)v143;
}
break;
case 8: 
{
unsigned short v144;
signed short v145;
signed int v146;
unsigned char v147;
v144 = 2 + 2;
v145 = 0 - 1;
v146 = -4 - v131;
v147 = 0 - 6;
v29 (v144, v145, v146, v147);
}
break;
case 14: 
return 7;
default: abort ();
}
}
}
}
