#include <stdlib.h>
signed short v1 (signed char, signed short, unsigned short, signed char);
signed short (*v2) (signed char, signed short, unsigned short, signed char) = v1;
extern signed int v3 (signed int);
extern signed int (*v4) (signed int);
extern unsigned char v5 (signed int, signed char);
extern unsigned char (*v6) (signed int, signed char);
extern void v7 (signed int, unsigned int, unsigned int);
extern void (*v8) (signed int, unsigned int, unsigned int);
extern signed int v9 (void);
extern signed int (*v10) (void);
unsigned int v11 (unsigned int, signed short, signed int, unsigned char);
unsigned int (*v12) (unsigned int, signed short, signed int, unsigned char) = v11;
extern signed char v13 (void);
extern signed char (*v14) (void);
extern signed short v15 (unsigned char, unsigned short, unsigned int);
extern signed short (*v16) (unsigned char, unsigned short, unsigned int);
unsigned int v17 (unsigned char, signed int, signed int);
unsigned int (*v18) (unsigned char, signed int, signed int) = v17;
extern void v19 (unsigned char, signed char, signed char, unsigned int);
extern void (*v20) (unsigned char, signed char, signed char, unsigned int);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern unsigned int v23 (signed char, unsigned short, signed int, signed short);
extern unsigned int (*v24) (signed char, unsigned short, signed int, signed short);
extern signed short v25 (unsigned int, unsigned short);
extern signed short (*v26) (unsigned int, unsigned short);
extern void v27 (signed char);
extern void (*v28) (signed char);
extern unsigned char v29 (void);
extern unsigned char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v109 = 6;
signed char v108 = 2;
signed char v107 = 3;

unsigned int v17 (unsigned char v110, signed int v111, signed int v112)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned int v115 = 5U;
signed int v114 = 0;
signed int v113 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (unsigned int v116, signed short v117, signed int v118, unsigned char v119)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned int v122 = 3U;
unsigned short v121 = 4;
unsigned short v120 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed char v123, signed short v124, unsigned short v125, signed char v126)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
signed short v129 = -3;
unsigned int v128 = 3U;
signed short v127 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v130;
unsigned short v131;
unsigned int v132;
signed short v133;
v130 = 4 + 6;
v131 = v125 - 7;
v132 = v128 + 0U;
v133 = v15 (v130, v131, v132);
history[history_index++] = (int)v133;
}
break;
case 2: 
{
unsigned char v134;
unsigned short v135;
unsigned int v136;
signed short v137;
v134 = 0 - 6;
v135 = 5 + 3;
v136 = v128 - v128;
v137 = v15 (v134, v135, v136);
history[history_index++] = (int)v137;
}
break;
case 4: 
{
signed int v138;
signed int v139;
v138 = -2 - -1;
v139 = v3 (v138);
history[history_index++] = (int)v139;
}
break;
case 6: 
{
unsigned char v140;
signed char v141;
signed char v142;
unsigned int v143;
v140 = 3 - 5;
v141 = v126 + v123;
v142 = v123 - 1;
v143 = 3U + v128;
v19 (v140, v141, v142, v143);
}
break;
case 8: 
{
signed int v144;
v144 = v9 ();
history[history_index++] = (int)v144;
}
break;
case 12: 
return v127;
default: abort ();
}
}
}
}
