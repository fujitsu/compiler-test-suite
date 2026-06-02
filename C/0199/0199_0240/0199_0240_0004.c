#include <stdlib.h>
unsigned int v1 (unsigned short, unsigned int, unsigned char, signed int);
unsigned int (*v2) (unsigned short, unsigned int, unsigned char, signed int) = v1;
static signed short v3 (unsigned int, unsigned short);
static signed short (*v4) (unsigned int, unsigned short) = v3;
extern signed char v5 (signed int, unsigned short, unsigned short, unsigned int);
extern signed char (*v6) (signed int, unsigned short, unsigned short, unsigned int);
extern unsigned char v7 (signed short, unsigned int, signed char);
extern unsigned char (*v8) (signed short, unsigned int, signed char);
extern void v9 (unsigned short, signed short, unsigned char);
extern void (*v10) (unsigned short, signed short, unsigned char);
extern signed short v11 (unsigned short, signed short);
extern signed short (*v12) (unsigned short, signed short);
extern void v13 (unsigned char, signed short, signed char);
extern void (*v14) (unsigned char, signed short, signed char);
void v15 (signed short, unsigned int, unsigned int, unsigned char);
void (*v16) (signed short, unsigned int, unsigned int, unsigned char) = v15;
extern signed int v17 (unsigned int, signed int);
extern signed int (*v18) (unsigned int, signed int);
extern unsigned char v19 (signed int, signed int);
extern unsigned char (*v20) (signed int, signed int);
extern signed short v21 (signed char, unsigned char);
extern signed short (*v22) (signed char, unsigned char);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern unsigned char v25 (unsigned char);
extern unsigned char (*v26) (unsigned char);
unsigned int v27 (signed char, signed int, unsigned char, signed short);
unsigned int (*v28) (signed char, signed int, unsigned char, signed short) = v27;
extern signed short v29 (signed char, signed char, signed short, unsigned short);
extern signed short (*v30) (signed char, signed char, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v115 = 2;
signed short v114 = -1;
signed char v113 = -3;

unsigned int v27 (signed char v116, signed int v117, unsigned char v118, signed short v119)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
signed int v122 = 2;
unsigned int v121 = 7U;
unsigned int v120 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v15 (signed short v123, unsigned int v124, unsigned int v125, unsigned char v126)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
signed int v129 = -2;
unsigned char v128 = 3;
unsigned char v127 = 4;
trace++;
switch (trace)
{
case 6: 
{
unsigned int v130;
signed int v131;
signed int v132;
v130 = v125 + 0U;
v131 = v129 + 2;
v132 = v17 (v130, v131);
history[history_index++] = (int)v132;
}
break;
case 8: 
return;
case 10: 
{
signed char v133;
unsigned char v134;
signed short v135;
v133 = -4 + 0;
v134 = v127 + 6;
v135 = v21 (v133, v134);
history[history_index++] = (int)v135;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

static signed short v3 (unsigned int v136, unsigned short v137)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed char v140 = -1;
signed char v139 = -1;
unsigned int v138 = 6U;
trace++;
switch (trace)
{
case 3: 
return -1;
default: abort ();
}
}
}
}

unsigned int v1 (unsigned short v141, unsigned int v142, unsigned char v143, signed int v144)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
{
for (;;) {
signed int v147 = -1;
signed int v146 = -3;
unsigned int v145 = 1U;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v148;
signed short v149;
signed short v150;
v148 = 7 + v141;
v149 = -2 - 3;
v150 = v11 (v148, v149);
history[history_index++] = (int)v150;
}
break;
case 2: 
{
unsigned int v151;
unsigned short v152;
signed short v153;
v151 = 7U + v145;
v152 = v141 - v141;
v153 = v3 (v151, v152);
history[history_index++] = (int)v153;
}
break;
case 4: 
return v145;
case 5: 
{
signed short v154;
unsigned int v155;
unsigned int v156;
unsigned char v157;
v154 = -3 - -4;
v155 = v145 - v142;
v156 = 4U - v142;
v157 = v143 - v143;
v15 (v154, v155, v156, v157);
}
break;
case 13: 
return v145;
default: abort ();
}
}
}
}
