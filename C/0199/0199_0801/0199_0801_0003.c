#include <stdlib.h>
void v3 (unsigned int, unsigned short, signed short);
void (*v4) (unsigned int, unsigned short, signed short) = v3;
signed int v5 (signed int, unsigned short);
signed int (*v6) (signed int, unsigned short) = v5;
extern signed int v7 (unsigned int, signed int);
extern signed int (*v8) (unsigned int, signed int);
extern unsigned int v9 (unsigned char);
extern unsigned int (*v10) (unsigned char);
extern void v11 (signed char, unsigned char);
extern void (*v12) (signed char, unsigned char);
extern signed char v13 (signed char, signed short, signed char, signed short);
extern signed char (*v14) (signed char, signed short, signed char, signed short);
signed short v15 (signed int, signed int, signed int);
signed short (*v16) (signed int, signed int, signed int) = v15;
extern void v17 (void);
extern void (*v18) (void);
extern unsigned char v19 (unsigned int, signed short, signed int);
extern unsigned char (*v20) (unsigned int, signed short, signed int);
unsigned short v21 (unsigned int, unsigned int, signed char, signed int);
unsigned short (*v22) (unsigned int, unsigned int, signed char, signed int) = v21;
extern void v23 (signed short, unsigned short, unsigned short);
extern void (*v24) (signed short, unsigned short, unsigned short);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern unsigned char v27 (signed short, signed char, signed int);
extern unsigned char (*v28) (signed short, signed char, signed int);
signed int v29 (unsigned short, unsigned short);
signed int (*v30) (unsigned short, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v100 = 7;
signed int v99 = -1;
unsigned char v98 = 3;

signed int v29 (unsigned short v101, unsigned short v102)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
unsigned int v105 = 4U;
signed char v104 = 3;
signed short v103 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v21 (unsigned int v106, unsigned int v107, signed char v108, signed int v109)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned short v112 = 3;
unsigned int v111 = 1U;
unsigned short v110 = 1;
trace++;
switch (trace)
{
case 2: 
{
signed short v113;
signed char v114;
signed int v115;
unsigned char v116;
v113 = -4 - -2;
v114 = v108 - -3;
v115 = 2 - 2;
v116 = v27 (v113, v114, v115);
history[history_index++] = (int)v116;
}
break;
case 4: 
{
signed short v117;
signed char v118;
signed int v119;
unsigned char v120;
v117 = -1 - -4;
v118 = v108 - v108;
v119 = 1 - 0;
v120 = v27 (v117, v118, v119);
history[history_index++] = (int)v120;
}
break;
case 6: 
{
signed short v121;
signed char v122;
signed int v123;
unsigned char v124;
v121 = 3 + -4;
v122 = 1 + v108;
v123 = -1 - v109;
v124 = v27 (v121, v122, v123);
history[history_index++] = (int)v124;
}
break;
case 8: 
{
signed short v125;
signed char v126;
signed int v127;
unsigned char v128;
v125 = 2 + -4;
v126 = v108 - -2;
v127 = 2 + v109;
v128 = v27 (v125, v126, v127);
history[history_index++] = (int)v128;
}
break;
case 10: 
return 3;
default: abort ();
}
}
}
}

signed short v15 (signed int v129, signed int v130, signed int v131)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
unsigned int v134 = 7U;
unsigned short v133 = 1;
signed int v132 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (signed int v135, unsigned short v136)
{
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
unsigned int v139 = 5U;
signed short v138 = 2;
unsigned int v137 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (unsigned int v140, unsigned short v141, signed short v142)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
unsigned char v145 = 5;
unsigned short v144 = 1;
signed short v143 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
