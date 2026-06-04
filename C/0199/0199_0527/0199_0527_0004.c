#include <stdlib.h>
extern void v1 (signed short, signed short, unsigned short, unsigned int);
extern void (*v2) (signed short, signed short, unsigned short, unsigned int);
unsigned char v3 (signed short, signed int);
unsigned char (*v4) (signed short, signed int) = v3;
extern signed short v5 (void);
extern signed short (*v6) (void);
extern signed int v7 (unsigned int, signed short, signed short, signed short);
extern signed int (*v8) (unsigned int, signed short, signed short, signed short);
extern signed char v9 (signed short, signed char, unsigned char);
extern signed char (*v10) (signed short, signed char, unsigned char);
extern void v11 (signed short);
extern void (*v12) (signed short);
unsigned char v13 (unsigned int, unsigned int, unsigned char);
unsigned char (*v14) (unsigned int, unsigned int, unsigned char) = v13;
extern unsigned char v15 (unsigned char, unsigned int);
extern unsigned char (*v16) (unsigned char, unsigned int);
extern signed char v17 (signed int, signed char);
extern signed char (*v18) (signed int, signed char);
unsigned int v19 (unsigned int, signed short);
unsigned int (*v20) (unsigned int, signed short) = v19;
unsigned char v21 (unsigned int, unsigned int, signed short);
unsigned char (*v22) (unsigned int, unsigned int, signed short) = v21;
extern void v23 (unsigned char, signed int);
extern void (*v24) (unsigned char, signed int);
extern signed int v25 (unsigned short);
extern signed int (*v26) (unsigned short);
signed int v27 (unsigned char);
signed int (*v28) (unsigned char) = v27;
void v29 (unsigned int, signed int, signed short, signed char);
void (*v30) (unsigned int, signed int, signed short, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v108 = -3;
unsigned char v107 = 2;
signed int v106 = -1;

void v29 (unsigned int v109, signed int v110, signed short v111, signed char v112)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
signed int v115 = 0;
unsigned short v114 = 3;
signed short v113 = -3;
trace++;
switch (trace)
{
case 1: 
return;
default: abort ();
}
}
}
}

signed int v27 (unsigned char v116)
{
history[history_index++] = (int)v116;
{
for (;;) {
signed int v119 = -3;
unsigned int v118 = 1U;
unsigned short v117 = 7;
trace++;
switch (trace)
{
case 9: 
return 0;
case 11: 
return -2;
default: abort ();
}
}
}
}

unsigned char v21 (unsigned int v120, unsigned int v121, signed short v122)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
unsigned short v125 = 6;
signed int v124 = -3;
signed short v123 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v19 (unsigned int v126, signed short v127)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
unsigned int v130 = 7U;
unsigned short v129 = 0;
unsigned short v128 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (unsigned int v131, unsigned int v132, unsigned char v133)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
unsigned short v136 = 6;
signed int v135 = 3;
unsigned int v134 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (signed short v137, signed int v138)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed char v141 = 1;
signed short v140 = -1;
signed char v139 = -3;
trace++;
switch (trace)
{
case 3: 
{
signed short v142;
signed char v143;
unsigned char v144;
signed char v145;
v142 = -3 - v137;
v143 = v141 - v139;
v144 = 4 + 0;
v145 = v9 (v142, v143, v144);
history[history_index++] = (int)v145;
}
break;
case 5: 
{
unsigned short v146;
signed int v147;
v146 = 2 - 7;
v147 = v25 (v146);
history[history_index++] = (int)v147;
}
break;
case 7: 
{
signed short v148;
signed char v149;
unsigned char v150;
signed char v151;
v148 = -1 + v137;
v149 = v139 - 2;
v150 = 7 + 3;
v151 = v9 (v148, v149, v150);
history[history_index++] = (int)v151;
}
break;
case 13: 
return 6;
default: abort ();
}
}
}
}
