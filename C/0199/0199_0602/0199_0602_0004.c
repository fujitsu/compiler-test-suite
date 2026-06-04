#include <stdlib.h>
signed char v1 (signed char);
signed char (*v2) (signed char) = v1;
extern unsigned short v3 (unsigned int, unsigned short);
extern unsigned short (*v4) (unsigned int, unsigned short);
extern unsigned char v5 (signed short, signed int, unsigned int, signed int);
extern unsigned char (*v6) (signed short, signed int, unsigned int, signed int);
extern unsigned char v7 (unsigned short, signed char, unsigned short, unsigned int);
extern unsigned char (*v8) (unsigned short, signed char, unsigned short, unsigned int);
extern unsigned short v9 (signed short, unsigned short);
extern unsigned short (*v10) (signed short, unsigned short);
unsigned short v11 (signed char);
unsigned short (*v12) (signed char) = v11;
extern void v13 (unsigned char);
extern void (*v14) (unsigned char);
extern unsigned char v15 (signed int, unsigned char, signed char, signed char);
extern unsigned char (*v16) (signed int, unsigned char, signed char, signed char);
extern unsigned short v17 (unsigned int, unsigned int);
extern unsigned short (*v18) (unsigned int, unsigned int);
extern unsigned char v19 (signed char, signed int);
extern unsigned char (*v20) (signed char, signed int);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern void v23 (void);
extern void (*v24) (void);
extern unsigned char v25 (signed short, unsigned short, unsigned int, unsigned char);
extern unsigned char (*v26) (signed short, unsigned short, unsigned int, unsigned char);
extern void v27 (unsigned int, unsigned short, signed short, unsigned char);
extern void (*v28) (unsigned int, unsigned short, signed short, unsigned char);
extern unsigned short v29 (unsigned short, unsigned short, signed short, unsigned short);
extern unsigned short (*v30) (unsigned short, unsigned short, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v128 = -3;
signed short v127 = -2;
unsigned int v126 = 0U;

unsigned short v11 (signed char v129)
{
history[history_index++] = (int)v129;
{
for (;;) {
unsigned int v132 = 1U;
signed int v131 = -3;
unsigned short v130 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v1 (signed char v133)
{
history[history_index++] = (int)v133;
{
for (;;) {
unsigned int v136 = 3U;
unsigned short v135 = 5;
signed short v134 = 0;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v137;
unsigned int v138;
unsigned short v139;
v137 = 7U + 1U;
v138 = v136 + v136;
v139 = v17 (v137, v138);
history[history_index++] = (int)v139;
}
break;
case 2: 
{
signed int v140;
unsigned char v141;
signed char v142;
signed char v143;
unsigned char v144;
v140 = 2 + 0;
v141 = 6 - 6;
v142 = -1 - 1;
v143 = v133 + 2;
v144 = v15 (v140, v141, v142, v143);
history[history_index++] = (int)v144;
}
break;
case 8: 
{
unsigned int v145;
unsigned short v146;
signed short v147;
unsigned char v148;
v145 = v136 - v136;
v146 = 0 - v135;
v147 = v134 + v134;
v148 = 4 + 0;
v27 (v145, v146, v147, v148);
}
break;
case 12: 
return v133;
case 14: 
return 2;
default: abort ();
}
}
}
}
