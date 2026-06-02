#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
unsigned char v3 (void);
unsigned char (*v4) (void) = v3;
extern signed char v5 (signed char);
extern signed char (*v6) (signed char);
signed char v7 (unsigned char, unsigned char, unsigned char, signed short);
signed char (*v8) (unsigned char, unsigned char, unsigned char, signed short) = v7;
extern signed short v9 (unsigned char);
extern signed short (*v10) (unsigned char);
unsigned int v11 (void);
unsigned int (*v12) (void) = v11;
extern unsigned char v13 (unsigned int, unsigned int, unsigned int);
extern unsigned char (*v14) (unsigned int, unsigned int, unsigned int);
signed short v15 (void);
signed short (*v16) (void) = v15;
extern signed short v17 (signed short);
extern signed short (*v18) (signed short);
extern unsigned char v19 (signed char, unsigned short, signed short);
extern unsigned char (*v20) (signed char, unsigned short, signed short);
extern signed char v21 (void);
extern signed char (*v22) (void);
unsigned short v23 (unsigned int, unsigned char, unsigned short);
unsigned short (*v24) (unsigned int, unsigned char, unsigned short) = v23;
extern unsigned char v25 (unsigned short, signed short);
extern unsigned char (*v26) (unsigned short, signed short);
signed char v27 (unsigned int, unsigned int, signed int, unsigned int);
signed char (*v28) (unsigned int, unsigned int, signed int, unsigned int) = v27;
void v29 (signed short, unsigned short, signed short, unsigned char);
void (*v30) (signed short, unsigned short, signed short, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v91 = 4U;
unsigned char v90 = 6;
unsigned short v89 = 2;

void v29 (signed short v92, unsigned short v93, signed short v94, unsigned char v95)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
signed int v98 = -1;
signed int v97 = -3;
signed int v96 = -1;
trace++;
switch (trace)
{
case 3: 
{
signed short v99;
unsigned short v100;
signed short v101;
unsigned char v102;
v99 = 1 - v92;
v100 = 2 - 4;
v101 = v92 - 3;
v102 = v95 + v95;
v29 (v99, v100, v101, v102);
}
break;
case 4: 
{
signed short v103;
unsigned short v104;
signed short v105;
unsigned char v106;
v103 = v92 - -1;
v104 = v93 - 6;
v105 = -3 + v94;
v106 = 5 + v95;
v29 (v103, v104, v105, v106);
}
break;
case 5: 
{
signed short v107;
unsigned short v108;
signed short v109;
unsigned char v110;
v107 = v92 + -4;
v108 = 0 + v93;
v109 = v94 - -2;
v110 = 6 + v95;
v29 (v107, v108, v109, v110);
}
break;
case 6: 
{
signed short v111;
unsigned short v112;
signed short v113;
unsigned char v114;
v111 = v92 + v92;
v112 = v93 - v93;
v113 = v94 - -4;
v114 = v95 + 3;
v29 (v111, v112, v113, v114);
}
break;
case 7: 
{
signed short v115;
unsigned short v116;
signed short v117;
unsigned char v118;
v115 = v94 + v94;
v116 = v93 - v93;
v117 = v94 + 3;
v118 = v95 - 3;
v29 (v115, v116, v117, v118);
}
break;
case 8: 
{
signed short v119;
unsigned short v120;
signed short v121;
unsigned char v122;
v119 = v92 + -1;
v120 = v93 + 5;
v121 = 0 + -4;
v122 = 4 - v95;
v29 (v119, v120, v121, v122);
}
break;
case 9: 
return;
case 10: 
return;
case 11: 
return;
case 12: 
return;
case 13: 
return;
case 14: 
return;
case 15: 
return;
default: abort ();
}
}
}
}

signed char v27 (unsigned int v123, unsigned int v124, signed int v125, unsigned int v126)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
{
for (;;) {
unsigned int v129 = 3U;
unsigned short v128 = 1;
unsigned int v127 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v23 (unsigned int v130, unsigned char v131, unsigned short v132)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
unsigned char v135 = 3;
unsigned int v134 = 3U;
signed char v133 = 3;
trace++;
switch (trace)
{
case 1: 
return 3;
default: abort ();
}
}
}
}

signed short v15 (void)
{
{
for (;;) {
signed char v138 = -3;
unsigned short v137 = 0;
unsigned short v136 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (void)
{
{
for (;;) {
signed char v141 = -3;
signed int v140 = 2;
signed char v139 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v7 (unsigned char v142, unsigned char v143, unsigned char v144, signed short v145)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
{
for (;;) {
unsigned char v148 = 7;
unsigned int v147 = 2U;
unsigned int v146 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (void)
{
{
for (;;) {
signed short v151 = 3;
signed char v150 = 0;
unsigned short v149 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
