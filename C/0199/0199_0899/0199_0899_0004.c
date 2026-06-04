#include <stdlib.h>
extern signed char v3 (unsigned short, signed int, unsigned char);
extern signed char (*v4) (unsigned short, signed int, unsigned char);
extern void v5 (void);
extern void (*v6) (void);
unsigned char v7 (unsigned short, signed short, signed char, unsigned char);
unsigned char (*v8) (unsigned short, signed short, signed char, unsigned char) = v7;
unsigned char v9 (signed short, signed char, unsigned char);
unsigned char (*v10) (signed short, signed char, unsigned char) = v9;
extern unsigned short v11 (signed short, signed short);
extern unsigned short (*v12) (signed short, signed short);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern signed short v15 (void);
extern signed short (*v16) (void);
signed int v17 (signed short);
signed int (*v18) (signed short) = v17;
extern signed short v19 (signed short, unsigned short, signed short, unsigned short);
extern signed short (*v20) (signed short, unsigned short, signed short, unsigned short);
extern unsigned char v21 (signed char);
extern unsigned char (*v22) (signed char);
extern unsigned short v23 (signed int, unsigned char, signed short, signed char);
extern unsigned short (*v24) (signed int, unsigned char, signed short, signed char);
extern signed int v25 (unsigned int, unsigned short);
extern signed int (*v26) (unsigned int, unsigned short);
extern signed short v27 (unsigned short, unsigned int, unsigned int, signed char);
extern signed short (*v28) (unsigned short, unsigned int, unsigned int, signed char);
extern signed short v29 (signed char);
extern signed short (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed int v131 = 3;
unsigned int v130 = 4U;
signed int v129 = 1;

signed int v17 (signed short v132)
{
history[history_index++] = (int)v132;
{
for (;;) {
unsigned char v135 = 6;
unsigned int v134 = 0U;
unsigned char v133 = 1;
trace++;
switch (trace)
{
case 10: 
{
signed int v136;
unsigned char v137;
signed short v138;
signed char v139;
unsigned short v140;
v136 = -4 + -3;
v137 = v135 + 4;
v138 = 2 + -1;
v139 = -3 + 0;
v140 = v23 (v136, v137, v138, v139);
history[history_index++] = (int)v140;
}
break;
case 12: 
return 0;
default: abort ();
}
}
}
}

unsigned char v9 (signed short v141, signed char v142, unsigned char v143)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
unsigned char v146 = 0;
unsigned short v145 = 6;
unsigned short v144 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (unsigned short v147, signed short v148, signed char v149, unsigned char v150)
{
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
{
for (;;) {
unsigned int v153 = 4U;
unsigned int v152 = 1U;
signed char v151 = -4;
trace++;
switch (trace)
{
case 2: 
{
unsigned char v154;
v154 = v13 ();
history[history_index++] = (int)v154;
}
break;
case 14: 
return v150;
default: abort ();
}
}
}
}
