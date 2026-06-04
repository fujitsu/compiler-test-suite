#include <stdlib.h>
unsigned short v1 (signed short, unsigned short, unsigned int, unsigned int);
unsigned short (*v2) (signed short, unsigned short, unsigned int, unsigned int) = v1;
extern unsigned int v3 (unsigned short);
extern unsigned int (*v4) (unsigned short);
unsigned short v5 (unsigned short);
unsigned short (*v6) (unsigned short) = v5;
static unsigned short v7 (void);
static unsigned short (*v8) (void) = v7;
extern signed short v9 (unsigned short);
extern signed short (*v10) (unsigned short);
unsigned int v11 (unsigned char, unsigned char, unsigned char);
unsigned int (*v12) (unsigned char, unsigned char, unsigned char) = v11;
extern void v13 (unsigned char, signed char, unsigned int);
extern void (*v14) (unsigned char, signed char, unsigned int);
extern void v15 (unsigned int, signed short, signed int, signed char);
extern void (*v16) (unsigned int, signed short, signed int, signed char);
static unsigned short v17 (signed short, signed char, signed int, signed int);
static unsigned short (*v18) (signed short, signed char, signed int, signed int) = v17;
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
unsigned char v21 (signed int, signed int, signed char);
unsigned char (*v22) (signed int, signed int, signed char) = v21;
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern signed int v25 (unsigned char, unsigned int, unsigned short, unsigned int);
extern signed int (*v26) (unsigned char, unsigned int, unsigned short, unsigned int);
extern signed short v27 (unsigned int, signed short, signed int);
extern signed short (*v28) (unsigned int, signed short, signed int);
extern unsigned char v29 (unsigned char, signed int, unsigned int);
extern unsigned char (*v30) (unsigned char, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v100 = 0;
signed int v99 = 3;
unsigned short v98 = 0;

unsigned char v21 (signed int v101, signed int v102, signed char v103)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
unsigned int v106 = 4U;
signed int v105 = 1;
signed int v104 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v17 (signed short v107, signed char v108, signed int v109, signed int v110)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
signed int v113 = -1;
signed char v112 = -4;
unsigned short v111 = 1;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v114;
signed char v115;
unsigned int v116;
v114 = 3 - 0;
v115 = v108 - v112;
v116 = 0U - 7U;
v13 (v114, v115, v116);
}
break;
case 3: 
{
unsigned short v117;
v117 = v19 ();
history[history_index++] = (int)v117;
}
break;
case 5: 
return v111;
default: abort ();
}
}
}
}

unsigned int v11 (unsigned char v118, unsigned char v119, unsigned char v120)
{
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
{
for (;;) {
unsigned int v123 = 7U;
unsigned int v122 = 1U;
signed char v121 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v7 (void)
{
{
for (;;) {
signed char v126 = -3;
signed char v125 = -1;
unsigned char v124 = 4;
trace++;
switch (trace)
{
case 9: 
return 1;
default: abort ();
}
}
}
}

unsigned short v5 (unsigned short v127)
{
history[history_index++] = (int)v127;
{
for (;;) {
signed short v130 = -2;
signed int v129 = -3;
unsigned int v128 = 4U;
trace++;
switch (trace)
{
case 8: 
{
unsigned short v131;
v131 = v7 ();
history[history_index++] = (int)v131;
}
break;
case 10: 
return v127;
default: abort ();
}
}
}
}

unsigned short v1 (signed short v132, unsigned short v133, unsigned int v134, unsigned int v135)
{
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
signed int v138 = 1;
signed short v137 = -4;
signed short v136 = -3;
trace++;
switch (trace)
{
case 0: 
{
signed short v139;
signed char v140;
signed int v141;
signed int v142;
unsigned short v143;
v139 = 3 - -3;
v140 = 2 - 2;
v141 = v138 + v138;
v142 = 3 + v138;
v143 = v17 (v139, v140, v141, v142);
history[history_index++] = (int)v143;
}
break;
case 6: 
{
unsigned short v144;
v144 = v23 ();
history[history_index++] = (int)v144;
}
break;
case 12: 
return v133;
default: abort ();
}
}
}
}
