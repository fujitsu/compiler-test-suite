#include <stdlib.h>
extern signed int v1 (signed short, unsigned int, signed int);
extern signed int (*v2) (signed short, unsigned int, signed int);
extern signed short v3 (signed short);
extern signed short (*v4) (signed short);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern unsigned short v7 (signed char, unsigned short, signed int, unsigned int);
extern unsigned short (*v8) (signed char, unsigned short, signed int, unsigned int);
signed int v9 (unsigned char, unsigned int);
signed int (*v10) (unsigned char, unsigned int) = v9;
extern signed char v11 (unsigned short, unsigned char, unsigned char, unsigned int);
extern signed char (*v12) (unsigned short, unsigned char, unsigned char, unsigned int);
extern unsigned char v13 (signed char, unsigned int, unsigned char);
extern unsigned char (*v14) (signed char, unsigned int, unsigned char);
extern signed int v15 (signed char, signed short, signed short);
extern signed int (*v16) (signed char, signed short, signed short);
extern signed short v17 (unsigned int, signed int, signed int);
extern signed short (*v18) (unsigned int, signed int, signed int);
void v19 (signed int, signed char, signed short);
void (*v20) (signed int, signed char, signed short) = v19;
signed char v21 (void);
signed char (*v22) (void) = v21;
signed short v23 (unsigned char, signed char);
signed short (*v24) (unsigned char, signed char) = v23;
extern unsigned char v25 (unsigned char, unsigned char, signed short);
extern unsigned char (*v26) (unsigned char, unsigned char, signed short);
extern unsigned char v27 (unsigned int, signed short);
extern unsigned char (*v28) (unsigned int, signed short);
signed short v29 (signed short, unsigned char);
signed short (*v30) (signed short, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed short v113 = -3;
unsigned int v112 = 0U;
signed char v111 = -2;

signed short v29 (signed short v114, unsigned char v115)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned char v118 = 7;
unsigned char v117 = 1;
unsigned char v116 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v23 (unsigned char v119, signed char v120)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
unsigned int v123 = 2U;
signed char v122 = -3;
unsigned short v121 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v21 (void)
{
{
for (;;) {
unsigned int v126 = 4U;
signed short v125 = -1;
unsigned char v124 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v19 (signed int v127, signed char v128, signed short v129)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned short v132 = 3;
unsigned char v131 = 5;
unsigned int v130 = 0U;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v133;
signed short v134;
unsigned char v135;
v133 = v130 - v130;
v134 = v129 - 3;
v135 = v27 (v133, v134);
history[history_index++] = (int)v135;
}
break;
case 3: 
{
unsigned int v136;
signed short v137;
unsigned char v138;
v136 = 5U - v130;
v137 = v129 - -4;
v138 = v27 (v136, v137);
history[history_index++] = (int)v138;
}
break;
case 5: 
return;
case 7: 
{
unsigned int v139;
signed short v140;
unsigned char v141;
v139 = 7U - v130;
v140 = 2 - -1;
v141 = v27 (v139, v140);
history[history_index++] = (int)v141;
}
break;
case 9: 
{
unsigned int v142;
signed short v143;
unsigned char v144;
v142 = v130 - v130;
v143 = v129 - -1;
v144 = v27 (v142, v143);
history[history_index++] = (int)v144;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}

signed int v9 (unsigned char v145, unsigned int v146)
{
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
signed short v149 = 0;
signed int v148 = -1;
unsigned int v147 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
