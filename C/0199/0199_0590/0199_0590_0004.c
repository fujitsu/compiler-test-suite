#include <stdlib.h>
signed short v1 (signed char);
signed short (*v2) (signed char) = v1;
extern unsigned short v3 (unsigned int, signed char);
extern unsigned short (*v4) (unsigned int, signed char);
extern unsigned int v5 (signed int, unsigned int, signed int, unsigned short);
extern unsigned int (*v6) (signed int, unsigned int, signed int, unsigned short);
extern signed char v7 (signed short);
extern signed char (*v8) (signed short);
void v9 (signed short, signed short, signed char, signed int);
void (*v10) (signed short, signed short, signed char, signed int) = v9;
signed char v11 (unsigned int, unsigned int, signed char);
signed char (*v12) (unsigned int, unsigned int, signed char) = v11;
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern unsigned char v15 (signed int, signed char);
extern unsigned char (*v16) (signed int, signed char);
extern signed char v17 (signed char, unsigned short);
extern signed char (*v18) (signed char, unsigned short);
extern unsigned int v19 (void);
extern unsigned int (*v20) (void);
signed short v21 (signed int, signed short);
signed short (*v22) (signed int, signed short) = v21;
extern unsigned char v23 (signed char, unsigned int, unsigned short, signed short);
extern unsigned char (*v24) (signed char, unsigned int, unsigned short, signed short);
extern void v25 (void);
extern void (*v26) (void);
extern signed short v27 (signed int, signed short, signed char, unsigned int);
extern signed short (*v28) (signed int, signed short, signed char, unsigned int);
extern unsigned int v29 (signed short);
extern unsigned int (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v110 = 2U;
unsigned short v109 = 2;
signed int v108 = -1;

signed short v21 (signed int v111, signed short v112)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned int v115 = 3U;
signed short v114 = -3;
signed short v113 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v11 (unsigned int v116, unsigned int v117, signed char v118)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed int v121 = -3;
signed char v120 = -4;
unsigned short v119 = 0;
trace++;
switch (trace)
{
case 1: 
return v118;
case 3: 
return v120;
case 5: 
return v120;
case 8: 
return v120;
case 10: 
return v118;
default: abort ();
}
}
}
}

void v9 (signed short v122, signed short v123, signed char v124, signed int v125)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
{
for (;;) {
signed short v128 = -2;
signed short v127 = -4;
unsigned short v126 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v1 (signed char v129)
{
history[history_index++] = (int)v129;
{
for (;;) {
unsigned short v132 = 1;
signed short v131 = -4;
unsigned char v130 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v133;
unsigned int v134;
signed char v135;
signed char v136;
v133 = 1U + 0U;
v134 = 1U - 6U;
v135 = v129 - 3;
v136 = v11 (v133, v134, v135);
history[history_index++] = (int)v136;
}
break;
case 2: 
{
unsigned int v137;
unsigned int v138;
signed char v139;
signed char v140;
v137 = 5U + 2U;
v138 = 5U + 7U;
v139 = v129 - 2;
v140 = v11 (v137, v138, v139);
history[history_index++] = (int)v140;
}
break;
case 4: 
{
unsigned int v141;
unsigned int v142;
signed char v143;
signed char v144;
v141 = 7U - 4U;
v142 = 4U + 6U;
v143 = -1 + 1;
v144 = v11 (v141, v142, v143);
history[history_index++] = (int)v144;
}
break;
case 6: 
{
v25 ();
}
break;
case 12: 
return v131;
default: abort ();
}
}
}
}
