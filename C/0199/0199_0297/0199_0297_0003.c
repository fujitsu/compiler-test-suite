#include <stdlib.h>
extern void v3 (signed int);
extern void (*v4) (signed int);
extern unsigned short v5 (unsigned char);
extern unsigned short (*v6) (unsigned char);
extern unsigned short v7 (signed short);
extern unsigned short (*v8) (signed short);
unsigned short v9 (void);
unsigned short (*v10) (void) = v9;
extern unsigned short v11 (unsigned char, unsigned char);
extern unsigned short (*v12) (unsigned char, unsigned char);
extern signed char v13 (signed short);
extern signed char (*v14) (signed short);
signed short v15 (signed int);
signed short (*v16) (signed int) = v15;
extern signed int v17 (unsigned short, signed short, unsigned int);
extern signed int (*v18) (unsigned short, signed short, unsigned int);
extern unsigned short v19 (signed char, signed char);
extern unsigned short (*v20) (signed char, signed char);
extern signed short v21 (unsigned char, signed short, unsigned short);
extern signed short (*v22) (unsigned char, signed short, unsigned short);
unsigned short v23 (signed short, signed int, signed char, unsigned int);
unsigned short (*v24) (signed short, signed int, signed char, unsigned int) = v23;
extern unsigned int v25 (unsigned short, signed int, unsigned char);
extern unsigned int (*v26) (unsigned short, signed int, unsigned char);
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern signed int v29 (unsigned short, signed int, unsigned char, signed short);
extern signed int (*v30) (unsigned short, signed int, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v105 = 0U;
unsigned short v104 = 5;
signed char v103 = 3;

unsigned short v23 (signed short v106, signed int v107, signed char v108, unsigned int v109)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
signed char v112 = 1;
signed char v111 = -4;
signed char v110 = 1;
trace++;
switch (trace)
{
case 2: 
{
unsigned short v113;
signed int v114;
unsigned char v115;
signed short v116;
signed int v117;
v113 = 2 - 0;
v114 = v107 - v107;
v115 = 3 + 0;
v116 = -4 + v106;
v117 = v29 (v113, v114, v115, v116);
history[history_index++] = (int)v117;
}
break;
case 4: 
{
unsigned short v118;
signed int v119;
unsigned char v120;
signed short v121;
signed int v122;
v118 = 0 - 5;
v119 = v107 + 3;
v120 = 4 - 1;
v121 = v106 + -3;
v122 = v29 (v118, v119, v120, v121);
history[history_index++] = (int)v122;
}
break;
case 6: 
{
unsigned short v123;
signed int v124;
unsigned char v125;
signed short v126;
signed int v127;
v123 = 7 - 7;
v124 = 1 - 1;
v125 = 5 - 3;
v126 = -3 - v106;
v127 = v29 (v123, v124, v125, v126);
history[history_index++] = (int)v127;
}
break;
case 8: 
{
unsigned short v128;
signed int v129;
unsigned char v130;
signed short v131;
signed int v132;
v128 = 0 - 3;
v129 = -2 + v107;
v130 = 5 + 5;
v131 = v106 + 3;
v132 = v29 (v128, v129, v130, v131);
history[history_index++] = (int)v132;
}
break;
case 10: 
{
unsigned short v133;
signed int v134;
unsigned char v135;
signed short v136;
signed int v137;
v133 = 0 + 5;
v134 = -2 - -2;
v135 = 4 + 3;
v136 = 1 - -4;
v137 = v29 (v133, v134, v135, v136);
history[history_index++] = (int)v137;
}
break;
case 12: 
return 4;
default: abort ();
}
}
}
}

signed short v15 (signed int v138)
{
history[history_index++] = (int)v138;
{
for (;;) {
unsigned char v141 = 6;
signed char v140 = 0;
unsigned short v139 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (void)
{
{
for (;;) {
unsigned char v144 = 0;
unsigned int v143 = 0U;
signed int v142 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
