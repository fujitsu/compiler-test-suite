#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
unsigned char v3 (unsigned int, unsigned short, unsigned char, signed short);
unsigned char (*v4) (unsigned int, unsigned short, unsigned char, signed short) = v3;
unsigned short v5 (signed short, unsigned short);
unsigned short (*v6) (signed short, unsigned short) = v5;
extern signed int v7 (unsigned short, signed char);
extern signed int (*v8) (unsigned short, signed char);
extern void v9 (unsigned int);
extern void (*v10) (unsigned int);
extern void v11 (signed char, signed short);
extern void (*v12) (signed char, signed short);
extern unsigned char v13 (unsigned char, signed char);
extern unsigned char (*v14) (unsigned char, signed char);
extern unsigned char v15 (unsigned char, unsigned short, signed short, signed short);
extern unsigned char (*v16) (unsigned char, unsigned short, signed short, signed short);
signed char v17 (signed int);
signed char (*v18) (signed int) = v17;
extern signed int v19 (unsigned int, signed short, signed int);
extern signed int (*v20) (unsigned int, signed short, signed int);
extern void v21 (unsigned int);
extern void (*v22) (unsigned int);
unsigned int v23 (unsigned char, signed short, unsigned int, signed char);
unsigned int (*v24) (unsigned char, signed short, unsigned int, signed char) = v23;
extern signed int v25 (unsigned int, signed char);
extern signed int (*v26) (unsigned int, signed char);
extern void v27 (signed int, unsigned int);
extern void (*v28) (signed int, unsigned int);
signed char v29 (signed int, unsigned int, signed char);
signed char (*v30) (signed int, unsigned int, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v94 = -2;
signed char v93 = 2;
signed int v92 = 2;

signed char v29 (signed int v95, unsigned int v96, signed char v97)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed int v100 = 3;
unsigned short v99 = 2;
unsigned char v98 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v23 (unsigned char v101, signed short v102, unsigned int v103, signed char v104)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
unsigned int v107 = 5U;
unsigned int v106 = 2U;
unsigned int v105 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v17 (signed int v108)
{
history[history_index++] = (int)v108;
{
for (;;) {
unsigned short v111 = 5;
signed char v110 = -1;
signed short v109 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (signed short v112, unsigned short v113)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned int v116 = 6U;
signed short v115 = -4;
signed int v114 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (unsigned int v117, unsigned short v118, unsigned char v119, signed short v120)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
signed int v123 = 0;
signed short v122 = 1;
signed int v121 = -1;
trace++;
switch (trace)
{
case 2: 
return 6;
case 4: 
{
unsigned short v124;
signed char v125;
signed int v126;
v124 = 0 - v118;
v125 = -3 + 1;
v126 = v7 (v124, v125);
history[history_index++] = (int)v126;
}
break;
case 6: 
{
unsigned short v127;
signed char v128;
signed int v129;
v127 = v118 + v118;
v128 = -3 - -3;
v129 = v7 (v127, v128);
history[history_index++] = (int)v129;
}
break;
case 8: 
{
unsigned short v130;
signed char v131;
signed int v132;
v130 = v118 - v118;
v131 = -2 + 0;
v132 = v7 (v130, v131);
history[history_index++] = (int)v132;
}
break;
case 10: 
{
unsigned short v133;
signed char v134;
signed int v135;
v133 = 2 - v118;
v134 = -2 - 2;
v135 = v7 (v133, v134);
history[history_index++] = (int)v135;
}
break;
case 12: 
return 3;
case 14: 
return 4;
case 16: 
return 7;
case 18: 
return v119;
default: abort ();
}
}
}
}
