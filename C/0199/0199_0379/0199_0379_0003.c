#include <stdlib.h>
extern unsigned char v1 (unsigned short, signed int, signed short, unsigned char);
extern unsigned char (*v2) (unsigned short, signed int, signed short, unsigned char);
extern unsigned char v3 (signed int, unsigned short);
extern unsigned char (*v4) (signed int, unsigned short);
extern unsigned int v5 (unsigned int, signed int);
extern unsigned int (*v6) (unsigned int, signed int);
signed char v7 (unsigned short, signed char, unsigned char, unsigned int);
signed char (*v8) (unsigned short, signed char, unsigned char, unsigned int) = v7;
extern signed int v9 (unsigned char, signed short);
extern signed int (*v10) (unsigned char, signed short);
extern void v11 (signed int, unsigned char, signed int);
extern void (*v12) (signed int, unsigned char, signed int);
signed int v13 (unsigned int, unsigned int, unsigned int, unsigned char);
signed int (*v14) (unsigned int, unsigned int, unsigned int, unsigned char) = v13;
signed char v15 (signed char, signed char, signed char);
signed char (*v16) (signed char, signed char, signed char) = v15;
static signed int v17 (signed short, signed char, signed short, unsigned short);
static signed int (*v18) (signed short, signed char, signed short, unsigned short) = v17;
extern signed char v19 (signed int, signed short, unsigned char, unsigned short);
extern signed char (*v20) (signed int, signed short, unsigned char, unsigned short);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern signed int v25 (signed int, signed char, unsigned short, unsigned short);
extern signed int (*v26) (signed int, signed char, unsigned short, unsigned short);
unsigned char v27 (unsigned short, unsigned char);
unsigned char (*v28) (unsigned short, unsigned char) = v27;
static unsigned short v29 (unsigned char);
static unsigned short (*v30) (unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v95 = 6;
signed int v94 = -2;
signed short v93 = -1;

static unsigned short v29 (unsigned char v96)
{
history[history_index++] = (int)v96;
{
for (;;) {
unsigned short v99 = 4;
signed char v98 = -3;
unsigned char v97 = 2;
trace++;
switch (trace)
{
case 3: 
return v99;
case 5: 
{
signed short v100;
signed char v101;
signed short v102;
unsigned short v103;
signed int v104;
v100 = -4 + -2;
v101 = v98 + 3;
v102 = 1 - 3;
v103 = v99 + v99;
v104 = v17 (v100, v101, v102, v103);
history[history_index++] = (int)v104;
}
break;
case 7: 
{
signed short v105;
signed char v106;
signed short v107;
unsigned short v108;
signed int v109;
v105 = -4 - 2;
v106 = v98 - -3;
v107 = 2 - -2;
v108 = 4 - v99;
v109 = v17 (v105, v106, v107, v108);
history[history_index++] = (int)v109;
}
break;
case 9: 
return 4;
default: abort ();
}
}
}
}

unsigned char v27 (unsigned short v110, unsigned char v111)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
signed int v114 = 3;
unsigned char v113 = 6;
signed short v112 = -4;
trace++;
switch (trace)
{
case 2: 
{
unsigned char v115;
unsigned short v116;
v115 = 0 - 6;
v116 = v29 (v115);
history[history_index++] = (int)v116;
}
break;
case 4: 
{
unsigned char v117;
unsigned short v118;
v117 = v111 + v111;
v118 = v29 (v117);
history[history_index++] = (int)v118;
}
break;
case 10: 
return v113;
default: abort ();
}
}
}
}

static signed int v17 (signed short v119, signed char v120, signed short v121, unsigned short v122)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
signed short v125 = 1;
unsigned char v124 = 0;
unsigned char v123 = 0;
trace++;
switch (trace)
{
case 6: 
return -2;
case 8: 
return -1;
default: abort ();
}
}
}
}

signed char v15 (signed char v126, signed char v127, signed char v128)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
unsigned char v131 = 2;
signed short v130 = -1;
signed int v129 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v13 (unsigned int v132, unsigned int v133, unsigned int v134, unsigned char v135)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
unsigned int v138 = 5U;
unsigned char v137 = 1;
unsigned int v136 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (unsigned short v139, signed char v140, unsigned char v141, unsigned int v142)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
signed char v145 = -2;
signed int v144 = 2;
unsigned short v143 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
