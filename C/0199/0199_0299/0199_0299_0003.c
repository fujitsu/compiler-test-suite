#include <stdlib.h>
unsigned short v1 (unsigned int, signed int);
unsigned short (*v2) (unsigned int, signed int) = v1;
unsigned char v3 (signed char, unsigned int);
unsigned char (*v4) (signed char, unsigned int) = v3;
extern void v5 (signed short, signed char);
extern void (*v6) (signed short, signed char);
static signed char v7 (void);
static signed char (*v8) (void) = v7;
extern signed short v9 (signed char, unsigned char);
extern signed short (*v10) (signed char, unsigned char);
extern signed short v11 (signed char, unsigned char);
extern signed short (*v12) (signed char, unsigned char);
static unsigned short v13 (signed int, unsigned int, unsigned short, unsigned char);
static unsigned short (*v14) (signed int, unsigned int, unsigned short, unsigned char) = v13;
extern signed short v15 (unsigned int, unsigned char);
extern signed short (*v16) (unsigned int, unsigned char);
extern signed short v17 (unsigned short);
extern signed short (*v18) (unsigned short);
extern unsigned char v19 (unsigned int, signed char, unsigned short, unsigned short);
extern unsigned char (*v20) (unsigned int, signed char, unsigned short, unsigned short);
extern void v21 (signed int, unsigned int, signed int, unsigned int);
extern void (*v22) (signed int, unsigned int, signed int, unsigned int);
extern unsigned short v23 (signed int, unsigned short, unsigned short);
extern unsigned short (*v24) (signed int, unsigned short, unsigned short);
extern unsigned char v25 (unsigned char, signed char, unsigned short, signed char);
extern unsigned char (*v26) (unsigned char, signed char, unsigned short, signed char);
signed short v27 (unsigned short, unsigned char);
signed short (*v28) (unsigned short, unsigned char) = v27;
extern unsigned char v29 (signed char, signed int, unsigned short);
extern unsigned char (*v30) (signed char, signed int, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v94 = 4;
unsigned char v93 = 2;
signed char v92 = 2;

signed short v27 (unsigned short v95, unsigned char v96)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
unsigned char v99 = 6;
unsigned int v98 = 5U;
signed short v97 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v13 (signed int v100, unsigned int v101, unsigned short v102, unsigned char v103)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed short v106 = -4;
signed int v105 = -4;
signed short v104 = 0;
trace++;
switch (trace)
{
case 3: 
{
signed char v107;
signed int v108;
unsigned short v109;
unsigned char v110;
v107 = -2 + -4;
v108 = v100 + v100;
v109 = v102 - 0;
v110 = v29 (v107, v108, v109);
history[history_index++] = (int)v110;
}
break;
case 5: 
return 2;
default: abort ();
}
}
}
}

static signed char v7 (void)
{
{
for (;;) {
signed short v113 = -4;
unsigned short v112 = 0;
unsigned int v111 = 2U;
trace++;
switch (trace)
{
case 7: 
{
unsigned int v114;
unsigned char v115;
signed short v116;
v114 = 5U + v111;
v115 = 2 - 3;
v116 = v15 (v114, v115);
history[history_index++] = (int)v116;
}
break;
case 9: 
return 3;
case 11: 
return -1;
default: abort ();
}
}
}
}

unsigned char v3 (signed char v117, unsigned int v118)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed int v121 = -1;
signed int v120 = 0;
signed char v119 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (unsigned int v122, signed int v123)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
unsigned short v126 = 4;
unsigned short v125 = 6;
unsigned char v124 = 7;
trace++;
switch (trace)
{
case 0: 
{
signed char v127;
signed int v128;
unsigned short v129;
unsigned char v130;
v127 = 2 - -4;
v128 = 2 + 0;
v129 = 6 - v126;
v130 = v29 (v127, v128, v129);
history[history_index++] = (int)v130;
}
break;
case 2: 
{
signed int v131;
unsigned int v132;
unsigned short v133;
unsigned char v134;
unsigned short v135;
v131 = 3 + 3;
v132 = v122 + v122;
v133 = v126 + 6;
v134 = 2 - 7;
v135 = v13 (v131, v132, v133, v134);
history[history_index++] = (int)v135;
}
break;
case 6: 
{
signed char v136;
v136 = v7 ();
history[history_index++] = (int)v136;
}
break;
case 10: 
{
signed char v137;
v137 = v7 ();
history[history_index++] = (int)v137;
}
break;
case 12: 
return v125;
default: abort ();
}
}
}
}
