#include <stdlib.h>
extern signed short v1 (signed int, signed char);
extern signed short (*v2) (signed int, signed char);
unsigned char v3 (signed short);
unsigned char (*v4) (signed short) = v3;
extern unsigned char v5 (unsigned char, unsigned short, unsigned char, unsigned char);
extern unsigned char (*v6) (unsigned char, unsigned short, unsigned char, unsigned char);
signed short v7 (unsigned short, signed short, unsigned char, unsigned short);
signed short (*v8) (unsigned short, signed short, unsigned char, unsigned short) = v7;
unsigned char v9 (unsigned int, unsigned int, unsigned short);
unsigned char (*v10) (unsigned int, unsigned int, unsigned short) = v9;
extern unsigned char v11 (unsigned char, unsigned short, unsigned short, unsigned short);
extern unsigned char (*v12) (unsigned char, unsigned short, unsigned short, unsigned short);
extern signed char v13 (void);
extern signed char (*v14) (void);
extern void v15 (signed short, unsigned char);
extern void (*v16) (signed short, unsigned char);
extern unsigned char v17 (void);
extern unsigned char (*v18) (void);
extern unsigned int v19 (signed short, signed char, signed char, unsigned char);
extern unsigned int (*v20) (signed short, signed char, signed char, unsigned char);
extern void v21 (signed char, signed int, signed char);
extern void (*v22) (signed char, signed int, signed char);
extern unsigned short v23 (signed short, signed int, unsigned int, signed short);
extern unsigned short (*v24) (signed short, signed int, unsigned int, signed short);
extern signed char v25 (signed int, unsigned short, unsigned char);
extern signed char (*v26) (signed int, unsigned short, unsigned char);
extern signed char v27 (signed int, signed char, signed int);
extern signed char (*v28) (signed int, signed char, signed int);
extern void v29 (signed char, signed char, unsigned char, signed int);
extern void (*v30) (signed char, signed char, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v103 = 7;
unsigned int v102 = 7U;
unsigned int v101 = 0U;

unsigned char v9 (unsigned int v104, unsigned int v105, unsigned short v106)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
unsigned int v109 = 4U;
unsigned char v108 = 0;
signed short v107 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v7 (unsigned short v110, signed short v111, unsigned char v112, unsigned short v113)
{
history[history_index++] = (int)v110;
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned int v116 = 2U;
signed short v115 = -2;
unsigned char v114 = 7;
trace++;
switch (trace)
{
case 4: 
{
signed char v117;
signed int v118;
signed char v119;
v117 = 2 + 3;
v118 = -1 + -4;
v119 = 0 + -2;
v21 (v117, v118, v119);
}
break;
case 6: 
{
signed char v120;
signed int v121;
signed char v122;
v120 = -2 + -2;
v121 = 0 - 1;
v122 = -3 - 1;
v21 (v120, v121, v122);
}
break;
case 8: 
{
signed char v123;
signed int v124;
signed char v125;
v123 = 0 - -4;
v124 = -2 - 1;
v125 = -2 + 0;
v21 (v123, v124, v125);
}
break;
case 10: 
{
signed char v126;
signed int v127;
signed char v128;
v126 = 1 + -1;
v127 = 0 - 1;
v128 = -4 + 3;
v21 (v126, v127, v128);
}
break;
case 12: 
return -2;
default: abort ();
}
}
}
}

unsigned char v3 (signed short v129)
{
history[history_index++] = (int)v129;
{
for (;;) {
signed int v132 = 2;
unsigned char v131 = 0;
signed int v130 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
