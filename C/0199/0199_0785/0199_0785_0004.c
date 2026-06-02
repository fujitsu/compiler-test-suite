#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern unsigned short v3 (signed short, signed char, unsigned short, unsigned short);
extern unsigned short (*v4) (signed short, signed char, unsigned short, unsigned short);
extern signed char v5 (signed int, unsigned int, signed char);
extern signed char (*v6) (signed int, unsigned int, signed char);
unsigned short v7 (signed char, signed short, signed short);
unsigned short (*v8) (signed char, signed short, signed short) = v7;
extern signed int v9 (signed char, signed short, unsigned int, signed short);
extern signed int (*v10) (signed char, signed short, unsigned int, signed short);
unsigned char v13 (unsigned short, unsigned char, unsigned int);
unsigned char (*v14) (unsigned short, unsigned char, unsigned int) = v13;
extern unsigned char v15 (unsigned int, signed short);
extern unsigned char (*v16) (unsigned int, signed short);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern unsigned short v21 (signed char);
extern unsigned short (*v22) (signed char);
extern unsigned char v23 (unsigned char, unsigned short, unsigned char, signed int);
extern unsigned char (*v24) (unsigned char, unsigned short, unsigned char, signed int);
extern unsigned char v25 (unsigned short);
extern unsigned char (*v26) (unsigned short);
extern unsigned int v27 (unsigned int, unsigned short);
extern unsigned int (*v28) (unsigned int, unsigned short);
extern signed short v29 (signed int, signed short, signed int, signed char);
extern signed short (*v30) (signed int, signed short, signed int, signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v130 = -4;
signed char v129 = -1;
unsigned short v128 = 5;

unsigned char v13 (unsigned short v131, unsigned char v132, unsigned int v133)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
unsigned short v136 = 5;
unsigned char v135 = 3;
unsigned char v134 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v7 (signed char v137, signed short v138, signed short v139)
{
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
history[history_index++] = (int)v139;
{
for (;;) {
unsigned int v142 = 3U;
signed short v141 = -1;
signed char v140 = -1;
trace++;
switch (trace)
{
case 4: 
{
signed int v143;
signed short v144;
signed int v145;
signed char v146;
signed short v147;
v143 = 0 - 3;
v144 = v139 - v139;
v145 = 0 - -4;
v146 = -2 - v137;
v147 = v29 (v143, v144, v145, v146);
history[history_index++] = (int)v147;
}
break;
case 6: 
{
signed int v148;
signed short v149;
signed int v150;
signed char v151;
signed short v152;
v148 = 2 + -1;
v149 = v138 + v138;
v150 = 0 - -3;
v151 = v137 + 1;
v152 = v29 (v148, v149, v150, v151);
history[history_index++] = (int)v152;
}
break;
case 8: 
return 6;
default: abort ();
}
}
}
}
