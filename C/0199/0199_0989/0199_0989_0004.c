#include <stdlib.h>
extern signed char v3 (signed short, signed short, unsigned int);
extern signed char (*v4) (signed short, signed short, unsigned int);
signed short v5 (signed int, signed int);
signed short (*v6) (signed int, signed int) = v5;
extern void v7 (signed int);
extern void (*v8) (signed int);
extern unsigned short v9 (signed int);
extern unsigned short (*v10) (signed int);
extern signed int v11 (signed short, signed int);
extern signed int (*v12) (signed short, signed int);
extern signed short v13 (unsigned short, unsigned int, unsigned int);
extern signed short (*v14) (unsigned short, unsigned int, unsigned int);
extern unsigned int v15 (signed short, signed short, unsigned char);
extern unsigned int (*v16) (signed short, signed short, unsigned char);
extern signed short v17 (signed short, unsigned char, unsigned char, signed char);
extern signed short (*v18) (signed short, unsigned char, unsigned char, signed char);
unsigned int v19 (unsigned short);
unsigned int (*v20) (unsigned short) = v19;
signed int v21 (unsigned int, unsigned short, signed int);
signed int (*v22) (unsigned int, unsigned short, signed int) = v21;
unsigned char v23 (unsigned int, signed short, signed char, unsigned char);
unsigned char (*v24) (unsigned int, signed short, signed char, unsigned char) = v23;
extern unsigned char v25 (unsigned char, unsigned short, unsigned short);
extern unsigned char (*v26) (unsigned char, unsigned short, unsigned short);
unsigned char v27 (unsigned char, signed short, unsigned short, signed short);
unsigned char (*v28) (unsigned char, signed short, unsigned short, signed short) = v27;
static signed char v29 (unsigned int);
static signed char (*v30) (unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v121 = 1;
signed short v120 = -4;
unsigned short v119 = 7;

static signed char v29 (unsigned int v122)
{
history[history_index++] = (int)v122;
{
for (;;) {
unsigned char v125 = 1;
unsigned char v124 = 3;
unsigned char v123 = 2;
trace++;
switch (trace)
{
case 10: 
return -1;
default: abort ();
}
}
}
}

unsigned char v27 (unsigned char v126, signed short v127, unsigned short v128, signed short v129)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned int v132 = 2U;
signed int v131 = 0;
unsigned char v130 = 0;
trace++;
switch (trace)
{
case 2: 
{
signed short v133;
signed int v134;
signed int v135;
v133 = v129 - 3;
v134 = -4 - 1;
v135 = v11 (v133, v134);
history[history_index++] = (int)v135;
}
break;
case 4: 
return v126;
default: abort ();
}
}
}
}

unsigned char v23 (unsigned int v136, signed short v137, signed char v138, unsigned char v139)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
signed int v142 = 1;
unsigned char v141 = 3;
signed int v140 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (unsigned int v143, unsigned short v144, signed int v145)
{
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
{
for (;;) {
unsigned short v148 = 3;
signed int v147 = 0;
unsigned short v146 = 6;
trace++;
switch (trace)
{
case 9: 
{
unsigned int v149;
signed char v150;
v149 = 0U - 2U;
v150 = v29 (v149);
history[history_index++] = (int)v150;
}
break;
case 11: 
return v147;
default: abort ();
}
}
}
}

unsigned int v19 (unsigned short v151)
{
history[history_index++] = (int)v151;
{
for (;;) {
signed short v154 = -3;
signed short v153 = -1;
signed int v152 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (signed int v155, signed int v156)
{
history[history_index++] = (int)v155;
history[history_index++] = (int)v156;
{
for (;;) {
unsigned short v159 = 6;
unsigned short v158 = 2;
signed char v157 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
