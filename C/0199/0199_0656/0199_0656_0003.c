#include <stdlib.h>
signed char v1 (void);
signed char (*v2) (void) = v1;
extern signed short v3 (signed short, signed int, unsigned char);
extern signed short (*v4) (signed short, signed int, unsigned char);
unsigned int v5 (void);
unsigned int (*v6) (void) = v5;
extern signed short v7 (signed char, unsigned short);
extern signed short (*v8) (signed char, unsigned short);
static signed int v9 (void);
static signed int (*v10) (void) = v9;
extern unsigned short v11 (signed char, signed char, signed short);
extern unsigned short (*v12) (signed char, signed char, signed short);
extern unsigned short v13 (unsigned char, signed int, unsigned char, unsigned char);
extern unsigned short (*v14) (unsigned char, signed int, unsigned char, unsigned char);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern void v17 (signed int, signed char, signed char, unsigned short);
extern void (*v18) (signed int, signed char, signed char, unsigned short);
void v19 (signed int, unsigned char, unsigned char, unsigned int);
void (*v20) (signed int, unsigned char, unsigned char, unsigned int) = v19;
extern signed int v21 (unsigned int, signed short, signed short, unsigned short);
extern signed int (*v22) (unsigned int, signed short, signed short, unsigned short);
extern signed short v23 (unsigned char, signed char, signed short, unsigned char);
extern signed short (*v24) (unsigned char, signed char, signed short, unsigned char);
extern unsigned char v25 (signed int, unsigned char, signed char, signed int);
extern unsigned char (*v26) (signed int, unsigned char, signed char, signed int);
extern signed char v27 (signed int);
extern signed char (*v28) (signed int);
extern unsigned short v29 (unsigned short, signed short, signed int, unsigned int);
extern unsigned short (*v30) (unsigned short, signed short, signed int, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v95 = -1;
signed short v94 = 3;
unsigned char v93 = 7;

void v19 (signed int v96, unsigned char v97, unsigned char v98, unsigned int v99)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
unsigned char v102 = 4;
unsigned int v101 = 1U;
unsigned char v100 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v9 (void)
{
{
for (;;) {
signed char v105 = -3;
signed char v104 = 3;
signed short v103 = -3;
trace++;
switch (trace)
{
case 3: 
{
signed char v106;
v106 = v15 ();
history[history_index++] = (int)v106;
}
break;
case 5: 
return 0;
default: abort ();
}
}
}
}

unsigned int v5 (void)
{
{
for (;;) {
unsigned int v109 = 0U;
unsigned short v108 = 2;
signed char v107 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (void)
{
{
for (;;) {
signed short v112 = 0;
signed int v111 = 0;
unsigned short v110 = 7;
trace++;
switch (trace)
{
case 0: 
{
signed int v113;
unsigned char v114;
signed char v115;
signed int v116;
unsigned char v117;
v113 = v111 - 1;
v114 = 4 + 3;
v115 = -3 - 3;
v116 = v111 - v111;
v117 = v25 (v113, v114, v115, v116);
history[history_index++] = (int)v117;
}
break;
case 2: 
{
signed int v118;
v118 = v9 ();
history[history_index++] = (int)v118;
}
break;
case 6: 
{
signed int v119;
signed char v120;
signed char v121;
unsigned short v122;
v119 = 1 + v111;
v120 = 1 - 1;
v121 = -1 + -2;
v122 = 6 + v110;
v17 (v119, v120, v121, v122);
}
break;
case 8: 
{
unsigned int v123;
signed short v124;
signed short v125;
unsigned short v126;
signed int v127;
v123 = 4U - 6U;
v124 = v112 - 0;
v125 = 3 + -1;
v126 = v110 - v110;
v127 = v21 (v123, v124, v125, v126);
history[history_index++] = (int)v127;
}
break;
case 10: 
{
signed char v128;
signed char v129;
signed short v130;
unsigned short v131;
v128 = -1 - 1;
v129 = -4 + 2;
v130 = -1 + -4;
v131 = v11 (v128, v129, v130);
history[history_index++] = (int)v131;
}
break;
case 12: 
return 0;
default: abort ();
}
}
}
}
