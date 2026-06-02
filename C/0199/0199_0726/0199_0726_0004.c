#include <stdlib.h>
signed short v1 (signed char, signed int, signed short, unsigned short);
signed short (*v2) (signed char, signed int, signed short, unsigned short) = v1;
extern signed int v3 (unsigned int, unsigned short, unsigned int, signed char);
extern signed int (*v4) (unsigned int, unsigned short, unsigned int, signed char);
static unsigned int v5 (signed int);
static unsigned int (*v6) (signed int) = v5;
extern signed char v7 (signed short, unsigned char);
extern signed char (*v8) (signed short, unsigned char);
extern signed char v9 (void);
extern signed char (*v10) (void);
signed int v11 (void);
signed int (*v12) (void) = v11;
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned char v17 (signed int);
extern unsigned char (*v18) (signed int);
extern signed char v19 (unsigned int, signed char);
extern signed char (*v20) (unsigned int, signed char);
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern signed char v23 (unsigned short, signed short, signed short);
extern signed char (*v24) (unsigned short, signed short, signed short);
extern unsigned int v25 (unsigned char);
extern unsigned int (*v26) (unsigned char);
extern signed char v27 (unsigned int, signed short);
extern signed char (*v28) (unsigned int, signed short);
signed short v29 (signed int, unsigned char);
signed short (*v30) (signed int, unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v100 = 2;
signed char v99 = -4;
unsigned char v98 = 7;

signed short v29 (signed int v101, unsigned char v102)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed char v105 = 1;
unsigned char v104 = 6;
unsigned char v103 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v11 (void)
{
{
for (;;) {
unsigned int v108 = 6U;
unsigned char v107 = 5;
unsigned int v106 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned int v5 (signed int v109)
{
history[history_index++] = (int)v109;
{
for (;;) {
unsigned short v112 = 4;
signed char v111 = -2;
unsigned short v110 = 3;
trace++;
switch (trace)
{
case 3: 
{
unsigned char v113;
unsigned int v114;
v113 = 1 - 2;
v114 = v25 (v113);
history[history_index++] = (int)v114;
}
break;
case 5: 
{
unsigned char v115;
unsigned int v116;
v115 = 1 + 4;
v116 = v25 (v115);
history[history_index++] = (int)v116;
}
break;
case 7: 
{
unsigned char v117;
unsigned int v118;
v117 = 4 - 3;
v118 = v25 (v117);
history[history_index++] = (int)v118;
}
break;
case 9: 
{
unsigned char v119;
unsigned int v120;
v119 = 7 - 0;
v120 = v25 (v119);
history[history_index++] = (int)v120;
}
break;
case 11: 
return 2U;
default: abort ();
}
}
}
}

signed short v1 (signed char v121, signed int v122, signed short v123, unsigned short v124)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned short v127 = 3;
signed int v126 = -1;
unsigned short v125 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed char v128;
v128 = v9 ();
history[history_index++] = (int)v128;
}
break;
case 2: 
{
signed int v129;
unsigned int v130;
v129 = v126 - 1;
v130 = v5 (v129);
history[history_index++] = (int)v130;
}
break;
case 12: 
return -3;
default: abort ();
}
}
}
}
