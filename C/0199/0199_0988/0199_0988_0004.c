#include <stdlib.h>
extern unsigned char v1 (signed int);
extern unsigned char (*v2) (signed int);
extern unsigned short v3 (unsigned char, signed char, signed char);
extern unsigned short (*v4) (unsigned char, signed char, signed char);
void v5 (unsigned int, signed short);
void (*v6) (unsigned int, signed short) = v5;
extern signed char v7 (signed short, signed short, unsigned short);
extern signed char (*v8) (signed short, signed short, unsigned short);
static void v9 (void);
static void (*v10) (void) = v9;
extern void v11 (signed short, unsigned short);
extern void (*v12) (signed short, unsigned short);
extern unsigned char v13 (signed int, unsigned short, signed short, signed int);
extern unsigned char (*v14) (signed int, unsigned short, signed short, signed int);
void v15 (unsigned int, unsigned short, unsigned int, signed int);
void (*v16) (unsigned int, unsigned short, unsigned int, signed int) = v15;
extern unsigned short v17 (unsigned char, unsigned int, unsigned short, unsigned int);
extern unsigned short (*v18) (unsigned char, unsigned int, unsigned short, unsigned int);
void v19 (unsigned short, signed short);
void (*v20) (unsigned short, signed short) = v19;
extern void v21 (void);
extern void (*v22) (void);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed short v25 (signed short, signed int, unsigned short);
extern signed short (*v26) (signed short, signed int, unsigned short);
extern unsigned int v27 (unsigned char, signed int, unsigned int, signed int);
extern unsigned int (*v28) (unsigned char, signed int, unsigned int, signed int);
extern signed short v29 (unsigned int);
extern signed short (*v30) (unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v116 = 6;
unsigned int v115 = 1U;
unsigned short v114 = 6;

void v19 (unsigned short v117, signed short v118)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
unsigned char v121 = 3;
unsigned char v120 = 2;
signed short v119 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (unsigned int v122, unsigned short v123, unsigned int v124, signed int v125)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
unsigned short v128 = 4;
signed int v127 = -4;
signed int v126 = -2;
trace++;
switch (trace)
{
case 1: 
{
v9 ();
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

static void v9 (void)
{
{
for (;;) {
unsigned char v131 = 7;
signed int v130 = -2;
signed short v129 = 1;
trace++;
switch (trace)
{
case 2: 
{
unsigned char v132;
signed int v133;
unsigned int v134;
signed int v135;
unsigned int v136;
v132 = 7 - 1;
v133 = -3 + 0;
v134 = 6U - 4U;
v135 = 3 - v130;
v136 = v27 (v132, v133, v134, v135);
history[history_index++] = (int)v136;
}
break;
case 4: 
{
unsigned char v137;
unsigned int v138;
unsigned short v139;
unsigned int v140;
unsigned short v141;
v137 = v131 + 7;
v138 = 0U - 4U;
v139 = 3 - 6;
v140 = 3U + 5U;
v141 = v17 (v137, v138, v139, v140);
history[history_index++] = (int)v141;
}
break;
case 8: 
{
unsigned char v142;
signed int v143;
unsigned int v144;
signed int v145;
unsigned int v146;
v142 = v131 + v131;
v143 = -1 - v130;
v144 = 4U - 0U;
v145 = v130 + -1;
v146 = v27 (v142, v143, v144, v145);
history[history_index++] = (int)v146;
}
break;
case 10: 
{
unsigned char v147;
signed int v148;
unsigned int v149;
signed int v150;
unsigned int v151;
v147 = v131 - v131;
v148 = v130 + 0;
v149 = 0U + 7U;
v150 = 3 + -4;
v151 = v27 (v147, v148, v149, v150);
history[history_index++] = (int)v151;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

void v5 (unsigned int v152, signed short v153)
{
history[history_index++] = (int)v152;
history[history_index++] = (int)v153;
{
for (;;) {
signed short v156 = 1;
signed char v155 = 2;
signed int v154 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
