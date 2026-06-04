#include <stdlib.h>
signed short v1 (signed short, unsigned short, signed char, signed char);
signed short (*v2) (signed short, unsigned short, signed char, signed char) = v1;
extern unsigned int v3 (signed char, unsigned char, unsigned short);
extern unsigned int (*v4) (signed char, unsigned char, unsigned short);
unsigned char v5 (unsigned int);
unsigned char (*v6) (unsigned int) = v5;
unsigned char v7 (unsigned short, unsigned short, signed char);
unsigned char (*v8) (unsigned short, unsigned short, signed char) = v7;
signed int v9 (void);
signed int (*v10) (void) = v9;
extern signed char v11 (unsigned int);
extern signed char (*v12) (unsigned int);
extern signed char v13 (signed short, signed char, signed char);
extern signed char (*v14) (signed short, signed char, signed char);
signed short v15 (unsigned short, unsigned char, signed char, unsigned char);
signed short (*v16) (unsigned short, unsigned char, signed char, unsigned char) = v15;
extern unsigned short v17 (unsigned int, unsigned short);
extern unsigned short (*v18) (unsigned int, unsigned short);
signed char v19 (unsigned short, unsigned char, unsigned short, signed int);
signed char (*v20) (unsigned short, unsigned char, unsigned short, signed int) = v19;
extern void v21 (signed int, unsigned char, signed short, signed char);
extern void (*v22) (signed int, unsigned char, signed short, signed char);
extern signed char v23 (signed int, signed short);
extern signed char (*v24) (signed int, signed short);
extern unsigned int v25 (unsigned char);
extern unsigned int (*v26) (unsigned char);
extern unsigned char v27 (signed short, unsigned short, signed char, unsigned short);
extern unsigned char (*v28) (signed short, unsigned short, signed char, unsigned short);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v106 = 0;
unsigned int v105 = 0U;
unsigned char v104 = 1;

signed char v19 (unsigned short v107, unsigned char v108, unsigned short v109, signed int v110)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed short v113 = 1;
unsigned short v112 = 6;
signed int v111 = -2;
trace++;
switch (trace)
{
case 2: 
{
unsigned int v114;
unsigned short v115;
unsigned short v116;
v114 = 4U + 7U;
v115 = v112 - 5;
v116 = v17 (v114, v115);
history[history_index++] = (int)v116;
}
break;
case 10: 
return -2;
case 12: 
return -3;
default: abort ();
}
}
}
}

signed short v15 (unsigned short v117, unsigned char v118, signed char v119, unsigned char v120)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
unsigned char v123 = 5;
unsigned int v122 = 3U;
unsigned short v121 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v9 (void)
{
{
for (;;) {
unsigned int v126 = 0U;
unsigned char v125 = 4;
unsigned int v124 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned short v127, unsigned short v128, signed char v129)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned int v132 = 2U;
signed char v131 = -4;
signed int v130 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned int v133)
{
history[history_index++] = (int)v133;
{
for (;;) {
unsigned char v136 = 4;
unsigned int v135 = 4U;
signed int v134 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed short v137, unsigned short v138, signed char v139, signed char v140)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
unsigned char v143 = 4;
signed short v142 = 3;
unsigned char v141 = 7;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v144;
unsigned short v145;
unsigned short v146;
v144 = 3U + 7U;
v145 = 6 - 7;
v146 = v17 (v144, v145);
history[history_index++] = (int)v146;
}
break;
case 14: 
return v142;
default: abort ();
}
}
}
}
