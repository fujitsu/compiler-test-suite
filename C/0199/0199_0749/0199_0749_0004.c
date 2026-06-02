#include <stdlib.h>
extern signed short v1 (signed char);
extern signed short (*v2) (signed char);
static unsigned int v3 (signed int, signed short);
static unsigned int (*v4) (signed int, signed short) = v3;
extern signed int v5 (signed short, signed int, unsigned short);
extern signed int (*v6) (signed short, signed int, unsigned short);
extern signed char v7 (signed char, unsigned int);
extern signed char (*v8) (signed char, unsigned int);
static signed int v9 (unsigned char, signed char);
static signed int (*v10) (unsigned char, signed char) = v9;
extern signed int v11 (signed int, signed int);
extern signed int (*v12) (signed int, signed int);
extern void v13 (void);
extern void (*v14) (void);
extern unsigned short v15 (unsigned int, signed short);
extern unsigned short (*v16) (unsigned int, signed short);
extern signed char v17 (unsigned short, unsigned char);
extern signed char (*v18) (unsigned short, unsigned char);
extern signed short v19 (signed char);
extern signed short (*v20) (signed char);
signed char v21 (unsigned int, unsigned int, unsigned char, signed int);
signed char (*v22) (unsigned int, unsigned int, unsigned char, signed int) = v21;
extern unsigned char v23 (unsigned char, unsigned char);
extern unsigned char (*v24) (unsigned char, unsigned char);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
static signed short v27 (unsigned int, signed short, signed int, unsigned char);
static signed short (*v28) (unsigned int, signed short, signed int, unsigned char) = v27;
void v29 (signed char);
void (*v30) (signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v102 = 2;
unsigned int v101 = 0U;
signed char v100 = 1;

void v29 (signed char v103)
{
history[history_index++] = (int)v103;
{
for (;;) {
signed short v106 = 0;
signed short v105 = 2;
unsigned int v104 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v27 (unsigned int v107, signed short v108, signed int v109, unsigned char v110)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
unsigned int v113 = 6U;
signed short v112 = 3;
unsigned int v111 = 4U;
trace++;
switch (trace)
{
case 6: 
return v108;
default: abort ();
}
}
}
}

signed char v21 (unsigned int v114, unsigned int v115, unsigned char v116, signed int v117)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned int v120 = 3U;
unsigned short v119 = 4;
signed short v118 = 2;
trace++;
switch (trace)
{
case 2: 
{
signed int v121;
signed short v122;
unsigned int v123;
v121 = v117 - 0;
v122 = v118 + v118;
v123 = v3 (v121, v122);
history[history_index++] = (int)v123;
}
break;
case 9: 
{
signed int v124;
signed short v125;
unsigned int v126;
v124 = v117 + v117;
v125 = v118 - -4;
v126 = v3 (v124, v125);
history[history_index++] = (int)v126;
}
break;
case 13: 
return -4;
case 16: 
return -4;
default: abort ();
}
}
}
}

static signed int v9 (unsigned char v127, signed char v128)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
unsigned char v131 = 2;
signed int v130 = 2;
signed short v129 = -3;
trace++;
switch (trace)
{
case 8: 
{
unsigned int v132;
unsigned int v133;
unsigned char v134;
signed int v135;
signed char v136;
v132 = 3U + 5U;
v133 = 3U + 5U;
v134 = v131 - v131;
v135 = v130 - v130;
v136 = v21 (v132, v133, v134, v135);
history[history_index++] = (int)v136;
}
break;
case 11: 
return v130;
case 14: 
return -1;
default: abort ();
}
}
}
}

static unsigned int v3 (signed int v137, signed short v138)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed char v141 = -3;
signed short v140 = 3;
signed char v139 = 0;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v142;
unsigned char v143;
signed char v144;
v142 = 2 - 3;
v143 = 2 - 3;
v144 = v17 (v142, v143);
history[history_index++] = (int)v144;
}
break;
case 5: 
{
unsigned int v145;
signed short v146;
signed int v147;
unsigned char v148;
signed short v149;
v145 = 2U - 3U;
v146 = v140 - v138;
v147 = 0 - 0;
v148 = 4 - 2;
v149 = v27 (v145, v146, v147, v148);
history[history_index++] = (int)v149;
}
break;
case 7: 
{
unsigned char v150;
signed char v151;
signed int v152;
v150 = 5 - 6;
v151 = v139 - 2;
v152 = v9 (v150, v151);
history[history_index++] = (int)v152;
}
break;
case 10: 
{
unsigned char v153;
signed char v154;
signed int v155;
v153 = 1 - 5;
v154 = v141 + v141;
v155 = v9 (v153, v154);
history[history_index++] = (int)v155;
}
break;
case 12: 
return 0U;
case 15: 
return 3U;
default: abort ();
}
}
}
}
