#include <stdlib.h>
unsigned char v1 (signed int, signed int);
unsigned char (*v2) (signed int, signed int) = v1;
extern signed int v3 (signed int, unsigned char, unsigned int);
extern signed int (*v4) (signed int, unsigned char, unsigned int);
extern signed int v5 (unsigned short);
extern signed int (*v6) (unsigned short);
extern void v7 (void);
extern void (*v8) (void);
extern signed short v9 (signed int, unsigned int);
extern signed short (*v10) (signed int, unsigned int);
extern signed short v11 (signed char, signed char, unsigned int, signed char);
extern signed short (*v12) (signed char, signed char, unsigned int, signed char);
extern unsigned char v13 (unsigned short);
extern unsigned char (*v14) (unsigned short);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned char v17 (unsigned int, unsigned char, unsigned int, signed char);
extern unsigned char (*v18) (unsigned int, unsigned char, unsigned int, signed char);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
signed int v21 (signed short, signed short, unsigned int, signed int);
signed int (*v22) (signed short, signed short, unsigned int, signed int) = v21;
extern unsigned int v23 (unsigned short);
extern unsigned int (*v24) (unsigned short);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern signed short v27 (signed int);
extern signed short (*v28) (signed int);
extern unsigned short v29 (signed short, unsigned short, signed char);
extern unsigned short (*v30) (signed short, unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v114 = 1;
unsigned short v113 = 1;
unsigned short v112 = 2;

signed int v21 (signed short v115, signed short v116, unsigned int v117, signed int v118)
{
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed int v121 = -2;
unsigned short v120 = 5;
signed char v119 = -1;
trace++;
switch (trace)
{
case 2: 
{
signed int v122;
signed short v123;
v122 = v121 - v118;
v123 = v27 (v122);
history[history_index++] = (int)v123;
}
break;
case 4: 
{
signed int v124;
signed short v125;
v124 = 1 - v118;
v125 = v27 (v124);
history[history_index++] = (int)v125;
}
break;
case 6: 
{
signed int v126;
signed short v127;
v126 = v121 - v118;
v127 = v27 (v126);
history[history_index++] = (int)v127;
}
break;
case 8: 
{
signed int v128;
signed short v129;
v128 = v118 - v121;
v129 = v27 (v128);
history[history_index++] = (int)v129;
}
break;
case 10: 
return -1;
default: abort ();
}
}
}
}

unsigned char v1 (signed int v130, signed int v131)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
signed char v134 = 1;
signed int v133 = -1;
signed short v132 = -2;
trace++;
switch (trace)
{
case 0: 
{
signed char v135;
signed char v136;
unsigned int v137;
signed char v138;
signed short v139;
v135 = -3 - 2;
v136 = -1 - v134;
v137 = 0U + 6U;
v138 = -4 - -4;
v139 = v11 (v135, v136, v137, v138);
history[history_index++] = (int)v139;
}
break;
case 12: 
return 6;
default: abort ();
}
}
}
}
