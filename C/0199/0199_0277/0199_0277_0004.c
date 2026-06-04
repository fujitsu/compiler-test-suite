#include <stdlib.h>
extern signed short v1 (signed short, signed int);
extern signed short (*v2) (signed short, signed int);
signed char v3 (signed char, signed short, unsigned char);
signed char (*v4) (signed char, signed short, unsigned char) = v3;
extern signed short v5 (unsigned short);
extern signed short (*v6) (unsigned short);
signed char v7 (signed int, signed int, unsigned short, signed short);
signed char (*v8) (signed int, signed int, unsigned short, signed short) = v7;
extern signed char v9 (signed short, unsigned short, unsigned char);
extern signed char (*v10) (signed short, unsigned short, unsigned char);
extern signed int v11 (signed int, unsigned int, signed int);
extern signed int (*v12) (signed int, unsigned int, signed int);
void v13 (signed int);
void (*v14) (signed int) = v13;
unsigned short v15 (unsigned short, unsigned int, signed char);
unsigned short (*v16) (unsigned short, unsigned int, signed char) = v15;
signed int v17 (void);
signed int (*v18) (void) = v17;
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
unsigned int v21 (signed short, unsigned short, unsigned short, unsigned short);
unsigned int (*v22) (signed short, unsigned short, unsigned short, unsigned short) = v21;
signed int v23 (unsigned char, unsigned int);
signed int (*v24) (unsigned char, unsigned int) = v23;
extern signed int v25 (unsigned char, unsigned int, unsigned short, unsigned int);
extern signed int (*v26) (unsigned char, unsigned int, unsigned short, unsigned int);
extern signed short v27 (signed char, unsigned int, signed int, unsigned short);
extern signed short (*v28) (signed char, unsigned int, signed int, unsigned short);
extern signed int v29 (unsigned char, unsigned char, signed int);
extern signed int (*v30) (unsigned char, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v115 = 3;
signed int v114 = -3;
unsigned int v113 = 2U;

signed int v23 (unsigned char v116, unsigned int v117)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned int v120 = 0U;
signed short v119 = -2;
unsigned char v118 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v21 (signed short v121, unsigned short v122, unsigned short v123, unsigned short v124)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned int v127 = 6U;
unsigned short v126 = 1;
unsigned int v125 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (void)
{
{
for (;;) {
signed int v130 = -2;
unsigned short v129 = 0;
unsigned int v128 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (unsigned short v131, unsigned int v132, signed char v133)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
unsigned short v136 = 6;
unsigned char v135 = 6;
signed short v134 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v13 (signed int v137)
{
history[history_index++] = (int)v137;
{
for (;;) {
signed short v140 = 0;
unsigned short v139 = 5;
unsigned int v138 = 6U;
trace++;
switch (trace)
{
case 2: 
{
unsigned short v141;
v141 = v19 ();
history[history_index++] = (int)v141;
}
break;
case 4: 
{
unsigned char v142;
unsigned int v143;
unsigned short v144;
unsigned int v145;
signed int v146;
v142 = 4 + 0;
v143 = v138 - v138;
v144 = v139 + 4;
v145 = v138 + 1U;
v146 = v25 (v142, v143, v144, v145);
history[history_index++] = (int)v146;
}
break;
case 6: 
{
unsigned short v147;
v147 = v19 ();
history[history_index++] = (int)v147;
}
break;
case 16: 
return;
default: abort ();
}
}
}
}

signed char v7 (signed int v148, signed int v149, unsigned short v150, signed short v151)
{
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
{
for (;;) {
signed int v154 = 2;
unsigned char v153 = 2;
signed int v152 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (signed char v155, signed short v156, unsigned char v157)
{
history[history_index++] = (int)v155;
history[history_index++] = (int)v156;
history[history_index++] = (int)v157;
{
for (;;) {
signed int v160 = 3;
signed char v159 = 1;
unsigned int v158 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
