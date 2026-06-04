#include <stdlib.h>
signed char v1 (void);
signed char (*v2) (void) = v1;
extern unsigned int v3 (unsigned short);
extern unsigned int (*v4) (unsigned short);
signed short v5 (unsigned char, signed char, signed char);
signed short (*v6) (unsigned char, signed char, signed char) = v5;
extern void v7 (unsigned int, signed char);
extern void (*v8) (unsigned int, signed char);
extern void v9 (signed short, signed int, unsigned short);
extern void (*v10) (signed short, signed int, unsigned short);
extern unsigned char v11 (unsigned short, unsigned char, signed char);
extern unsigned char (*v12) (unsigned short, unsigned char, signed char);
extern unsigned short v13 (unsigned int, signed short, unsigned short);
extern unsigned short (*v14) (unsigned int, signed short, unsigned short);
extern unsigned char v15 (signed int, signed int, signed short, unsigned int);
extern unsigned char (*v16) (signed int, signed int, signed short, unsigned int);
extern unsigned short v17 (unsigned char);
extern unsigned short (*v18) (unsigned char);
static unsigned char v19 (signed short, signed char, unsigned char);
static unsigned char (*v20) (signed short, signed char, unsigned char) = v19;
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern unsigned char v23 (unsigned int, unsigned char);
extern unsigned char (*v24) (unsigned int, unsigned char);
extern void v25 (signed char, unsigned int, signed char, signed char);
extern void (*v26) (signed char, unsigned int, signed char, signed char);
unsigned int v27 (void);
unsigned int (*v28) (void) = v27;
extern signed char v29 (unsigned char, unsigned short, unsigned short);
extern signed char (*v30) (unsigned char, unsigned short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v92 = -1;
signed char v91 = -3;
signed short v90 = -3;

unsigned int v27 (void)
{
{
for (;;) {
unsigned char v95 = 3;
signed short v94 = 0;
signed int v93 = 2;
trace++;
switch (trace)
{
case 6: 
{
unsigned int v96;
unsigned char v97;
unsigned char v98;
v96 = 6U - 5U;
v97 = v95 - 3;
v98 = v23 (v96, v97);
history[history_index++] = (int)v98;
}
break;
case 8: 
{
unsigned int v99;
unsigned char v100;
unsigned char v101;
v99 = 2U - 4U;
v100 = v95 + 7;
v101 = v23 (v99, v100);
history[history_index++] = (int)v101;
}
break;
case 10: 
{
unsigned int v102;
unsigned char v103;
unsigned char v104;
v102 = 4U + 2U;
v103 = 0 - 6;
v104 = v23 (v102, v103);
history[history_index++] = (int)v104;
}
break;
case 12: 
return 5U;
default: abort ();
}
}
}
}

static unsigned char v19 (signed short v105, signed char v106, unsigned char v107)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
signed short v110 = 1;
signed short v109 = -2;
signed char v108 = -3;
trace++;
switch (trace)
{
case 1: 
return v107;
default: abort ();
}
}
}
}

signed short v5 (unsigned char v111, signed char v112, signed char v113)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned short v116 = 5;
unsigned short v115 = 7;
unsigned short v114 = 1;
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
signed int v119 = -3;
unsigned char v118 = 7;
signed char v117 = -1;
trace++;
switch (trace)
{
case 0: 
{
signed short v120;
signed char v121;
unsigned char v122;
unsigned char v123;
v120 = -2 + 0;
v121 = v117 + 1;
v122 = 2 + 7;
v123 = v19 (v120, v121, v122);
history[history_index++] = (int)v123;
}
break;
case 2: 
{
unsigned short v124;
unsigned int v125;
v124 = 7 - 0;
v125 = v3 (v124);
history[history_index++] = (int)v125;
}
break;
case 4: 
{
unsigned short v126;
unsigned char v127;
signed char v128;
unsigned char v129;
v126 = 3 + 0;
v127 = 4 - 7;
v128 = v117 - v117;
v129 = v11 (v126, v127, v128);
history[history_index++] = (int)v129;
}
break;
case 14: 
return 1;
default: abort ();
}
}
}
}
