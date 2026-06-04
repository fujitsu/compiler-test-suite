#include <stdlib.h>
extern unsigned short v1 (void);
extern unsigned short (*v2) (void);
extern unsigned int v3 (signed short);
extern unsigned int (*v4) (signed short);
extern signed char v5 (unsigned short, unsigned char);
extern signed char (*v6) (unsigned short, unsigned char);
unsigned int v7 (signed short, unsigned short, unsigned int, unsigned int);
unsigned int (*v8) (signed short, unsigned short, unsigned int, unsigned int) = v7;
extern signed int v9 (unsigned short, unsigned int, signed int);
extern signed int (*v10) (unsigned short, unsigned int, signed int);
extern unsigned short v11 (signed char, unsigned char);
extern unsigned short (*v12) (signed char, unsigned char);
extern void v13 (unsigned short, signed int, unsigned int);
extern void (*v14) (unsigned short, signed int, unsigned int);
extern signed short v15 (void);
extern signed short (*v16) (void);
extern unsigned short v19 (signed short, signed char);
extern unsigned short (*v20) (signed short, signed char);
extern void v21 (unsigned char, signed short, signed char, unsigned int);
extern void (*v22) (unsigned char, signed short, signed char, unsigned int);
extern unsigned int v25 (signed char, signed short);
extern unsigned int (*v26) (signed char, signed short);
extern unsigned char v27 (unsigned int);
extern unsigned char (*v28) (unsigned int);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v130 = 5;
unsigned char v129 = 1;
unsigned char v128 = 0;

unsigned int v7 (signed short v131, unsigned short v132, unsigned int v133, unsigned int v134)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
{
for (;;) {
signed short v137 = 2;
signed int v136 = -4;
signed char v135 = -4;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v138;
unsigned int v139;
signed int v140;
signed int v141;
v138 = 0 - v132;
v139 = v133 - 4U;
v140 = v136 - v136;
v141 = v9 (v138, v139, v140);
history[history_index++] = (int)v141;
}
break;
case 3: 
{
unsigned short v142;
signed int v143;
unsigned int v144;
v142 = v132 - 3;
v143 = v136 + 3;
v144 = v133 + 2U;
v13 (v142, v143, v144);
}
break;
case 9: 
{
unsigned short v145;
unsigned int v146;
signed int v147;
signed int v148;
v145 = 5 - 6;
v146 = 4U + v134;
v147 = v136 - v136;
v148 = v9 (v145, v146, v147);
history[history_index++] = (int)v148;
}
break;
case 13: 
return 2U;
default: abort ();
}
}
}
}
