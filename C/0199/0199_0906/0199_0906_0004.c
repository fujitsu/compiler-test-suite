#include <stdlib.h>
signed char v1 (unsigned short, unsigned int);
signed char (*v2) (unsigned short, unsigned int) = v1;
extern unsigned char v3 (unsigned char, signed short);
extern unsigned char (*v4) (unsigned char, signed short);
extern unsigned short v5 (void);
extern unsigned short (*v6) (void);
extern signed int v7 (unsigned int, signed short, unsigned short, signed char);
extern signed int (*v8) (unsigned int, signed short, unsigned short, signed char);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
unsigned int v11 (unsigned short, unsigned char);
unsigned int (*v12) (unsigned short, unsigned char) = v11;
extern unsigned char v13 (unsigned int, unsigned int, signed char);
extern unsigned char (*v14) (unsigned int, unsigned int, signed char);
extern signed char v15 (signed int, signed short, unsigned int, unsigned char);
extern signed char (*v16) (signed int, signed short, unsigned int, unsigned char);
extern unsigned short v19 (signed short, signed int);
extern unsigned short (*v20) (signed short, signed int);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern signed short v23 (unsigned short, unsigned char);
extern signed short (*v24) (unsigned short, unsigned char);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern signed int v29 (unsigned char, unsigned int, signed int);
extern signed int (*v30) (unsigned char, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v122 = 1;
signed char v121 = -4;
signed char v120 = -1;

unsigned int v11 (unsigned short v123, unsigned char v124)
{
history[history_index++] = (int)v123;
history[history_index++] = (int)v124;
{
for (;;) {
unsigned int v127 = 6U;
signed short v126 = 1;
unsigned short v125 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (unsigned short v128, unsigned int v129)
{
history[history_index++] = (int)v128;
history[history_index++] = (int)v129;
{
for (;;) {
unsigned int v132 = 4U;
signed char v131 = -3;
unsigned char v130 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v133;
signed short v134;
unsigned short v135;
signed char v136;
signed int v137;
v133 = v132 - v132;
v134 = -4 + -1;
v135 = 6 - v128;
v136 = v131 - -1;
v137 = v7 (v133, v134, v135, v136);
history[history_index++] = (int)v137;
}
break;
case 6: 
{
signed int v138;
signed short v139;
unsigned int v140;
unsigned char v141;
signed char v142;
v138 = -3 + -2;
v139 = -1 - -3;
v140 = v132 + v129;
v141 = v130 - 5;
v142 = v15 (v138, v139, v140, v141);
history[history_index++] = (int)v142;
}
break;
case 14: 
return 1;
default: abort ();
}
}
}
}
