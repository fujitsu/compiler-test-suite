#include <stdlib.h>
signed int v1 (void);
signed int (*v2) (void) = v1;
extern unsigned int v3 (unsigned int, signed short, signed short);
extern unsigned int (*v4) (unsigned int, signed short, signed short);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern unsigned int v7 (unsigned int);
extern unsigned int (*v8) (unsigned int);
extern unsigned short v9 (signed short, signed int, unsigned char);
extern unsigned short (*v10) (signed short, signed int, unsigned char);
extern unsigned short v11 (signed int, unsigned char);
extern unsigned short (*v12) (signed int, unsigned char);
extern signed int v13 (signed char);
extern signed int (*v14) (signed char);
extern unsigned int v15 (signed short, unsigned int);
extern unsigned int (*v16) (signed short, unsigned int);
extern void v17 (signed char, unsigned int, unsigned short);
extern void (*v18) (signed char, unsigned int, unsigned short);
extern unsigned int v19 (unsigned int, unsigned short, signed short, signed char);
extern unsigned int (*v20) (unsigned int, unsigned short, signed short, signed char);
extern signed int v21 (unsigned char, signed short);
extern signed int (*v22) (unsigned char, signed short);
extern signed char v23 (signed char);
extern signed char (*v24) (signed char);
extern unsigned int v25 (unsigned short);
extern unsigned int (*v26) (unsigned short);
extern void v27 (void);
extern void (*v28) (void);
extern unsigned short v29 (signed short, signed int, signed int, signed char);
extern unsigned short (*v30) (signed short, signed int, signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v125 = 3;
signed short v124 = -3;
signed short v123 = -1;

signed int v1 (void)
{
{
for (;;) {
signed int v128 = 2;
unsigned int v127 = 7U;
signed char v126 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v129;
signed short v130;
signed short v131;
unsigned int v132;
v129 = 1U + 6U;
v130 = 1 + 2;
v131 = 3 + -2;
v132 = v3 (v129, v130, v131);
history[history_index++] = (int)v132;
}
break;
case 2: 
{
unsigned int v133;
signed short v134;
signed short v135;
unsigned int v136;
v133 = 0U + v127;
v134 = -3 + 3;
v135 = -1 + -1;
v136 = v3 (v133, v134, v135);
history[history_index++] = (int)v136;
}
break;
case 4: 
{
signed short v137;
signed int v138;
unsigned char v139;
unsigned short v140;
v137 = -3 + 0;
v138 = v128 - 2;
v139 = 6 - 6;
v140 = v9 (v137, v138, v139);
history[history_index++] = (int)v140;
}
break;
case 8: 
{
signed short v141;
signed int v142;
unsigned char v143;
unsigned short v144;
v141 = -4 - -3;
v142 = 0 + v128;
v143 = 6 - 2;
v144 = v9 (v141, v142, v143);
history[history_index++] = (int)v144;
}
break;
case 14: 
return 2;
default: abort ();
}
}
}
}
