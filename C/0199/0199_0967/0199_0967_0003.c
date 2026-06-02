#include <stdlib.h>
signed int v1 (unsigned int, signed short);
signed int (*v2) (unsigned int, signed short) = v1;
extern void v3 (signed short);
extern void (*v4) (signed short);
extern signed char v5 (unsigned int, unsigned short);
extern signed char (*v6) (unsigned int, unsigned short);
extern signed int v7 (void);
extern signed int (*v8) (void);
extern unsigned int v9 (signed int, signed int, unsigned int);
extern unsigned int (*v10) (signed int, signed int, unsigned int);
extern unsigned int v11 (signed char, signed short, signed char);
extern unsigned int (*v12) (signed char, signed short, signed char);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned int v19 (signed char, signed int, unsigned char, unsigned char);
extern unsigned int (*v20) (signed char, signed int, unsigned char, unsigned char);
extern unsigned int v21 (signed short, unsigned char, unsigned int);
extern unsigned int (*v22) (signed short, unsigned char, unsigned int);
unsigned short v23 (signed short, signed int, unsigned char);
unsigned short (*v24) (signed short, signed int, unsigned char) = v23;
extern unsigned char v25 (signed short, unsigned char);
extern unsigned char (*v26) (signed short, unsigned char);
extern void v27 (signed short);
extern void (*v28) (signed short);
extern unsigned int v29 (signed short, signed short);
extern unsigned int (*v30) (signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v119 = -4;
signed short v118 = 2;
unsigned short v117 = 0;

unsigned short v23 (signed short v120, signed int v121, unsigned char v122)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
signed short v125 = -1;
signed int v124 = 1;
unsigned int v123 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (unsigned int v126, signed short v127)
{
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
unsigned char v130 = 6;
unsigned short v129 = 2;
signed int v128 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed short v131;
v131 = 1 + v127;
v3 (v131);
}
break;
case 2: 
{
signed short v132;
unsigned char v133;
unsigned int v134;
unsigned int v135;
v132 = v127 - v127;
v133 = v130 - v130;
v134 = 1U + 3U;
v135 = v21 (v132, v133, v134);
history[history_index++] = (int)v135;
}
break;
case 4: 
{
signed char v136;
signed int v137;
unsigned char v138;
unsigned char v139;
unsigned int v140;
v136 = -1 - 2;
v137 = v128 - v128;
v138 = 2 - v130;
v139 = v130 + v130;
v140 = v19 (v136, v137, v138, v139);
history[history_index++] = (int)v140;
}
break;
case 14: 
return 0;
default: abort ();
}
}
}
}
