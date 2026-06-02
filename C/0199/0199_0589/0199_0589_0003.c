#include <stdlib.h>
extern signed int v1 (unsigned short, signed short);
extern signed int (*v2) (unsigned short, signed short);
extern unsigned short v3 (unsigned char, signed char);
extern unsigned short (*v4) (unsigned char, signed char);
signed short v5 (unsigned int, signed int, signed int);
signed short (*v6) (unsigned int, signed int, signed int) = v5;
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
void v9 (unsigned short, signed char);
void (*v10) (unsigned short, signed char) = v9;
unsigned short v11 (signed short, unsigned short);
unsigned short (*v12) (signed short, unsigned short) = v11;
extern signed int v13 (unsigned int, unsigned int, unsigned int, signed char);
extern signed int (*v14) (unsigned int, unsigned int, unsigned int, signed char);
unsigned char v15 (signed int, signed short);
unsigned char (*v16) (signed int, signed short) = v15;
extern void v17 (signed short, signed int, unsigned char, unsigned short);
extern void (*v18) (signed short, signed int, unsigned char, unsigned short);
signed char v19 (unsigned char, unsigned short);
signed char (*v20) (unsigned char, unsigned short) = v19;
extern unsigned char v21 (signed short, signed short, signed short, unsigned int);
extern unsigned char (*v22) (signed short, signed short, signed short, unsigned int);
unsigned int v23 (unsigned short, unsigned short, unsigned short, signed char);
unsigned int (*v24) (unsigned short, unsigned short, unsigned short, signed char) = v23;
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v100 = 5U;
unsigned char v99 = 3;
signed int v98 = -1;

unsigned int v23 (unsigned short v101, unsigned short v102, unsigned short v103, signed char v104)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
signed short v107 = -1;
unsigned int v106 = 1U;
signed char v105 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v19 (unsigned char v108, unsigned short v109)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned int v112 = 3U;
unsigned int v111 = 7U;
signed short v110 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (signed int v113, signed short v114)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
unsigned char v117 = 6;
signed char v116 = 0;
unsigned char v115 = 2;
trace++;
switch (trace)
{
case 3: 
{
signed short v118;
signed int v119;
unsigned char v120;
unsigned short v121;
v118 = -1 - 3;
v119 = v113 + -1;
v120 = v117 - v117;
v121 = 5 + 1;
v17 (v118, v119, v120, v121);
}
break;
case 5: 
{
signed short v122;
signed int v123;
unsigned char v124;
unsigned short v125;
v122 = -3 + v114;
v123 = v113 + -4;
v124 = 4 + v117;
v125 = 7 + 3;
v17 (v122, v123, v124, v125);
}
break;
case 7: 
{
signed short v126;
signed int v127;
unsigned char v128;
unsigned short v129;
v126 = v114 - -2;
v127 = -1 - v113;
v128 = v117 - 0;
v129 = 0 + 7;
v17 (v126, v127, v128, v129);
}
break;
case 10: 
{
unsigned short v130;
v130 = v29 ();
history[history_index++] = (int)v130;
}
break;
case 12: 
return v117;
case 15: 
return v115;
default: abort ();
}
}
}
}

unsigned short v11 (signed short v131, unsigned short v132)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
unsigned short v135 = 0;
unsigned char v134 = 7;
signed char v133 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (unsigned short v136, signed char v137)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
signed char v140 = -1;
unsigned int v139 = 2U;
signed int v138 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (unsigned int v141, signed int v142, signed int v143)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
unsigned int v146 = 6U;
signed char v145 = -3;
signed char v144 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
