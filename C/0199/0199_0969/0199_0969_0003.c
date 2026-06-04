#include <stdlib.h>
signed short v1 (unsigned char, unsigned int, signed short, unsigned char);
signed short (*v2) (unsigned char, unsigned int, signed short, unsigned char) = v1;
extern unsigned short v3 (signed short);
extern unsigned short (*v4) (signed short);
extern signed short v5 (unsigned short, signed int, unsigned short);
extern signed short (*v6) (unsigned short, signed int, unsigned short);
extern signed short v7 (signed char, unsigned char);
extern signed short (*v8) (signed char, unsigned char);
signed short v9 (signed char, unsigned char, unsigned char);
signed short (*v10) (signed char, unsigned char, unsigned char) = v9;
extern signed char v13 (signed int, unsigned char, unsigned char, unsigned char);
extern signed char (*v14) (signed int, unsigned char, unsigned char, unsigned char);
extern signed char v15 (unsigned int);
extern signed char (*v16) (unsigned int);
extern signed char v17 (unsigned int, signed char);
extern signed char (*v18) (unsigned int, signed char);
extern signed short v19 (unsigned char);
extern signed short (*v20) (unsigned char);
void v21 (unsigned char, signed short, signed short, signed char);
void (*v22) (unsigned char, signed short, signed short, signed char) = v21;
extern signed char v23 (unsigned short);
extern signed char (*v24) (unsigned short);
unsigned short v25 (signed char, unsigned short, signed short);
unsigned short (*v26) (signed char, unsigned short, signed short) = v25;
extern unsigned int v27 (unsigned char, signed char);
extern unsigned int (*v28) (unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v118 = 3;
signed char v117 = 2;
signed char v116 = 0;

unsigned short v25 (signed char v119, unsigned short v120, signed short v121)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
signed int v124 = -1;
unsigned char v123 = 4;
unsigned short v122 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (unsigned char v125, signed short v126, signed short v127, signed char v128)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
unsigned char v131 = 1;
signed int v130 = 0;
unsigned int v129 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (signed char v132, unsigned char v133, unsigned char v134)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
unsigned short v137 = 6;
signed short v136 = 2;
unsigned char v135 = 1;
trace++;
switch (trace)
{
case 5: 
return v136;
case 7: 
return -2;
case 9: 
return 2;
default: abort ();
}
}
}
}

signed short v1 (unsigned char v138, unsigned int v139, signed short v140, unsigned char v141)
{
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
unsigned int v144 = 6U;
signed int v143 = 1;
signed short v142 = 0;
trace++;
switch (trace)
{
case 0: 
{
signed char v145;
unsigned char v146;
signed short v147;
v145 = -1 + 1;
v146 = v141 - 4;
v147 = v7 (v145, v146);
history[history_index++] = (int)v147;
}
break;
case 14: 
return v140;
default: abort ();
}
}
}
}
