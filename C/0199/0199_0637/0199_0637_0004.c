#include <stdlib.h>
void v1 (unsigned char, signed char, unsigned char);
void (*v2) (unsigned char, signed char, unsigned char) = v1;
extern signed char v3 (unsigned int);
extern signed char (*v4) (unsigned int);
extern unsigned int v5 (signed char, unsigned char, unsigned short, unsigned char);
extern unsigned int (*v6) (signed char, unsigned char, unsigned short, unsigned char);
extern signed short v7 (unsigned char, signed int);
extern signed short (*v8) (unsigned char, signed int);
signed short v9 (unsigned char);
signed short (*v10) (unsigned char) = v9;
unsigned int v11 (unsigned char, unsigned short, signed char, signed int);
unsigned int (*v12) (unsigned char, unsigned short, signed char, signed int) = v11;
extern unsigned short v13 (signed char, unsigned char, unsigned char, signed short);
extern unsigned short (*v14) (signed char, unsigned char, unsigned char, signed short);
static unsigned char v15 (unsigned int, unsigned short, signed char);
static unsigned char (*v16) (unsigned int, unsigned short, signed char) = v15;
extern unsigned short v17 (unsigned short, unsigned char, unsigned short);
extern unsigned short (*v18) (unsigned short, unsigned char, unsigned short);
extern unsigned char v19 (signed short, unsigned int, unsigned int);
extern unsigned char (*v20) (signed short, unsigned int, unsigned int);
extern unsigned short v21 (unsigned char, signed int);
extern unsigned short (*v22) (unsigned char, signed int);
static signed int v23 (unsigned int, unsigned char);
static signed int (*v24) (unsigned int, unsigned char) = v23;
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern void v27 (void);
extern void (*v28) (void);
signed char v29 (signed short, unsigned int);
signed char (*v30) (signed short, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v101 = 1U;
signed short v100 = 2;
signed int v99 = -1;

signed char v29 (signed short v102, unsigned int v103)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
unsigned char v106 = 7;
unsigned char v105 = 5;
unsigned short v104 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v23 (unsigned int v107, unsigned char v108)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed char v111 = 2;
signed char v110 = -1;
signed int v109 = -3;
trace++;
switch (trace)
{
case 9: 
return -1;
default: abort ();
}
}
}
}

static unsigned char v15 (unsigned int v112, unsigned short v113, signed char v114)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
signed char v117 = 2;
signed short v116 = 3;
signed char v115 = -4;
trace++;
switch (trace)
{
case 1: 
return 4;
default: abort ();
}
}
}
}

unsigned int v11 (unsigned char v118, unsigned short v119, signed char v120, signed int v121)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
signed int v124 = 2;
signed short v123 = -2;
signed short v122 = 1;
trace++;
switch (trace)
{
case 8: 
{
unsigned int v125;
unsigned char v126;
signed int v127;
v125 = 0U + 2U;
v126 = v118 - v118;
v127 = v23 (v125, v126);
history[history_index++] = (int)v127;
}
break;
case 10: 
{
signed char v128;
unsigned char v129;
unsigned char v130;
signed short v131;
unsigned short v132;
v128 = -4 + 0;
v129 = v118 + v118;
v130 = v118 + 0;
v131 = -1 - 0;
v132 = v13 (v128, v129, v130, v131);
history[history_index++] = (int)v132;
}
break;
case 12: 
return 7U;
default: abort ();
}
}
}
}

signed short v9 (unsigned char v133)
{
history[history_index++] = (int)v133;
{
for (;;) {
signed char v136 = -3;
unsigned short v135 = 2;
unsigned char v134 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (unsigned char v137, signed char v138, unsigned char v139)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
signed char v142 = 1;
unsigned char v141 = 3;
unsigned int v140 = 6U;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v143;
unsigned short v144;
signed char v145;
unsigned char v146;
v143 = v140 + 7U;
v144 = 3 - 5;
v145 = v138 - 0;
v146 = v15 (v143, v144, v145);
history[history_index++] = (int)v146;
}
break;
case 2: 
{
signed short v147;
unsigned int v148;
unsigned int v149;
unsigned char v150;
v147 = -2 - 1;
v148 = 5U + v140;
v149 = 7U - v140;
v150 = v19 (v147, v148, v149);
history[history_index++] = (int)v150;
}
break;
case 4: 
{
unsigned char v151;
signed int v152;
unsigned short v153;
v151 = 1 - 5;
v152 = 0 + 0;
v153 = v21 (v151, v152);
history[history_index++] = (int)v153;
}
break;
case 14: 
return;
default: abort ();
}
}
}
}
