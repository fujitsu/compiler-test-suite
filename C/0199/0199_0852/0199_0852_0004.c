#include <stdlib.h>
extern signed int v1 (signed short);
extern signed int (*v2) (signed short);
extern unsigned char v3 (signed short);
extern unsigned char (*v4) (signed short);
static signed short v5 (signed int, unsigned char);
static signed short (*v6) (signed int, unsigned char) = v5;
extern signed short v7 (unsigned int, signed char, signed int);
extern signed short (*v8) (unsigned int, signed char, signed int);
signed char v13 (signed int, signed short);
signed char (*v14) (signed int, signed short) = v13;
unsigned int v15 (unsigned int, unsigned char);
unsigned int (*v16) (unsigned int, unsigned char) = v15;
extern signed char v17 (unsigned short, unsigned int, unsigned char);
extern signed char (*v18) (unsigned short, unsigned int, unsigned char);
signed char v19 (signed char, signed char);
signed char (*v20) (signed char, signed char) = v19;
extern void v21 (unsigned char, signed int);
extern void (*v22) (unsigned char, signed int);
extern unsigned char v23 (unsigned char, signed int);
extern unsigned char (*v24) (unsigned char, signed int);
extern signed char v25 (unsigned int, signed char);
extern signed char (*v26) (unsigned int, signed char);
static signed short v27 (unsigned char, signed char, signed char);
static signed short (*v28) (unsigned char, signed char, signed char) = v27;
void v29 (unsigned int, signed int);
void (*v30) (unsigned int, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v111 = 0;
signed char v110 = -2;
signed int v109 = -3;

void v29 (unsigned int v112, signed int v113)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
signed char v116 = 2;
unsigned char v115 = 7;
unsigned int v114 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v27 (unsigned char v117, signed char v118, signed char v119)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
signed short v122 = 1;
unsigned char v121 = 7;
signed short v120 = 0;
trace++;
switch (trace)
{
case 5: 
return v122;
default: abort ();
}
}
}
}

signed char v19 (signed char v123, signed char v124)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned short v127 = 0;
signed int v126 = -2;
unsigned int v125 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v15 (unsigned int v128, unsigned char v129)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned char v132 = 3;
unsigned char v131 = 2;
signed int v130 = -4;
trace++;
switch (trace)
{
case 4: 
{
unsigned char v133;
signed char v134;
signed char v135;
signed short v136;
v133 = 4 - 1;
v134 = -3 + 0;
v135 = 1 - 0;
v136 = v27 (v133, v134, v135);
history[history_index++] = (int)v136;
}
break;
case 6: 
{
signed short v137;
signed int v138;
v137 = 0 - -4;
v138 = v1 (v137);
history[history_index++] = (int)v138;
}
break;
case 16: 
return v128;
default: abort ();
}
}
}
}

signed char v13 (signed int v139, signed short v140)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
signed int v143 = -3;
signed char v142 = -1;
signed int v141 = 1;
trace++;
switch (trace)
{
case 10: 
{
signed int v144;
unsigned char v145;
signed short v146;
v144 = 1 - v139;
v145 = 4 - 0;
v146 = v5 (v144, v145);
history[history_index++] = (int)v146;
}
break;
case 12: 
return 0;
default: abort ();
}
}
}
}

static signed short v5 (signed int v147, unsigned char v148)
{
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
{
for (;;) {
signed short v151 = 1;
signed int v150 = -4;
unsigned int v149 = 0U;
trace++;
switch (trace)
{
case 11: 
return v151;
default: abort ();
}
}
}
}
