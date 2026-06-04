#include <stdlib.h>
extern signed int v3 (unsigned int, unsigned int, unsigned int, signed int);
extern signed int (*v4) (unsigned int, unsigned int, unsigned int, signed int);
unsigned char v5 (unsigned char);
unsigned char (*v6) (unsigned char) = v5;
extern signed char v7 (signed short, signed short, unsigned short, unsigned short);
extern signed char (*v8) (signed short, signed short, unsigned short, unsigned short);
signed char v9 (unsigned int, signed char, signed char, unsigned char);
signed char (*v10) (unsigned int, signed char, signed char, unsigned char) = v9;
extern void v11 (signed short, unsigned short, unsigned char, signed int);
extern void (*v12) (signed short, unsigned short, unsigned char, signed int);
signed int v13 (unsigned short, signed short);
signed int (*v14) (unsigned short, signed short) = v13;
extern unsigned char v15 (unsigned short, unsigned short, signed short, unsigned char);
extern unsigned char (*v16) (unsigned short, unsigned short, signed short, unsigned char);
extern signed char v17 (unsigned short);
extern signed char (*v18) (unsigned short);
extern signed int v19 (signed int, signed char, unsigned short, signed char);
extern signed int (*v20) (signed int, signed char, unsigned short, signed char);
unsigned int v21 (signed short);
unsigned int (*v22) (signed short) = v21;
extern signed int v23 (unsigned char, unsigned int);
extern signed int (*v24) (unsigned char, unsigned int);
extern unsigned int v25 (signed short, unsigned char, signed short, unsigned short);
extern unsigned int (*v26) (signed short, unsigned char, signed short, unsigned short);
signed short v27 (signed int, signed char, signed int, signed char);
signed short (*v28) (signed int, signed char, signed int, signed char) = v27;
signed short v29 (signed int, unsigned short, unsigned char);
signed short (*v30) (signed int, unsigned short, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v101 = 4;
unsigned int v100 = 4U;
signed short v99 = 2;

signed short v29 (signed int v102, unsigned short v103, unsigned char v104)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
unsigned int v107 = 7U;
signed int v106 = 1;
signed int v105 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v27 (signed int v108, signed char v109, signed int v110, signed char v111)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
unsigned int v114 = 1U;
unsigned char v113 = 0;
signed char v112 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v21 (signed short v115)
{
history[history_index++] = (int)v115;
{
for (;;) {
unsigned char v118 = 1;
signed short v117 = -2;
unsigned int v116 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (unsigned short v119, signed short v120)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
unsigned int v123 = 4U;
signed char v122 = -4;
signed char v121 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (unsigned int v124, signed char v125, signed char v126, unsigned char v127)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
signed char v130 = 2;
unsigned int v129 = 2U;
signed int v128 = -4;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v131;
signed char v132;
v131 = 7 - 2;
v132 = v17 (v131);
history[history_index++] = (int)v132;
}
break;
case 3: 
{
unsigned short v133;
signed char v134;
v133 = 7 + 4;
v134 = v17 (v133);
history[history_index++] = (int)v134;
}
break;
case 5: 
return v130;
default: abort ();
}
}
}
}

unsigned char v5 (unsigned char v135)
{
history[history_index++] = (int)v135;
{
for (;;) {
signed int v138 = -3;
unsigned short v137 = 4;
signed int v136 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
