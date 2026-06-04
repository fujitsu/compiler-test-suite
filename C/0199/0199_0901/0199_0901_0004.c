#include <stdlib.h>
unsigned short v1 (signed short, unsigned char);
unsigned short (*v2) (signed short, unsigned char) = v1;
extern signed short v3 (signed char, unsigned char);
extern signed short (*v4) (signed char, unsigned char);
extern signed char v5 (signed int, signed short, unsigned short, unsigned int);
extern signed char (*v6) (signed int, signed short, unsigned short, unsigned int);
extern unsigned short v7 (signed char, unsigned char);
extern unsigned short (*v8) (signed char, unsigned char);
unsigned char v9 (signed short);
unsigned char (*v10) (signed short) = v9;
signed char v11 (signed int);
signed char (*v12) (signed int) = v11;
extern signed int v13 (void);
extern signed int (*v14) (void);
extern unsigned char v15 (unsigned short);
extern unsigned char (*v16) (unsigned short);
static signed short v17 (signed int, signed short, unsigned int);
static signed short (*v18) (signed int, signed short, unsigned int) = v17;
signed short v19 (signed char, signed char, signed short);
signed short (*v20) (signed char, signed char, signed short) = v19;
extern signed short v21 (signed short);
extern signed short (*v22) (signed short);
extern unsigned int v23 (signed int);
extern unsigned int (*v24) (signed int);
static unsigned short v25 (signed int, signed short, signed int);
static unsigned short (*v26) (signed int, signed short, signed int) = v25;
extern void v27 (signed short);
extern void (*v28) (signed short);
extern unsigned int v29 (signed char);
extern unsigned int (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed short v97 = -4;
signed int v96 = -2;
unsigned int v95 = 0U;

static unsigned short v25 (signed int v98, signed short v99, signed int v100)
{
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
history[history_index++] = (int)v100;
{
for (;;) {
signed int v103 = 3;
signed char v102 = 0;
unsigned short v101 = 3;
trace++;
switch (trace)
{
case 5: 
{
signed short v104;
v104 = v99 - 1;
v27 (v104);
}
break;
case 13: 
return v101;
default: abort ();
}
}
}
}

signed short v19 (signed char v105, signed char v106, signed short v107)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
unsigned short v110 = 4;
signed short v109 = 0;
unsigned short v108 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v17 (signed int v111, signed short v112, unsigned int v113)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned char v116 = 0;
unsigned char v115 = 6;
unsigned char v114 = 3;
trace++;
switch (trace)
{
case 1: 
{
signed short v117;
signed short v118;
v117 = 3 + 1;
v118 = v21 (v117);
history[history_index++] = (int)v118;
}
break;
case 3: 
return v112;
default: abort ();
}
}
}
}

signed char v11 (signed int v119)
{
history[history_index++] = (int)v119;
{
for (;;) {
unsigned short v122 = 0;
signed short v121 = -2;
signed short v120 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v9 (signed short v123)
{
history[history_index++] = (int)v123;
{
for (;;) {
unsigned short v126 = 3;
signed short v125 = -1;
unsigned short v124 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (signed short v127, unsigned char v128)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
signed int v131 = 2;
signed char v130 = -3;
unsigned char v129 = 5;
trace++;
switch (trace)
{
case 0: 
{
signed int v132;
signed short v133;
unsigned int v134;
signed short v135;
v132 = v131 + -3;
v133 = v127 - -1;
v134 = 4U + 3U;
v135 = v17 (v132, v133, v134);
history[history_index++] = (int)v135;
}
break;
case 4: 
{
signed int v136;
signed short v137;
signed int v138;
unsigned short v139;
v136 = v131 + v131;
v137 = -1 + 0;
v138 = v131 + -4;
v139 = v25 (v136, v137, v138);
history[history_index++] = (int)v139;
}
break;
case 10: 
return 0;
case 14: 
return 2;
default: abort ();
}
}
}
}
