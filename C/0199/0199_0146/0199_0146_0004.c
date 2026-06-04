#include <stdlib.h>
signed char v1 (unsigned char, unsigned int, unsigned short, unsigned short);
signed char (*v2) (unsigned char, unsigned int, unsigned short, unsigned short) = v1;
signed short v3 (unsigned short);
signed short (*v4) (unsigned short) = v3;
signed int v5 (unsigned short);
signed int (*v6) (unsigned short) = v5;
extern signed int v7 (signed char, unsigned char, unsigned char, signed char);
extern signed int (*v8) (signed char, unsigned char, unsigned char, signed char);
void v9 (unsigned char);
void (*v10) (unsigned char) = v9;
extern unsigned short v11 (signed int, unsigned short);
extern unsigned short (*v12) (signed int, unsigned short);
unsigned int v13 (unsigned int, unsigned int);
unsigned int (*v14) (unsigned int, unsigned int) = v13;
extern void v15 (unsigned short);
extern void (*v16) (unsigned short);
extern signed int v17 (signed char, unsigned char, signed int, signed short);
extern signed int (*v18) (signed char, unsigned char, signed int, signed short);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern signed int v23 (void);
extern signed int (*v24) (void);
extern unsigned char v25 (unsigned char, signed short);
extern unsigned char (*v26) (unsigned char, signed short);
unsigned int v27 (signed short, signed int, unsigned int, signed int);
unsigned int (*v28) (signed short, signed int, unsigned int, signed int) = v27;
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v99 = 1U;
unsigned char v98 = 2;
signed int v97 = 2;

unsigned int v27 (signed short v100, signed int v101, unsigned int v102, signed int v103)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed int v106 = 3;
signed char v105 = -1;
unsigned char v104 = 1;
trace++;
switch (trace)
{
case 2: 
{
signed int v107;
unsigned short v108;
unsigned short v109;
v107 = v103 - 0;
v108 = 0 + 6;
v109 = v11 (v107, v108);
history[history_index++] = (int)v109;
}
break;
case 4: 
{
signed int v110;
unsigned short v111;
unsigned short v112;
v110 = v101 + v106;
v111 = 1 + 5;
v112 = v11 (v110, v111);
history[history_index++] = (int)v112;
}
break;
case 6: 
{
signed int v113;
unsigned short v114;
unsigned short v115;
v113 = -3 - v101;
v114 = 5 + 0;
v115 = v11 (v113, v114);
history[history_index++] = (int)v115;
}
break;
case 12: 
return v102;
default: abort ();
}
}
}
}

unsigned int v13 (unsigned int v116, unsigned int v117)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
signed int v120 = -1;
signed char v119 = 2;
signed short v118 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (unsigned char v121)
{
history[history_index++] = (int)v121;
{
for (;;) {
unsigned short v124 = 6;
unsigned short v123 = 6;
unsigned short v122 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v5 (unsigned short v125)
{
history[history_index++] = (int)v125;
{
for (;;) {
signed short v128 = -4;
signed int v127 = -2;
signed int v126 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v3 (unsigned short v129)
{
history[history_index++] = (int)v129;
{
for (;;) {
signed char v132 = 2;
unsigned char v131 = 2;
unsigned char v130 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (unsigned char v133, unsigned int v134, unsigned short v135, unsigned short v136)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
signed short v139 = 0;
signed int v138 = 2;
unsigned short v137 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v140;
signed short v141;
unsigned char v142;
v140 = v133 - v133;
v141 = v139 + v139;
v142 = v25 (v140, v141);
history[history_index++] = (int)v142;
}
break;
case 14: 
return 1;
default: abort ();
}
}
}
}
