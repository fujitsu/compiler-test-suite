#include <stdlib.h>
unsigned int v1 (void);
unsigned int (*v2) (void) = v1;
extern signed char v3 (unsigned char, signed int, unsigned int, unsigned char);
extern signed char (*v4) (unsigned char, signed int, unsigned int, unsigned char);
void v5 (signed short, signed int, signed char);
void (*v6) (signed short, signed int, signed char) = v5;
extern signed int v7 (signed int, unsigned char, signed int, signed char);
extern signed int (*v8) (signed int, unsigned char, signed int, signed char);
extern signed short v9 (unsigned short, signed short, unsigned short, unsigned short);
extern signed short (*v10) (unsigned short, signed short, unsigned short, unsigned short);
extern void v11 (unsigned short, signed char);
extern void (*v12) (unsigned short, signed char);
signed short v13 (signed int, signed int, signed short);
signed short (*v14) (signed int, signed int, signed short) = v13;
extern void v15 (signed short, signed short);
extern void (*v16) (signed short, signed short);
signed short v17 (signed char);
signed short (*v18) (signed char) = v17;
extern signed int v19 (void);
extern signed int (*v20) (void);
extern signed int v21 (unsigned int, signed char, signed int, signed short);
extern signed int (*v22) (unsigned int, signed char, signed int, signed short);
extern unsigned char v23 (signed int);
extern unsigned char (*v24) (signed int);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
void v27 (signed char, unsigned char, unsigned short);
void (*v28) (signed char, unsigned char, unsigned short) = v27;
extern signed short v29 (signed int, unsigned short, unsigned short);
extern signed short (*v30) (signed int, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v102 = 1;
unsigned char v101 = 3;
signed char v100 = -3;

void v27 (signed char v103, unsigned char v104, unsigned short v105)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned char v108 = 2;
unsigned char v107 = 7;
unsigned short v106 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (signed char v109)
{
history[history_index++] = (int)v109;
{
for (;;) {
signed short v112 = -2;
signed char v111 = -3;
unsigned char v110 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (signed int v113, signed int v114, signed short v115)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned int v118 = 5U;
unsigned char v117 = 0;
unsigned short v116 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (signed short v119, signed int v120, signed char v121)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
signed int v124 = -1;
signed int v123 = -4;
unsigned short v122 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (void)
{
{
for (;;) {
signed char v127 = -3;
signed int v126 = -3;
signed char v125 = -1;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v128;
v128 = v25 ();
history[history_index++] = (int)v128;
}
break;
case 2: 
{
unsigned int v129;
v129 = v25 ();
history[history_index++] = (int)v129;
}
break;
case 4: 
{
signed int v130;
unsigned short v131;
unsigned short v132;
signed short v133;
v130 = v126 + v126;
v131 = 3 - 7;
v132 = 3 - 0;
v133 = v29 (v130, v131, v132);
history[history_index++] = (int)v133;
}
break;
case 6: 
{
signed int v134;
unsigned short v135;
unsigned short v136;
signed short v137;
v134 = v126 - v126;
v135 = 3 + 1;
v136 = 7 - 5;
v137 = v29 (v134, v135, v136);
history[history_index++] = (int)v137;
}
break;
case 8: 
{
signed int v138;
unsigned short v139;
unsigned short v140;
signed short v141;
v138 = 1 - v126;
v139 = 3 + 1;
v140 = 6 - 7;
v141 = v29 (v138, v139, v140);
history[history_index++] = (int)v141;
}
break;
case 10: 
{
unsigned int v142;
v142 = v25 ();
history[history_index++] = (int)v142;
}
break;
case 12: 
return 3U;
default: abort ();
}
}
}
}
