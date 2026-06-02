#include <stdlib.h>
extern signed int v1 (unsigned int);
extern signed int (*v2) (unsigned int);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern signed int v5 (unsigned int, unsigned char, signed short, unsigned char);
extern signed int (*v6) (unsigned int, unsigned char, signed short, unsigned char);
extern signed char v7 (void);
extern signed char (*v8) (void);
unsigned short v9 (signed int);
unsigned short (*v10) (signed int) = v9;
void v11 (unsigned int, signed int, signed char);
void (*v12) (unsigned int, signed int, signed char) = v11;
extern unsigned int v13 (signed char);
extern unsigned int (*v14) (signed char);
extern unsigned short v15 (unsigned char, unsigned int, signed int);
extern unsigned short (*v16) (unsigned char, unsigned int, signed int);
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
signed int v21 (signed char, unsigned int, unsigned short, signed short);
signed int (*v22) (signed char, unsigned int, unsigned short, signed short) = v21;
extern signed int v23 (unsigned int);
extern signed int (*v24) (unsigned int);
signed char v25 (unsigned int, unsigned int);
signed char (*v26) (unsigned int, unsigned int) = v25;
signed short v27 (signed short);
signed short (*v28) (signed short) = v27;
extern void v29 (signed char, unsigned int, unsigned int, signed short);
extern void (*v30) (signed char, unsigned int, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v92 = 1;
signed int v91 = 3;
signed int v90 = 3;

signed short v27 (signed short v93)
{
history[history_index++] = (int)v93;
{
for (;;) {
unsigned char v96 = 1;
signed char v95 = -1;
signed short v94 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v25 (unsigned int v97, unsigned int v98)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
unsigned short v101 = 4;
signed char v100 = -4;
unsigned int v99 = 1U;
trace++;
switch (trace)
{
case 1: 
{
signed char v102;
unsigned int v103;
v102 = 2 + 3;
v103 = v13 (v102);
history[history_index++] = (int)v103;
}
break;
case 15: 
return -4;
default: abort ();
}
}
}
}

signed int v21 (signed char v104, unsigned int v105, unsigned short v106, signed short v107)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
unsigned short v110 = 3;
signed short v109 = -2;
signed char v108 = -3;
trace++;
switch (trace)
{
case 4: 
{
signed char v111;
unsigned int v112;
unsigned int v113;
signed short v114;
v111 = v104 + v104;
v112 = 4U + 4U;
v113 = 4U - v105;
v114 = v109 + v107;
v29 (v111, v112, v113, v114);
}
break;
case 6: 
{
signed char v115;
unsigned int v116;
unsigned int v117;
signed short v118;
v115 = v104 - -1;
v116 = 6U - v105;
v117 = 3U - 2U;
v118 = 3 - v107;
v29 (v115, v116, v117, v118);
}
break;
case 8: 
{
signed char v119;
unsigned int v120;
unsigned int v121;
signed short v122;
v119 = v108 + v104;
v120 = 1U + 5U;
v121 = v105 - 6U;
v122 = v107 + v107;
v29 (v119, v120, v121, v122);
}
break;
case 10: 
{
signed char v123;
unsigned int v124;
unsigned int v125;
signed short v126;
v123 = v104 + -4;
v124 = 2U - v105;
v125 = v105 - v105;
v126 = v109 - v107;
v29 (v123, v124, v125, v126);
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}

void v11 (unsigned int v127, signed int v128, signed char v129)
{
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned char v132 = 7;
unsigned short v131 = 7;
signed int v130 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (signed int v133)
{
history[history_index++] = (int)v133;
{
for (;;) {
signed int v136 = -1;
unsigned int v135 = 3U;
signed int v134 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
