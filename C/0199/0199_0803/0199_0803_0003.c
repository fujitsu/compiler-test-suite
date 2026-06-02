#include <stdlib.h>
extern signed short v1 (unsigned char, unsigned char, signed char, signed char);
extern signed short (*v2) (unsigned char, unsigned char, signed char, signed char);
extern unsigned short v5 (unsigned int, unsigned short);
extern unsigned short (*v6) (unsigned int, unsigned short);
unsigned char v7 (unsigned int, signed int, unsigned short, signed short);
unsigned char (*v8) (unsigned int, signed int, unsigned short, signed short) = v7;
extern signed int v9 (unsigned short, signed short, signed char, signed short);
extern signed int (*v10) (unsigned short, signed short, signed char, signed short);
extern void v11 (signed short, unsigned short, signed char, signed short);
extern void (*v12) (signed short, unsigned short, signed char, signed short);
extern void v13 (signed short, unsigned short);
extern void (*v14) (signed short, unsigned short);
extern unsigned char v15 (unsigned int, signed char);
extern unsigned char (*v16) (unsigned int, signed char);
extern void v17 (signed int, signed char, unsigned char, unsigned int);
extern void (*v18) (signed int, signed char, unsigned char, unsigned int);
extern signed short v19 (signed short, signed char);
extern signed short (*v20) (signed short, signed char);
signed char v21 (signed int, signed int, signed int, unsigned short);
signed char (*v22) (signed int, signed int, signed int, unsigned short) = v21;
signed short v23 (unsigned int, signed short);
signed short (*v24) (unsigned int, signed short) = v23;
extern signed int v25 (unsigned short, signed short, unsigned int, signed char);
extern signed int (*v26) (unsigned short, signed short, unsigned int, signed char);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern signed char v29 (unsigned short, unsigned short);
extern signed char (*v30) (unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v108 = -3;
signed short v107 = -3;
unsigned short v106 = 2;

signed short v23 (unsigned int v109, signed short v110)
{
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed int v113 = 2;
unsigned short v112 = 0;
unsigned int v111 = 1U;
trace++;
switch (trace)
{
case 2: 
{
unsigned short v114;
signed short v115;
unsigned int v116;
signed char v117;
signed int v118;
v114 = 0 - v112;
v115 = 3 - 0;
v116 = v111 - 0U;
v117 = -2 + -4;
v118 = v25 (v114, v115, v116, v117);
history[history_index++] = (int)v118;
}
break;
case 4: 
{
unsigned short v119;
signed short v120;
unsigned int v121;
signed char v122;
signed int v123;
v119 = 4 - v112;
v120 = 3 + v110;
v121 = v111 - 2U;
v122 = 1 - -4;
v123 = v25 (v119, v120, v121, v122);
history[history_index++] = (int)v123;
}
break;
case 6: 
{
unsigned short v124;
signed short v125;
unsigned int v126;
signed char v127;
signed int v128;
v124 = 4 - 3;
v125 = 0 + v110;
v126 = v111 - v109;
v127 = 0 + -1;
v128 = v25 (v124, v125, v126, v127);
history[history_index++] = (int)v128;
}
break;
case 8: 
return -2;
default: abort ();
}
}
}
}

signed char v21 (signed int v129, signed int v130, signed int v131, unsigned short v132)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
unsigned int v135 = 5U;
signed char v134 = -2;
signed short v133 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned int v136, signed int v137, unsigned short v138, signed short v139)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
unsigned short v142 = 5;
unsigned int v141 = 6U;
signed char v140 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
