#include <stdlib.h>
unsigned char v1 (unsigned short, signed short, unsigned short);
unsigned char (*v2) (unsigned short, signed short, unsigned short) = v1;
extern signed short v3 (signed short, unsigned int, unsigned short, signed char);
extern signed short (*v4) (signed short, unsigned int, unsigned short, signed char);
unsigned short v5 (signed int);
unsigned short (*v6) (signed int) = v5;
extern signed char v7 (unsigned char, signed int, signed short, signed char);
extern signed char (*v8) (unsigned char, signed int, signed short, signed char);
signed short v9 (signed short, unsigned int, unsigned int, unsigned int);
signed short (*v10) (signed short, unsigned int, unsigned int, unsigned int) = v9;
extern signed char v11 (unsigned short, unsigned int);
extern signed char (*v12) (unsigned short, unsigned int);
extern unsigned short v13 (signed int);
extern unsigned short (*v14) (signed int);
unsigned short v15 (signed short, unsigned int, unsigned char);
unsigned short (*v16) (signed short, unsigned int, unsigned char) = v15;
extern unsigned char v17 (signed char);
extern unsigned char (*v18) (signed char);
unsigned int v19 (unsigned short, unsigned int, signed short);
unsigned int (*v20) (unsigned short, unsigned int, signed short) = v19;
extern signed char v21 (unsigned int, signed short, signed short, signed char);
extern signed char (*v22) (unsigned int, signed short, signed short, signed char);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern void v25 (void);
extern void (*v26) (void);
extern signed short v27 (signed int);
extern signed short (*v28) (signed int);
extern signed char v29 (unsigned char, unsigned int);
extern signed char (*v30) (unsigned char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v100 = 2;
unsigned char v99 = 2;
unsigned short v98 = 4;

unsigned int v19 (unsigned short v101, unsigned int v102, signed short v103)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed char v106 = 2;
unsigned char v105 = 4;
unsigned int v104 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (signed short v107, unsigned int v108, unsigned char v109)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned char v112 = 7;
unsigned int v111 = 6U;
signed int v110 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (signed short v113, unsigned int v114, unsigned int v115, unsigned int v116)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
unsigned short v119 = 6;
signed int v118 = -2;
signed short v117 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (signed int v120)
{
history[history_index++] = (int)v120;
{
for (;;) {
signed char v123 = 0;
signed int v122 = 1;
signed char v121 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (unsigned short v124, signed short v125, unsigned short v126)
{
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
unsigned short v129 = 0;
signed char v128 = 3;
signed int v127 = 2;
trace++;
switch (trace)
{
case 0: 
{
signed char v130;
unsigned char v131;
v130 = 3 - 1;
v131 = v17 (v130);
history[history_index++] = (int)v131;
}
break;
case 2: 
return 7;
case 3: 
{
unsigned char v132;
unsigned int v133;
signed char v134;
v132 = 4 - 0;
v133 = 4U + 2U;
v134 = v29 (v132, v133);
history[history_index++] = (int)v134;
}
break;
case 5: 
return 4;
case 6: 
{
unsigned int v135;
signed short v136;
signed short v137;
signed char v138;
signed char v139;
v135 = 5U - 7U;
v136 = v125 - v125;
v137 = 1 - -2;
v138 = v128 + 2;
v139 = v21 (v135, v136, v137, v138);
history[history_index++] = (int)v139;
}
break;
case 8: 
{
signed short v140;
unsigned int v141;
unsigned short v142;
signed char v143;
signed short v144;
v140 = v125 - 3;
v141 = 7U + 6U;
v142 = v129 + v126;
v143 = -1 + v128;
v144 = v3 (v140, v141, v142, v143);
history[history_index++] = (int)v144;
}
break;
case 10: 
{
unsigned int v145;
signed short v146;
signed short v147;
signed char v148;
signed char v149;
v145 = 1U + 7U;
v146 = -2 - 3;
v147 = -4 - v125;
v148 = v128 + -1;
v149 = v21 (v145, v146, v147, v148);
history[history_index++] = (int)v149;
}
break;
case 12: 
return 5;
default: abort ();
}
}
}
}
