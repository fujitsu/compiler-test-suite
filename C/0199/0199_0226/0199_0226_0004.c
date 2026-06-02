#include <stdlib.h>
extern unsigned int v1 (unsigned char, signed char, unsigned int);
extern unsigned int (*v2) (unsigned char, signed char, unsigned int);
unsigned int v3 (void);
unsigned int (*v4) (void) = v3;
extern signed char v5 (void);
extern signed char (*v6) (void);
signed short v7 (void);
signed short (*v8) (void) = v7;
extern unsigned int v9 (unsigned char, signed short, unsigned char);
extern unsigned int (*v10) (unsigned char, signed short, unsigned char);
signed short v11 (signed int, signed int, unsigned int, signed char);
signed short (*v12) (signed int, signed int, unsigned int, signed char) = v11;
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern unsigned short v15 (unsigned short, unsigned short);
extern unsigned short (*v16) (unsigned short, unsigned short);
extern unsigned int v17 (signed char, unsigned char);
extern unsigned int (*v18) (signed char, unsigned char);
unsigned char v19 (signed char);
unsigned char (*v20) (signed char) = v19;
signed int v21 (signed char, signed char, unsigned short, unsigned short);
signed int (*v22) (signed char, signed char, unsigned short, unsigned short) = v21;
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
signed int v25 (unsigned char, signed short);
signed int (*v26) (unsigned char, signed short) = v25;
extern signed int v27 (unsigned short, signed char, signed int, signed int);
extern signed int (*v28) (unsigned short, signed char, signed int, signed int);
extern signed short v29 (unsigned char, signed char, unsigned short, signed int);
extern signed short (*v30) (unsigned char, signed char, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v101 = 1;
signed int v100 = -2;
unsigned short v99 = 3;

signed int v25 (unsigned char v102, signed short v103)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed char v106 = -3;
signed int v105 = 2;
unsigned int v104 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v21 (signed char v107, signed char v108, unsigned short v109, unsigned short v110)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed int v113 = 0;
signed int v112 = 0;
unsigned int v111 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v19 (signed char v114)
{
history[history_index++] = (int)v114;
{
for (;;) {
signed int v117 = -4;
unsigned int v116 = 5U;
signed int v115 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (signed int v118, signed int v119, unsigned int v120, signed char v121)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
{
for (;;) {
signed int v124 = -3;
unsigned char v123 = 1;
unsigned char v122 = 2;
trace++;
switch (trace)
{
case 1: 
{
signed int v125;
signed int v126;
unsigned int v127;
signed char v128;
signed short v129;
v125 = -2 - v119;
v126 = v118 + v118;
v127 = 7U - 1U;
v128 = 1 - 3;
v129 = v11 (v125, v126, v127, v128);
history[history_index++] = (int)v129;
}
break;
case 2: 
{
signed int v130;
signed int v131;
unsigned int v132;
signed char v133;
signed short v134;
v130 = v119 - v118;
v131 = v119 + -3;
v132 = v120 - v120;
v133 = v121 - -4;
v134 = v11 (v130, v131, v132, v133);
history[history_index++] = (int)v134;
}
break;
case 3: 
{
signed int v135;
signed int v136;
unsigned int v137;
signed char v138;
signed short v139;
v135 = v124 - v124;
v136 = v119 + v124;
v137 = v120 + v120;
v138 = v121 - v121;
v139 = v11 (v135, v136, v137, v138);
history[history_index++] = (int)v139;
}
break;
case 4: 
{
signed int v140;
signed int v141;
unsigned int v142;
signed char v143;
signed short v144;
v140 = v124 + v118;
v141 = -3 + v119;
v142 = v120 - v120;
v143 = v121 - -1;
v144 = v11 (v140, v141, v142, v143);
history[history_index++] = (int)v144;
}
break;
case 5: 
return -2;
case 6: 
{
signed int v145;
signed int v146;
unsigned int v147;
signed char v148;
signed short v149;
v145 = -2 - v118;
v146 = v119 - 0;
v147 = v120 - v120;
v148 = v121 - v121;
v149 = v11 (v145, v146, v147, v148);
history[history_index++] = (int)v149;
}
break;
case 7: 
return -2;
case 8: 
{
signed int v150;
signed int v151;
unsigned int v152;
signed char v153;
signed short v154;
v150 = 1 - 2;
v151 = v124 - v124;
v152 = v120 + 0U;
v153 = 2 - 3;
v154 = v11 (v150, v151, v152, v153);
history[history_index++] = (int)v154;
}
break;
case 9: 
return -3;
case 10: 
{
signed int v155;
signed int v156;
unsigned int v157;
signed char v158;
signed short v159;
v155 = 2 - v119;
v156 = v124 - -2;
v157 = v120 - v120;
v158 = -4 - v121;
v159 = v11 (v155, v156, v157, v158);
history[history_index++] = (int)v159;
}
break;
case 11: 
return 1;
case 12: 
return 1;
case 13: 
return -1;
case 14: 
return 3;
case 15: 
return 0;
default: abort ();
}
}
}
}

signed short v7 (void)
{
{
for (;;) {
unsigned char v162 = 7;
unsigned short v161 = 3;
unsigned short v160 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (void)
{
{
for (;;) {
unsigned char v165 = 3;
unsigned short v164 = 5;
unsigned int v163 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
