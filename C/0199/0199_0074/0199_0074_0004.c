#include <stdlib.h>
void v1 (signed char, signed char, unsigned int);
void (*v2) (signed char, signed char, unsigned int) = v1;
signed short v3 (signed int, unsigned char, unsigned short, signed int);
signed short (*v4) (signed int, unsigned char, unsigned short, signed int) = v3;
extern signed short v5 (void);
extern signed short (*v6) (void);
static unsigned int v7 (void);
static unsigned int (*v8) (void) = v7;
extern signed char v9 (void);
extern signed char (*v10) (void);
extern unsigned char v11 (unsigned int, unsigned char, signed int);
extern unsigned char (*v12) (unsigned int, unsigned char, signed int);
signed char v13 (signed int);
signed char (*v14) (signed int) = v13;
extern signed int v15 (unsigned int, signed int, unsigned char, signed int);
extern signed int (*v16) (unsigned int, signed int, unsigned char, signed int);
extern void v17 (void);
extern void (*v18) (void);
extern signed short v19 (signed short);
extern signed short (*v20) (signed short);
unsigned char v21 (signed char, signed int);
unsigned char (*v22) (signed char, signed int) = v21;
extern unsigned short v23 (unsigned int, unsigned char, unsigned char);
extern unsigned short (*v24) (unsigned int, unsigned char, unsigned char);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed char v27 (signed int);
extern signed char (*v28) (signed int);
extern unsigned char v29 (unsigned short, signed char, unsigned int, signed char);
extern unsigned char (*v30) (unsigned short, signed char, unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v96 = 4;
signed int v95 = -1;
unsigned short v94 = 5;

unsigned char v21 (signed char v97, signed int v98)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
signed short v101 = -2;
unsigned short v100 = 7;
unsigned int v99 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (signed int v102)
{
history[history_index++] = (int)v102;
{
for (;;) {
signed char v105 = 3;
unsigned int v104 = 5U;
unsigned char v103 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v7 (void)
{
{
for (;;) {
signed int v108 = -2;
signed char v107 = -4;
unsigned char v106 = 6;
trace++;
switch (trace)
{
case 3: 
{
unsigned int v109;
unsigned char v110;
unsigned char v111;
unsigned short v112;
v109 = 1U - 7U;
v110 = v106 + v106;
v111 = 3 + v106;
v112 = v23 (v109, v110, v111);
history[history_index++] = (int)v112;
}
break;
case 5: 
{
unsigned int v113;
unsigned char v114;
unsigned char v115;
unsigned short v116;
v113 = 1U + 6U;
v114 = v106 - v106;
v115 = 3 + v106;
v116 = v23 (v113, v114, v115);
history[history_index++] = (int)v116;
}
break;
case 7: 
{
unsigned int v117;
unsigned char v118;
unsigned char v119;
unsigned short v120;
v117 = 2U + 3U;
v118 = v106 + 4;
v119 = v106 + v106;
v120 = v23 (v117, v118, v119);
history[history_index++] = (int)v120;
}
break;
case 9: 
{
unsigned int v121;
unsigned char v122;
unsigned char v123;
unsigned short v124;
v121 = 4U - 5U;
v122 = 2 - v106;
v123 = v106 + 5;
v124 = v23 (v121, v122, v123);
history[history_index++] = (int)v124;
}
break;
case 11: 
return 6U;
default: abort ();
}
}
}
}

signed short v3 (signed int v125, unsigned char v126, unsigned short v127, signed int v128)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
unsigned int v131 = 7U;
unsigned short v130 = 6;
unsigned char v129 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (signed char v132, signed char v133, unsigned int v134)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
unsigned int v137 = 5U;
signed int v136 = 0;
unsigned char v135 = 1;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v138;
signed char v139;
unsigned int v140;
signed char v141;
unsigned char v142;
v138 = 1 - 7;
v139 = v132 + v133;
v140 = 1U + v137;
v141 = v132 - v133;
v142 = v29 (v138, v139, v140, v141);
history[history_index++] = (int)v142;
}
break;
case 2: 
{
unsigned int v143;
v143 = v7 ();
history[history_index++] = (int)v143;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
