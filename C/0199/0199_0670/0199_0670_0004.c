#include <stdlib.h>
extern unsigned short v1 (signed short);
extern unsigned short (*v2) (signed short);
signed short v3 (unsigned short, signed short, unsigned int, signed char);
signed short (*v4) (unsigned short, signed short, unsigned int, signed char) = v3;
extern signed char v5 (unsigned char);
extern signed char (*v6) (unsigned char);
signed short v7 (unsigned short, signed char);
signed short (*v8) (unsigned short, signed char) = v7;
extern unsigned short v9 (unsigned char, unsigned char, unsigned short);
extern unsigned short (*v10) (unsigned char, unsigned char, unsigned short);
extern signed char v11 (signed short, signed int, signed int, signed short);
extern signed char (*v12) (signed short, signed int, signed int, signed short);
extern unsigned short v13 (unsigned char, unsigned int);
extern unsigned short (*v14) (unsigned char, unsigned int);
void v15 (unsigned char, signed int, unsigned short);
void (*v16) (unsigned char, signed int, unsigned short) = v15;
extern unsigned char v17 (unsigned short, unsigned int, unsigned char, signed char);
extern unsigned char (*v18) (unsigned short, unsigned int, unsigned char, signed char);
extern signed int v19 (unsigned short);
extern signed int (*v20) (unsigned short);
extern unsigned int v21 (unsigned int, unsigned char, unsigned char);
extern unsigned int (*v22) (unsigned int, unsigned char, unsigned char);
signed int v23 (void);
signed int (*v24) (void) = v23;
signed int v25 (signed int);
signed int (*v26) (signed int) = v25;
extern unsigned char v27 (unsigned short, signed char);
extern unsigned char (*v28) (unsigned short, signed char);
signed int v29 (unsigned int, unsigned char, unsigned short, unsigned char);
signed int (*v30) (unsigned int, unsigned char, unsigned short, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v119 = 2;
signed short v118 = -4;
unsigned int v117 = 7U;

signed int v29 (unsigned int v120, unsigned char v121, unsigned short v122, unsigned char v123)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
signed int v126 = -3;
signed short v125 = -3;
signed int v124 = -1;
trace++;
switch (trace)
{
case 10: 
{
unsigned char v127;
unsigned int v128;
unsigned short v129;
v127 = 7 + 1;
v128 = v120 + 5U;
v129 = v13 (v127, v128);
history[history_index++] = (int)v129;
}
break;
case 12: 
return v124;
default: abort ();
}
}
}
}

signed int v25 (signed int v130)
{
history[history_index++] = (int)v130;
{
for (;;) {
unsigned int v133 = 0U;
unsigned short v132 = 4;
signed int v131 = -1;
trace++;
switch (trace)
{
case 5: 
return 0;
default: abort ();
}
}
}
}

signed int v23 (void)
{
{
for (;;) {
unsigned int v136 = 6U;
unsigned char v135 = 7;
unsigned int v134 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (unsigned char v137, signed int v138, unsigned short v139)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
unsigned short v142 = 2;
signed short v141 = 0;
unsigned char v140 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned short v143, signed char v144)
{
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
{
for (;;) {
unsigned int v147 = 6U;
unsigned int v146 = 0U;
unsigned short v145 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (unsigned short v148, signed short v149, unsigned int v150, signed char v151)
{
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
{
for (;;) {
unsigned int v154 = 1U;
unsigned int v153 = 6U;
signed int v152 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
