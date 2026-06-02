#include <stdlib.h>
void v3 (signed int, signed short, unsigned char);
void (*v4) (signed int, signed short, unsigned char) = v3;
extern unsigned char v5 (unsigned short);
extern unsigned char (*v6) (unsigned short);
extern signed int v7 (unsigned int, signed short, unsigned int);
extern signed int (*v8) (unsigned int, signed short, unsigned int);
extern signed char v9 (unsigned int, unsigned short, unsigned short, unsigned short);
extern signed char (*v10) (unsigned int, unsigned short, unsigned short, unsigned short);
extern signed char v11 (signed char);
extern signed char (*v12) (signed char);
extern signed int v13 (unsigned char, signed char, signed char, unsigned short);
extern signed int (*v14) (unsigned char, signed char, signed char, unsigned short);
signed char v15 (unsigned char, signed char, signed short);
signed char (*v16) (unsigned char, signed char, signed short) = v15;
extern void v17 (signed int, unsigned short, signed short, unsigned int);
extern void (*v18) (signed int, unsigned short, signed short, unsigned int);
unsigned char v19 (unsigned int);
unsigned char (*v20) (unsigned int) = v19;
signed int v21 (unsigned char, unsigned int, unsigned int, signed short);
signed int (*v22) (unsigned char, unsigned int, unsigned int, signed short) = v21;
extern signed int v23 (unsigned short, signed char);
extern signed int (*v24) (unsigned short, signed char);
extern signed short v25 (signed int, signed char);
extern signed short (*v26) (signed int, signed char);
extern signed char v27 (signed short, signed int, unsigned int, signed int);
extern signed char (*v28) (signed short, signed int, unsigned int, signed int);
extern void v29 (signed char);
extern void (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v115 = 2U;
signed short v114 = -2;
signed int v113 = -4;

signed int v21 (unsigned char v116, unsigned int v117, unsigned int v118, signed short v119)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
signed short v122 = -3;
signed int v121 = 1;
signed char v120 = 3;
trace++;
switch (trace)
{
case 3: 
{
signed char v123;
v123 = -3 - -4;
v29 (v123);
}
break;
case 5: 
{
signed char v124;
v124 = v120 + 3;
v29 (v124);
}
break;
case 7: 
{
signed char v125;
v125 = v120 - -4;
v29 (v125);
}
break;
case 9: 
{
signed char v126;
v126 = v120 + 2;
v29 (v126);
}
break;
case 11: 
return 2;
default: abort ();
}
}
}
}

unsigned char v19 (unsigned int v127)
{
history[history_index++] = (int)v127;
{
for (;;) {
unsigned int v130 = 1U;
signed int v129 = -2;
unsigned short v128 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v15 (unsigned char v131, signed char v132, signed short v133)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
unsigned int v136 = 5U;
unsigned int v135 = 6U;
signed char v134 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (signed int v137, signed short v138, unsigned char v139)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
unsigned char v142 = 6;
signed char v141 = 2;
unsigned short v140 = 7;
trace++;
switch (trace)
{
case 1: 
{
signed int v143;
unsigned short v144;
signed short v145;
unsigned int v146;
v143 = v137 + v137;
v144 = 6 + v140;
v145 = -1 - v138;
v146 = 0U + 0U;
v17 (v143, v144, v145, v146);
}
break;
case 13: 
return;
default: abort ();
}
}
}
}
