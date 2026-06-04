#include <stdlib.h>
unsigned char v1 (void);
unsigned char (*v2) (void) = v1;
extern signed int v3 (unsigned char, unsigned char, signed int);
extern signed int (*v4) (unsigned char, unsigned char, signed int);
extern signed char v5 (unsigned short);
extern signed char (*v6) (unsigned short);
extern unsigned char v7 (unsigned char, signed short);
extern unsigned char (*v8) (unsigned char, signed short);
extern unsigned char v9 (unsigned char, unsigned char, unsigned int);
extern unsigned char (*v10) (unsigned char, unsigned char, unsigned int);
extern void v11 (unsigned short);
extern void (*v12) (unsigned short);
extern void v13 (signed int, unsigned int, signed int);
extern void (*v14) (signed int, unsigned int, signed int);
unsigned char v15 (signed char, unsigned char, unsigned int, unsigned short);
unsigned char (*v16) (signed char, unsigned char, unsigned int, unsigned short) = v15;
signed int v17 (signed char, unsigned short, signed int, unsigned int);
signed int (*v18) (signed char, unsigned short, signed int, unsigned int) = v17;
extern unsigned short v19 (unsigned short, signed char, signed char, unsigned char);
extern unsigned short (*v20) (unsigned short, signed char, signed char, unsigned char);
void v21 (void);
void (*v22) (void) = v21;
static unsigned int v23 (signed int, unsigned int);
static unsigned int (*v24) (signed int, unsigned int) = v23;
extern signed char v25 (signed short, unsigned short, signed short);
extern signed char (*v26) (signed short, unsigned short, signed short);
extern signed char v27 (unsigned char, signed short);
extern signed char (*v28) (unsigned char, signed short);
signed char v29 (unsigned int, signed int, unsigned int);
signed char (*v30) (unsigned int, signed int, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v109 = 2;
unsigned int v108 = 6U;
signed char v107 = -2;

signed char v29 (unsigned int v110, signed int v111, unsigned int v112)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned int v115 = 6U;
signed int v114 = 1;
signed int v113 = -3;
trace++;
switch (trace)
{
case 6: 
return 3;
case 8: 
return 3;
case 10: 
return 2;
default: abort ();
}
}
}
}

static unsigned int v23 (signed int v116, unsigned int v117)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
signed char v120 = -3;
signed short v119 = 3;
unsigned int v118 = 3U;
trace++;
switch (trace)
{
case 1: 
{
signed short v121;
unsigned short v122;
signed short v123;
signed char v124;
v121 = v119 - v119;
v122 = 7 - 4;
v123 = v119 + v119;
v124 = v25 (v121, v122, v123);
history[history_index++] = (int)v124;
}
break;
case 3: 
return v117;
default: abort ();
}
}
}
}

void v21 (void)
{
{
for (;;) {
signed char v127 = 3;
signed char v126 = -3;
signed int v125 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (signed char v128, unsigned short v129, signed int v130, unsigned int v131)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
unsigned char v134 = 5;
signed int v133 = 0;
signed char v132 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (signed char v135, unsigned char v136, unsigned int v137, unsigned short v138)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed char v141 = -4;
signed char v140 = -1;
unsigned int v139 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (void)
{
{
for (;;) {
signed char v144 = -3;
unsigned int v143 = 2U;
unsigned char v142 = 6;
trace++;
switch (trace)
{
case 0: 
{
signed int v145;
unsigned int v146;
unsigned int v147;
v145 = 2 + -4;
v146 = 0U + 0U;
v147 = v23 (v145, v146);
history[history_index++] = (int)v147;
}
break;
case 4: 
{
unsigned char v148;
signed short v149;
signed char v150;
v148 = 7 + v142;
v149 = 0 - 1;
v150 = v27 (v148, v149);
history[history_index++] = (int)v150;
}
break;
case 12: 
return 6;
default: abort ();
}
}
}
}
