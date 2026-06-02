#include <stdlib.h>
extern void v1 (signed char, signed int, unsigned char);
extern void (*v2) (signed char, signed int, unsigned char);
extern unsigned int v3 (signed short);
extern unsigned int (*v4) (signed short);
signed char v5 (signed char, signed short, unsigned short);
signed char (*v6) (signed char, signed short, unsigned short) = v5;
extern void v7 (void);
extern void (*v8) (void);
extern void v9 (signed int, signed char, signed char, unsigned int);
extern void (*v10) (signed int, signed char, signed char, unsigned int);
extern unsigned int v11 (signed char);
extern unsigned int (*v12) (signed char);
unsigned char v13 (void);
unsigned char (*v14) (void) = v13;
extern signed short v15 (void);
extern signed short (*v16) (void);
unsigned short v17 (signed char, signed int, signed int, signed int);
unsigned short (*v18) (signed char, signed int, signed int, signed int) = v17;
static signed short v19 (unsigned short, unsigned int, unsigned int);
static signed short (*v20) (unsigned short, unsigned int, unsigned int) = v19;
extern unsigned short v21 (signed char);
extern unsigned short (*v22) (signed char);
extern void v23 (signed short, signed int, signed int);
extern void (*v24) (signed short, signed int, signed int);
extern unsigned int v25 (signed int, signed short, signed short, unsigned int);
extern unsigned int (*v26) (signed int, signed short, signed short, unsigned int);
extern void v27 (unsigned short, unsigned int, signed int);
extern void (*v28) (unsigned short, unsigned int, signed int);
extern void v29 (signed short, unsigned int, signed int);
extern void (*v30) (signed short, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v83 = 2;
unsigned int v82 = 7U;
signed int v81 = 2;

static signed short v19 (unsigned short v84, unsigned int v85, unsigned int v86)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed short v89 = -4;
unsigned int v88 = 0U;
signed short v87 = -1;
trace++;
switch (trace)
{
case 4: 
{
unsigned short v90;
unsigned int v91;
unsigned int v92;
signed short v93;
v90 = 7 + v84;
v91 = v86 + 3U;
v92 = v88 - v85;
v93 = v19 (v90, v91, v92);
history[history_index++] = (int)v93;
}
break;
case 5: 
{
unsigned short v94;
unsigned int v95;
unsigned int v96;
signed short v97;
v94 = 4 + 3;
v95 = v88 + v85;
v96 = 2U + v86;
v97 = v19 (v94, v95, v96);
history[history_index++] = (int)v97;
}
break;
case 6: 
{
signed char v98;
unsigned short v99;
v98 = -4 + 0;
v99 = v21 (v98);
history[history_index++] = (int)v99;
}
break;
case 8: 
{
unsigned short v100;
unsigned int v101;
unsigned int v102;
signed short v103;
v100 = 0 + 3;
v101 = 3U - v85;
v102 = v85 + v85;
v103 = v19 (v100, v101, v102);
history[history_index++] = (int)v103;
}
break;
case 9: 
{
unsigned short v104;
unsigned int v105;
unsigned int v106;
signed short v107;
v104 = 7 - 6;
v105 = 6U - 5U;
v106 = v86 - v86;
v107 = v19 (v104, v105, v106);
history[history_index++] = (int)v107;
}
break;
case 10: 
return v87;
case 11: 
return -3;
case 12: 
return -4;
case 13: 
return v87;
case 14: 
return v87;
default: abort ();
}
}
}
}

unsigned short v17 (signed char v108, signed int v109, signed int v110, signed int v111)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
{
for (;;) {
unsigned short v114 = 0;
signed int v113 = -2;
unsigned int v112 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v13 (void)
{
{
for (;;) {
signed int v117 = -2;
signed int v116 = 1;
signed short v115 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (signed char v118, signed short v119, unsigned short v120)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
signed short v123 = 0;
unsigned char v122 = 4;
unsigned int v121 = 7U;
trace++;
switch (trace)
{
case 1: 
{
signed short v124;
unsigned int v125;
signed int v126;
v124 = -3 - v119;
v125 = v121 - 7U;
v126 = 0 + -4;
v29 (v124, v125, v126);
}
break;
case 3: 
{
unsigned short v127;
unsigned int v128;
unsigned int v129;
signed short v130;
v127 = 7 + 7;
v128 = v121 - 0U;
v129 = v121 + v121;
v130 = v19 (v127, v128, v129);
history[history_index++] = (int)v130;
}
break;
case 15: 
return v118;
default: abort ();
}
}
}
}
