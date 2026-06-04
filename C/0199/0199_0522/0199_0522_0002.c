#include <stdlib.h>
extern signed int v3 (unsigned int, signed int, unsigned short);
extern signed int (*v4) (unsigned int, signed int, unsigned short);
extern signed int v5 (signed int, unsigned int);
extern signed int (*v6) (signed int, unsigned int);
unsigned int v7 (signed short, signed char, unsigned char);
unsigned int (*v8) (signed short, signed char, unsigned char) = v7;
extern void v9 (void);
extern void (*v10) (void);
extern unsigned short v11 (unsigned short, signed char, unsigned char, unsigned short);
extern unsigned short (*v12) (unsigned short, signed char, unsigned char, unsigned short);
unsigned short v13 (unsigned short);
unsigned short (*v14) (unsigned short) = v13;
extern signed int v15 (unsigned short, signed short, signed char);
extern signed int (*v16) (unsigned short, signed short, signed char);
static unsigned short v17 (unsigned char, signed short);
static unsigned short (*v18) (unsigned char, signed short) = v17;
extern signed char v19 (unsigned short, unsigned int);
extern signed char (*v20) (unsigned short, unsigned int);
extern signed short v21 (unsigned short, unsigned char);
extern signed short (*v22) (unsigned short, unsigned char);
extern signed short v23 (signed int);
extern signed short (*v24) (signed int);
extern void v25 (unsigned char, unsigned short, unsigned short, signed char);
extern void (*v26) (unsigned char, unsigned short, unsigned short, signed char);
void v27 (signed short, signed char, signed char, signed int);
void (*v28) (signed short, signed char, signed char, signed int) = v27;
extern unsigned int v29 (unsigned short, signed char, unsigned short);
extern unsigned int (*v30) (unsigned short, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v88 = 1;
signed short v87 = 3;
unsigned char v86 = 1;

void v27 (signed short v89, signed char v90, signed char v91, signed int v92)
{
history[history_index++] = (int)v89;
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned int v95 = 3U;
signed short v94 = 1;
signed int v93 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v17 (unsigned char v96, signed short v97)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed char v100 = -1;
signed short v99 = -4;
signed char v98 = -2;
trace++;
switch (trace)
{
case 4: 
{
unsigned short v101;
unsigned char v102;
signed short v103;
v101 = 4 - 0;
v102 = v96 + 5;
v103 = v21 (v101, v102);
history[history_index++] = (int)v103;
}
break;
case 6: 
{
unsigned short v104;
unsigned char v105;
signed short v106;
v104 = 1 + 1;
v105 = 1 + 2;
v106 = v21 (v104, v105);
history[history_index++] = (int)v106;
}
break;
case 8: 
{
unsigned short v107;
unsigned char v108;
signed short v109;
v107 = 6 + 7;
v108 = v96 + v96;
v109 = v21 (v107, v108);
history[history_index++] = (int)v109;
}
break;
case 10: 
{
unsigned short v110;
unsigned char v111;
signed short v112;
v110 = 4 - 5;
v111 = v96 - v96;
v112 = v21 (v110, v111);
history[history_index++] = (int)v112;
}
break;
case 12: 
return 4;
default: abort ();
}
}
}
}

unsigned short v13 (unsigned short v113)
{
history[history_index++] = (int)v113;
{
for (;;) {
unsigned char v116 = 4;
unsigned short v115 = 7;
unsigned int v114 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v7 (signed short v117, signed char v118, unsigned char v119)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
signed char v122 = -2;
signed char v121 = -2;
signed int v120 = -4;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v123;
unsigned char v124;
signed short v125;
v123 = 2 + 6;
v124 = 7 + 2;
v125 = v21 (v123, v124);
history[history_index++] = (int)v125;
}
break;
case 3: 
{
unsigned char v126;
signed short v127;
unsigned short v128;
v126 = v119 - 6;
v127 = -2 - 1;
v128 = v17 (v126, v127);
history[history_index++] = (int)v128;
}
break;
case 13: 
return 2U;
default: abort ();
}
}
}
}
