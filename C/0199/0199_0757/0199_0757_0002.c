#include <stdlib.h>
extern unsigned int v1 (unsigned short, unsigned short, signed int);
extern unsigned int (*v2) (unsigned short, unsigned short, signed int);
signed char v3 (signed int, unsigned int);
signed char (*v4) (signed int, unsigned int) = v3;
unsigned char v5 (signed int);
unsigned char (*v6) (signed int) = v5;
unsigned short v7 (signed char, signed short, signed char, unsigned int);
unsigned short (*v8) (signed char, signed short, signed char, unsigned int) = v7;
unsigned char v9 (signed short, unsigned short, signed char, unsigned short);
unsigned char (*v10) (signed short, unsigned short, signed char, unsigned short) = v9;
extern signed int v11 (unsigned short, signed short);
extern signed int (*v12) (unsigned short, signed short);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern void v15 (signed int, unsigned int, signed short, unsigned short);
extern void (*v16) (signed int, unsigned int, signed short, unsigned short);
extern unsigned int v19 (unsigned char, signed short, signed short, signed char);
extern unsigned int (*v20) (unsigned char, signed short, signed short, signed char);
extern unsigned int v21 (signed char, unsigned short);
extern unsigned int (*v22) (signed char, unsigned short);
extern signed char v23 (unsigned char, signed char, signed int, unsigned char);
extern signed char (*v24) (unsigned char, signed char, signed int, unsigned char);
extern unsigned char v25 (signed char);
extern unsigned char (*v26) (signed char);
unsigned int v27 (signed int, signed short, signed short);
unsigned int (*v28) (signed int, signed short, signed short) = v27;
extern signed short v29 (unsigned char);
extern signed short (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v106 = 5U;
signed char v105 = -2;
unsigned int v104 = 5U;

unsigned int v27 (signed int v107, signed short v108, signed short v109)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned short v112 = 4;
signed short v111 = -4;
unsigned short v110 = 0;
trace++;
switch (trace)
{
case 10: 
{
unsigned short v113;
unsigned short v114;
signed int v115;
unsigned int v116;
v113 = v110 + 3;
v114 = v112 - v110;
v115 = v107 + v107;
v116 = v1 (v113, v114, v115);
history[history_index++] = (int)v116;
}
break;
case 12: 
return 5U;
default: abort ();
}
}
}
}

unsigned char v9 (signed short v117, unsigned short v118, signed char v119, unsigned short v120)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
unsigned int v123 = 1U;
unsigned char v122 = 3;
unsigned char v121 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed char v124, signed short v125, signed char v126, unsigned int v127)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
signed short v130 = -2;
signed int v129 = 0;
unsigned int v128 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (signed int v131)
{
history[history_index++] = (int)v131;
{
for (;;) {
unsigned int v134 = 7U;
signed int v133 = -1;
signed char v132 = -4;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v135;
signed char v136;
signed int v137;
unsigned char v138;
signed char v139;
v135 = 2 + 7;
v136 = -2 + -4;
v137 = -1 - v133;
v138 = 2 + 2;
v139 = v23 (v135, v136, v137, v138);
history[history_index++] = (int)v139;
}
break;
case 19: 
return 2;
default: abort ();
}
}
}
}

signed char v3 (signed int v140, unsigned int v141)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
signed int v144 = -3;
signed char v143 = -1;
unsigned int v142 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
