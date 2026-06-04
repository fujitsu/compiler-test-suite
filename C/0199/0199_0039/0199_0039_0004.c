#include <stdlib.h>
signed int v1 (unsigned short, unsigned short, signed int);
signed int (*v2) (unsigned short, unsigned short, signed int) = v1;
extern signed char v3 (signed char, unsigned int, unsigned int);
extern signed char (*v4) (signed char, unsigned int, unsigned int);
extern signed int v5 (signed char);
extern signed int (*v6) (signed char);
extern signed short v7 (unsigned short);
extern signed short (*v8) (unsigned short);
static void v9 (unsigned char, unsigned int);
static void (*v10) (unsigned char, unsigned int) = v9;
extern void v11 (signed short, unsigned char);
extern void (*v12) (signed short, unsigned char);
extern unsigned char v13 (unsigned short, unsigned short, signed int, signed char);
extern unsigned char (*v14) (unsigned short, unsigned short, signed int, signed char);
extern signed short v15 (signed char, unsigned int, unsigned short, unsigned short);
extern signed short (*v16) (signed char, unsigned int, unsigned short, unsigned short);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned short v19 (unsigned char, unsigned int, unsigned short);
extern unsigned short (*v20) (unsigned char, unsigned int, unsigned short);
extern void v21 (signed char, signed int);
extern void (*v22) (signed char, signed int);
extern void v23 (void);
extern void (*v24) (void);
extern signed char v25 (signed int);
extern signed char (*v26) (signed int);
extern unsigned short v27 (signed int, unsigned char);
extern unsigned short (*v28) (signed int, unsigned char);
extern unsigned short v29 (unsigned char, unsigned short, signed char);
extern unsigned short (*v30) (unsigned char, unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v116 = -2;
signed int v115 = -4;
unsigned short v114 = 5;

static void v9 (unsigned char v117, unsigned int v118)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
signed short v121 = -4;
unsigned char v120 = 1;
signed short v119 = 1;
trace++;
switch (trace)
{
case 3: 
return;
case 9: 
return;
default: abort ();
}
}
}
}

signed int v1 (unsigned short v122, unsigned short v123, signed int v124)
{
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
signed short v127 = -2;
unsigned int v126 = 3U;
signed int v125 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v128;
signed short v129;
v128 = v122 - v122;
v129 = v7 (v128);
history[history_index++] = (int)v129;
}
break;
case 2: 
{
unsigned char v130;
unsigned int v131;
v130 = 2 + 4;
v131 = 5U - 3U;
v9 (v130, v131);
}
break;
case 4: 
{
signed char v132;
signed int v133;
v132 = 3 - -4;
v133 = -4 + v125;
v21 (v132, v133);
}
break;
case 6: 
{
signed char v134;
signed int v135;
v134 = -4 - 1;
v135 = v125 - v125;
v21 (v134, v135);
}
break;
case 8: 
{
unsigned char v136;
unsigned int v137;
v136 = 4 + 1;
v137 = v126 - v126;
v9 (v136, v137);
}
break;
case 10: 
{
signed char v138;
unsigned int v139;
unsigned int v140;
signed char v141;
v138 = 2 - -3;
v139 = v126 - 7U;
v140 = 7U - v126;
v141 = v3 (v138, v139, v140);
history[history_index++] = (int)v141;
}
break;
case 12: 
return v124;
default: abort ();
}
}
}
}
