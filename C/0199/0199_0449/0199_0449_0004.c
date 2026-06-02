#include <stdlib.h>
unsigned int v1 (unsigned short, signed short);
unsigned int (*v2) (unsigned short, signed short) = v1;
unsigned short v3 (unsigned char, signed char, unsigned int, unsigned char);
unsigned short (*v4) (unsigned char, signed char, unsigned int, unsigned char) = v3;
static unsigned char v5 (unsigned short, unsigned char, signed short, unsigned short);
static unsigned char (*v6) (unsigned short, unsigned char, signed short, unsigned short) = v5;
extern unsigned short v7 (unsigned short, signed short);
extern unsigned short (*v8) (unsigned short, signed short);
extern unsigned char v9 (signed char, unsigned short, signed short);
extern unsigned char (*v10) (signed char, unsigned short, signed short);
signed char v11 (signed short, unsigned short, unsigned int);
signed char (*v12) (signed short, unsigned short, unsigned int) = v11;
unsigned short v13 (unsigned short);
unsigned short (*v14) (unsigned short) = v13;
extern void v15 (void);
extern void (*v16) (void);
extern void v17 (void);
extern void (*v18) (void);
extern unsigned int v19 (unsigned char, unsigned short, unsigned char, unsigned char);
extern unsigned int (*v20) (unsigned char, unsigned short, unsigned char, unsigned char);
extern signed short v21 (unsigned int, signed short, unsigned int);
extern signed short (*v22) (unsigned int, signed short, unsigned int);
extern unsigned short v23 (unsigned int, unsigned short, unsigned char);
extern unsigned short (*v24) (unsigned int, unsigned short, unsigned char);
extern signed char v25 (unsigned char);
extern signed char (*v26) (unsigned char);
extern signed short v27 (unsigned short);
extern signed short (*v28) (unsigned short);
unsigned int v29 (signed char, signed int, unsigned int);
unsigned int (*v30) (signed char, signed int, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v96 = -4;
signed short v95 = 0;
unsigned short v94 = 6;

unsigned int v29 (signed char v97, signed int v98, unsigned int v99)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
signed char v102 = -3;
signed int v101 = -2;
signed short v100 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (unsigned short v103)
{
history[history_index++] = (int)v103;
{
for (;;) {
unsigned int v106 = 5U;
signed int v105 = 0;
signed int v104 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (signed short v107, unsigned short v108, unsigned int v109)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
signed short v112 = 2;
signed int v111 = 3;
unsigned int v110 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v5 (unsigned short v113, unsigned char v114, signed short v115, unsigned short v116)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed int v119 = 2;
unsigned int v118 = 4U;
unsigned int v117 = 5U;
trace++;
switch (trace)
{
case 3: 
return v114;
default: abort ();
}
}
}
}

unsigned short v3 (unsigned char v120, signed char v121, unsigned int v122, unsigned char v123)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
unsigned char v126 = 5;
unsigned short v125 = 3;
signed short v124 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (unsigned short v127, signed short v128)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
signed int v131 = -3;
signed short v130 = -1;
unsigned int v129 = 7U;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v132;
signed short v133;
unsigned short v134;
v132 = 5 + 0;
v133 = v128 + v128;
v134 = v7 (v132, v133);
history[history_index++] = (int)v134;
}
break;
case 2: 
{
unsigned short v135;
unsigned char v136;
signed short v137;
unsigned short v138;
unsigned char v139;
v135 = v127 - 5;
v136 = 0 - 2;
v137 = v128 + v130;
v138 = v127 + 1;
v139 = v5 (v135, v136, v137, v138);
history[history_index++] = (int)v139;
}
break;
case 4: 
{
unsigned char v140;
unsigned short v141;
unsigned char v142;
unsigned char v143;
unsigned int v144;
v140 = 5 - 0;
v141 = 4 + v127;
v142 = 5 - 6;
v143 = 7 - 6;
v144 = v19 (v140, v141, v142, v143);
history[history_index++] = (int)v144;
}
break;
case 8: 
{
unsigned short v145;
signed short v146;
v145 = v127 + 0;
v146 = v27 (v145);
history[history_index++] = (int)v146;
}
break;
case 10: 
{
unsigned short v147;
signed short v148;
unsigned int v149;
v147 = 5 + v127;
v148 = v128 - v130;
v149 = v1 (v147, v148);
history[history_index++] = (int)v149;
}
break;
case 11: 
return 1U;
case 12: 
return v129;
default: abort ();
}
}
}
}
