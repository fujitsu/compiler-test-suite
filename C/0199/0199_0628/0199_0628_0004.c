#include <stdlib.h>
void v1 (signed char);
void (*v2) (signed char) = v1;
extern unsigned int v3 (signed short, unsigned int);
extern unsigned int (*v4) (signed short, unsigned int);
extern unsigned short v5 (unsigned short, unsigned char);
extern unsigned short (*v6) (unsigned short, unsigned char);
extern signed short v7 (unsigned short, unsigned int, unsigned int, signed int);
extern signed short (*v8) (unsigned short, unsigned int, unsigned int, signed int);
extern void v9 (signed char);
extern void (*v10) (signed char);
extern void v11 (signed int, signed int, unsigned short, unsigned char);
extern void (*v12) (signed int, signed int, unsigned short, unsigned char);
extern signed char v13 (signed int, signed char, unsigned short);
extern signed char (*v14) (signed int, signed char, unsigned short);
extern unsigned int v15 (unsigned char, signed short);
extern unsigned int (*v16) (unsigned char, signed short);
extern signed int v17 (unsigned short, unsigned char, signed int, unsigned int);
extern signed int (*v18) (unsigned short, unsigned char, signed int, unsigned int);
signed int v19 (unsigned char, unsigned int, unsigned int, signed short);
signed int (*v20) (unsigned char, unsigned int, unsigned int, signed short) = v19;
extern unsigned int v21 (void);
extern unsigned int (*v22) (void);
extern unsigned int v23 (unsigned int, signed short, unsigned int, unsigned int);
extern unsigned int (*v24) (unsigned int, signed short, unsigned int, unsigned int);
extern void v25 (unsigned int, unsigned int);
extern void (*v26) (unsigned int, unsigned int);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
extern void v29 (signed short, signed char, signed char, unsigned short);
extern void (*v30) (signed short, signed char, signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed char v119 = 0;
signed int v118 = -1;
unsigned short v117 = 5;

signed int v19 (unsigned char v120, unsigned int v121, unsigned int v122, signed short v123)
{
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
signed short v126 = 0;
signed char v125 = -2;
signed int v124 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (signed char v127)
{
history[history_index++] = (int)v127;
{
for (;;) {
signed short v130 = -2;
signed char v129 = 0;
unsigned int v128 = 4U;
trace++;
switch (trace)
{
case 0: 
{
signed char v131;
v131 = -2 - 2;
v9 (v131);
}
break;
case 2: 
return;
case 3: 
{
signed char v132;
v132 = v129 - v127;
v9 (v132);
}
break;
case 5: 
{
signed short v133;
unsigned int v134;
unsigned int v135;
v133 = v130 - v130;
v134 = 4U + v128;
v135 = v3 (v133, v134);
history[history_index++] = (int)v135;
}
break;
case 7: 
{
signed short v136;
signed char v137;
signed char v138;
unsigned short v139;
v136 = -2 + -4;
v137 = -4 - 0;
v138 = 1 - v129;
v139 = 5 - 0;
v29 (v136, v137, v138, v139);
}
break;
case 9: 
{
unsigned short v140;
unsigned char v141;
signed int v142;
unsigned int v143;
signed int v144;
v140 = 0 - 6;
v141 = 6 - 3;
v142 = -4 - -3;
v143 = v128 + 0U;
v144 = v17 (v140, v141, v142, v143);
history[history_index++] = (int)v144;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}
