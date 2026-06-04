#include <stdlib.h>
signed short v1 (signed short, signed char, signed short);
signed short (*v2) (signed short, signed char, signed short) = v1;
signed short v3 (unsigned int, unsigned char);
signed short (*v4) (unsigned int, unsigned char) = v3;
extern unsigned int v5 (unsigned int, unsigned int, unsigned int);
extern unsigned int (*v6) (unsigned int, unsigned int, unsigned int);
extern signed int v7 (signed short, signed int, signed char);
extern signed int (*v8) (signed short, signed int, signed char);
signed short v9 (unsigned char, unsigned char, signed int, signed int);
signed short (*v10) (unsigned char, unsigned char, signed int, signed int) = v9;
extern unsigned int v11 (unsigned int, unsigned int, signed int);
extern unsigned int (*v12) (unsigned int, unsigned int, signed int);
extern signed short v13 (unsigned char, signed int, unsigned short);
extern signed short (*v14) (unsigned char, signed int, unsigned short);
signed int v15 (signed int, unsigned char);
signed int (*v16) (signed int, unsigned char) = v15;
signed short v17 (void);
signed short (*v18) (void) = v17;
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
extern unsigned int v21 (unsigned int, signed char, signed char, signed short);
extern unsigned int (*v22) (unsigned int, signed char, signed char, signed short);
extern signed short v23 (void);
extern signed short (*v24) (void);
signed int v25 (signed int, unsigned char, unsigned short, unsigned char);
signed int (*v26) (signed int, unsigned char, unsigned short, unsigned char) = v25;
extern unsigned int v27 (signed short, unsigned short, unsigned short, signed short);
extern unsigned int (*v28) (signed short, unsigned short, unsigned short, signed short);
extern unsigned int v29 (unsigned char);
extern unsigned int (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v100 = 4;
signed char v99 = 2;
signed char v98 = -1;

signed int v25 (signed int v101, unsigned char v102, unsigned short v103, unsigned char v104)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
signed short v107 = -1;
signed char v106 = -4;
unsigned char v105 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (void)
{
{
for (;;) {
signed short v110 = -1;
signed int v109 = -4;
unsigned short v108 = 1;
trace++;
switch (trace)
{
case 8: 
return 3;
default: abort ();
}
}
}
}

signed int v15 (signed int v111, unsigned char v112)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
signed int v115 = -4;
signed int v114 = -4;
unsigned short v113 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (unsigned char v116, unsigned char v117, signed int v118, signed int v119)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned int v122 = 6U;
unsigned short v121 = 7;
unsigned char v120 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (unsigned int v123, unsigned char v124)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed char v127 = 2;
signed int v126 = -4;
signed char v125 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed short v128, signed char v129, signed short v130)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
{
for (;;) {
unsigned char v133 = 5;
signed short v132 = -3;
unsigned short v131 = 6;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v134;
signed char v135;
signed char v136;
signed short v137;
unsigned int v138;
v134 = 0U + 0U;
v135 = v129 - -1;
v136 = v129 + 2;
v137 = 1 - v132;
v138 = v21 (v134, v135, v136, v137);
history[history_index++] = (int)v138;
}
break;
case 2: 
{
unsigned int v139;
v139 = v19 ();
history[history_index++] = (int)v139;
}
break;
case 4: 
{
signed short v140;
signed int v141;
signed char v142;
signed int v143;
v140 = v128 - v128;
v141 = -1 + -4;
v142 = -2 - -3;
v143 = v7 (v140, v141, v142);
history[history_index++] = (int)v143;
}
break;
case 6: 
{
unsigned int v144;
unsigned int v145;
signed int v146;
unsigned int v147;
v144 = 6U + 4U;
v145 = 2U + 4U;
v146 = 0 - -1;
v147 = v11 (v144, v145, v146);
history[history_index++] = (int)v147;
}
break;
case 10: 
{
unsigned int v148;
unsigned int v149;
signed int v150;
unsigned int v151;
v148 = 5U + 3U;
v149 = 5U - 1U;
v150 = 2 + -2;
v151 = v11 (v148, v149, v150);
history[history_index++] = (int)v151;
}
break;
case 12: 
return v128;
default: abort ();
}
}
}
}
