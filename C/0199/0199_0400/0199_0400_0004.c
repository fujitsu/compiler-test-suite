#include <stdlib.h>
void v1 (void);
void (*v2) (void) = v1;
extern signed int v3 (unsigned char, signed char);
extern signed int (*v4) (unsigned char, signed char);
extern signed int v5 (unsigned int, unsigned int, signed short, unsigned char);
extern signed int (*v6) (unsigned int, unsigned int, signed short, unsigned char);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern unsigned int v9 (unsigned short, unsigned int, signed char);
extern unsigned int (*v10) (unsigned short, unsigned int, signed char);
extern unsigned char v11 (unsigned short, unsigned short, unsigned short);
extern unsigned char (*v12) (unsigned short, unsigned short, unsigned short);
extern signed short v13 (signed short, unsigned short);
extern signed short (*v14) (signed short, unsigned short);
extern signed char v15 (unsigned char, signed char);
extern signed char (*v16) (unsigned char, signed char);
unsigned int v17 (signed short, signed int);
unsigned int (*v18) (signed short, signed int) = v17;
static signed int v19 (signed char, unsigned int, signed int, unsigned char);
static signed int (*v20) (signed char, unsigned int, signed int, unsigned char) = v19;
extern signed short v21 (signed char, signed char);
extern signed short (*v22) (signed char, signed char);
extern signed short v23 (signed int);
extern signed short (*v24) (signed int);
static unsigned int v25 (signed int, signed char, signed short, unsigned int);
static unsigned int (*v26) (signed int, signed char, signed short, unsigned int) = v25;
unsigned short v27 (void);
unsigned short (*v28) (void) = v27;
extern signed int v29 (signed short, signed char);
extern signed int (*v30) (signed short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v98 = 4;
unsigned short v97 = 6;
signed int v96 = -2;

unsigned short v27 (void)
{
{
for (;;) {
unsigned int v101 = 3U;
signed char v100 = -3;
unsigned int v99 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v25 (signed int v102, signed char v103, signed short v104, unsigned int v105)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
signed char v108 = -4;
unsigned int v107 = 6U;
signed char v106 = -2;
trace++;
switch (trace)
{
case 1: 
{
signed char v109;
unsigned int v110;
signed int v111;
unsigned char v112;
signed int v113;
v109 = 3 - v108;
v110 = v107 + 6U;
v111 = -2 + v102;
v112 = 7 + 5;
v113 = v19 (v109, v110, v111, v112);
history[history_index++] = (int)v113;
}
break;
case 3: 
{
signed char v114;
unsigned int v115;
signed int v116;
unsigned char v117;
signed int v118;
v114 = v103 + v106;
v115 = v107 + v105;
v116 = v102 - 0;
v117 = 3 + 5;
v118 = v19 (v114, v115, v116, v117);
history[history_index++] = (int)v118;
}
break;
case 5: 
{
signed char v119;
unsigned int v120;
signed int v121;
unsigned char v122;
signed int v123;
v119 = v106 + v106;
v120 = v107 + 3U;
v121 = v102 - v102;
v122 = 4 - 2;
v123 = v19 (v119, v120, v121, v122);
history[history_index++] = (int)v123;
}
break;
case 7: 
{
signed char v124;
unsigned int v125;
signed int v126;
unsigned char v127;
signed int v128;
v124 = v103 + v108;
v125 = v105 - 0U;
v126 = 3 + v102;
v127 = 6 + 7;
v128 = v19 (v124, v125, v126, v127);
history[history_index++] = (int)v128;
}
break;
case 9: 
{
signed char v129;
unsigned int v130;
signed int v131;
unsigned char v132;
signed int v133;
v129 = 2 - v108;
v130 = v105 - v105;
v131 = v102 - 0;
v132 = 0 - 0;
v133 = v19 (v129, v130, v131, v132);
history[history_index++] = (int)v133;
}
break;
case 11: 
return v107;
default: abort ();
}
}
}
}

static signed int v19 (signed char v134, unsigned int v135, signed int v136, unsigned char v137)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
unsigned int v140 = 0U;
unsigned short v139 = 7;
signed short v138 = 3;
trace++;
switch (trace)
{
case 2: 
return 3;
case 4: 
return v136;
case 6: 
return v136;
case 8: 
return v136;
case 10: 
return -2;
default: abort ();
}
}
}
}

unsigned int v17 (signed short v141, signed int v142)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
unsigned short v145 = 5;
signed char v144 = 0;
signed short v143 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (void)
{
{
for (;;) {
signed int v148 = -4;
unsigned char v147 = 6;
unsigned short v146 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed int v149;
signed char v150;
signed short v151;
unsigned int v152;
unsigned int v153;
v149 = v148 + v148;
v150 = 2 - -2;
v151 = -2 + -2;
v152 = 7U - 3U;
v153 = v25 (v149, v150, v151, v152);
history[history_index++] = (int)v153;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
