#include <stdlib.h>
extern signed int v1 (unsigned int);
extern signed int (*v2) (unsigned int);
extern signed int v3 (signed char, unsigned int, signed short);
extern signed int (*v4) (signed char, unsigned int, signed short);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern signed char v7 (signed int, unsigned char, unsigned int);
extern signed char (*v8) (signed int, unsigned char, unsigned int);
extern unsigned char v9 (unsigned short);
extern unsigned char (*v10) (unsigned short);
extern signed char v11 (unsigned short);
extern signed char (*v12) (unsigned short);
extern unsigned int v13 (unsigned char);
extern unsigned int (*v14) (unsigned char);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
signed char v19 (unsigned int);
signed char (*v20) (unsigned int) = v19;
extern unsigned short v21 (signed char, signed short);
extern unsigned short (*v22) (signed char, signed short);
extern signed int v23 (signed char);
extern signed int (*v24) (signed char);
extern signed char v25 (signed char, signed short, signed char, unsigned int);
extern signed char (*v26) (signed char, signed short, signed char, unsigned int);
unsigned int v27 (unsigned char, signed int, signed char, signed int);
unsigned int (*v28) (unsigned char, signed int, signed char, signed int) = v27;
extern int history[];
extern int history_index;
extern int trace;
signed int v124 = -4;
signed int v123 = -3;
unsigned short v122 = 6;

unsigned int v27 (unsigned char v125, signed int v126, signed char v127, signed int v128)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
history[history_index++] = (int)v128;
{
for (;;) {
unsigned char v131 = 6;
signed short v130 = -2;
signed int v129 = 3;
trace++;
switch (trace)
{
case 1: 
{
signed char v132;
signed short v133;
signed char v134;
unsigned int v135;
signed char v136;
v132 = v127 + 3;
v133 = -4 - v130;
v134 = -2 - v127;
v135 = 7U - 6U;
v136 = v25 (v132, v133, v134, v135);
history[history_index++] = (int)v136;
}
break;
case 3: 
{
signed char v137;
signed short v138;
signed char v139;
unsigned int v140;
signed char v141;
v137 = -4 - 3;
v138 = 0 + -2;
v139 = v127 - v127;
v140 = 6U + 2U;
v141 = v25 (v137, v138, v139, v140);
history[history_index++] = (int)v141;
}
break;
case 5: 
return 6U;
default: abort ();
}
}
}
}

signed char v19 (unsigned int v142)
{
history[history_index++] = (int)v142;
{
for (;;) {
unsigned short v145 = 0;
unsigned char v144 = 0;
unsigned short v143 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
