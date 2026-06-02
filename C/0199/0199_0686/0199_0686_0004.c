#include <stdlib.h>
extern signed char v1 (signed char, unsigned short, unsigned char);
extern signed char (*v2) (signed char, unsigned short, unsigned char);
extern signed char v3 (unsigned short, signed short);
extern signed char (*v4) (unsigned short, signed short);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern unsigned int v7 (signed int, signed char, unsigned int);
extern unsigned int (*v8) (signed int, signed char, unsigned int);
extern signed short v9 (signed char, unsigned short);
extern signed short (*v10) (signed char, unsigned short);
extern signed int v11 (unsigned short, signed short, unsigned char, signed char);
extern signed int (*v12) (unsigned short, signed short, unsigned char, signed char);
extern unsigned char v13 (signed short, unsigned short, unsigned short, signed int);
extern unsigned char (*v14) (signed short, unsigned short, unsigned short, signed int);
extern signed int v17 (signed int, signed char, unsigned short);
extern signed int (*v18) (signed int, signed char, unsigned short);
extern unsigned char v19 (unsigned short);
extern unsigned char (*v20) (unsigned short);
unsigned short v21 (void);
unsigned short (*v22) (void) = v21;
extern unsigned int v23 (signed int, unsigned short, unsigned short);
extern unsigned int (*v24) (signed int, unsigned short, unsigned short);
signed char v25 (unsigned short);
signed char (*v26) (unsigned short) = v25;
extern unsigned char v27 (signed int, unsigned int, signed int, signed short);
extern unsigned char (*v28) (signed int, unsigned int, signed int, signed short);
extern signed char v29 (signed int, unsigned char, unsigned short);
extern signed char (*v30) (signed int, unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v134 = 2;
unsigned char v133 = 3;
unsigned int v132 = 5U;

signed char v25 (unsigned short v135)
{
history[history_index++] = (int)v135;
{
for (;;) {
unsigned short v138 = 1;
unsigned short v137 = 1;
signed int v136 = -1;
trace++;
switch (trace)
{
case 1: 
{
signed int v139;
unsigned int v140;
signed int v141;
signed short v142;
unsigned char v143;
v139 = v136 + -2;
v140 = 2U - 2U;
v141 = v136 + 2;
v142 = 2 - 3;
v143 = v27 (v139, v140, v141, v142);
history[history_index++] = (int)v143;
}
break;
case 3: 
return -1;
case 6: 
{
signed int v144;
unsigned int v145;
signed int v146;
signed short v147;
unsigned char v148;
v144 = v136 - -2;
v145 = 3U - 7U;
v146 = -1 + 0;
v147 = -3 - 3;
v148 = v27 (v144, v145, v146, v147);
history[history_index++] = (int)v148;
}
break;
case 8: 
return -1;
default: abort ();
}
}
}
}

unsigned short v21 (void)
{
{
for (;;) {
signed char v151 = 2;
signed short v150 = 2;
unsigned int v149 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
