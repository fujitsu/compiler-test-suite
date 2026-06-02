#include <stdlib.h>
unsigned int v1 (signed short, unsigned short, unsigned int);
unsigned int (*v2) (signed short, unsigned short, unsigned int) = v1;
extern unsigned char v3 (signed char, unsigned int);
extern unsigned char (*v4) (signed char, unsigned int);
void v5 (signed int, unsigned int, signed short, signed int);
void (*v6) (signed int, unsigned int, signed short, signed int) = v5;
extern signed int v7 (void);
extern signed int (*v8) (void);
extern unsigned short v9 (void);
extern unsigned short (*v10) (void);
void v11 (signed short, signed short, unsigned char);
void (*v12) (signed short, signed short, unsigned char) = v11;
extern signed char v13 (unsigned char);
extern signed char (*v14) (unsigned char);
extern unsigned int v15 (unsigned short, signed short, unsigned char, signed char);
extern unsigned int (*v16) (unsigned short, signed short, unsigned char, signed char);
static unsigned int v17 (unsigned char, signed short, unsigned int, unsigned int);
static unsigned int (*v18) (unsigned char, signed short, unsigned int, unsigned int) = v17;
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern unsigned int v21 (unsigned int, signed int, unsigned int);
extern unsigned int (*v22) (unsigned int, signed int, unsigned int);
extern void v23 (signed short, unsigned int, signed int, unsigned int);
extern void (*v24) (signed short, unsigned int, signed int, unsigned int);
extern void v25 (signed int, unsigned char);
extern void (*v26) (signed int, unsigned char);
extern void v27 (unsigned short, signed int, unsigned char);
extern void (*v28) (unsigned short, signed int, unsigned char);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v85 = 5;
signed char v84 = -1;
unsigned short v83 = 4;

static unsigned int v17 (unsigned char v86, signed short v87, unsigned int v88, unsigned int v89)
{
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned short v92 = 7;
signed int v91 = 1;
signed short v90 = 2;
trace++;
switch (trace)
{
case 10: 
{
unsigned short v93;
v93 = v29 ();
history[history_index++] = (int)v93;
}
break;
case 12: 
return v88;
default: abort ();
}
}
}
}

void v11 (signed short v94, signed short v95, unsigned char v96)
{
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
unsigned short v99 = 3;
unsigned char v98 = 7;
signed short v97 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (signed int v100, unsigned int v101, signed short v102, signed int v103)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed short v106 = -1;
unsigned short v105 = 6;
unsigned char v104 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (signed short v107, unsigned short v108, unsigned int v109)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
{
for (;;) {
unsigned char v112 = 2;
signed int v111 = -1;
unsigned int v110 = 4U;
trace++;
switch (trace)
{
case 0: 
return v109;
case 1: 
{
unsigned char v113;
signed char v114;
v113 = v112 + 0;
v114 = v13 (v113);
history[history_index++] = (int)v114;
}
break;
case 3: 
{
unsigned short v115;
signed int v116;
unsigned char v117;
v115 = v108 + v108;
v116 = -3 + -2;
v117 = 7 + 2;
v27 (v115, v116, v117);
}
break;
case 5: 
{
signed short v118;
unsigned int v119;
signed int v120;
unsigned int v121;
v118 = v107 - v107;
v119 = 6U - v110;
v120 = v111 + 3;
v121 = v110 + 7U;
v23 (v118, v119, v120, v121);
}
break;
case 7: 
{
signed int v122;
unsigned char v123;
v122 = 2 + 1;
v123 = v112 + v112;
v25 (v122, v123);
}
break;
case 9: 
{
unsigned char v124;
signed short v125;
unsigned int v126;
unsigned int v127;
unsigned int v128;
v124 = 5 - v112;
v125 = v107 - -1;
v126 = v109 + v109;
v127 = v110 - v109;
v128 = v17 (v124, v125, v126, v127);
history[history_index++] = (int)v128;
}
break;
case 13: 
return v109;
default: abort ();
}
}
}
}
