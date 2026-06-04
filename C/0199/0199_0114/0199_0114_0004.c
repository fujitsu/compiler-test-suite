#include <stdlib.h>
extern signed short v1 (signed short, unsigned int);
extern signed short (*v2) (signed short, unsigned int);
void v3 (unsigned int, signed short, unsigned char, unsigned short);
void (*v4) (unsigned int, signed short, unsigned char, unsigned short) = v3;
extern unsigned int v5 (signed short, signed char, signed int);
extern unsigned int (*v6) (signed short, signed char, signed int);
extern unsigned short v7 (signed int, unsigned short);
extern unsigned short (*v8) (signed int, unsigned short);
extern unsigned short v9 (signed char, unsigned short, unsigned int, signed int);
extern unsigned short (*v10) (signed char, unsigned short, unsigned int, signed int);
extern signed char v11 (signed short, signed short, unsigned short, unsigned short);
extern signed char (*v12) (signed short, signed short, unsigned short, unsigned short);
extern signed int v13 (unsigned char, signed int, unsigned int, signed int);
extern signed int (*v14) (unsigned char, signed int, unsigned int, signed int);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern signed short v17 (unsigned int);
extern signed short (*v18) (unsigned int);
extern unsigned short v19 (unsigned char, unsigned char);
extern unsigned short (*v20) (unsigned char, unsigned char);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern signed char v25 (unsigned char);
extern signed char (*v26) (unsigned char);
extern signed int v27 (unsigned char);
extern signed int (*v28) (unsigned char);
void v29 (signed int, unsigned short);
void (*v30) (signed int, unsigned short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v133 = 3U;
unsigned int v132 = 7U;
unsigned char v131 = 7;

void v29 (signed int v134, unsigned short v135)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
{
for (;;) {
unsigned short v138 = 0;
signed char v137 = -4;
signed int v136 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (unsigned int v139, signed short v140, unsigned char v141, unsigned short v142)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
signed int v145 = -1;
unsigned char v144 = 5;
unsigned int v143 = 2U;
trace++;
switch (trace)
{
case 1: 
{
signed short v146;
signed short v147;
unsigned short v148;
unsigned short v149;
signed char v150;
v146 = v140 + 3;
v147 = -1 - -1;
v148 = 4 - 6;
v149 = 3 + v142;
v150 = v11 (v146, v147, v148, v149);
history[history_index++] = (int)v150;
}
break;
case 9: 
{
signed short v151;
signed short v152;
unsigned short v153;
unsigned short v154;
signed char v155;
v151 = v140 + v140;
v152 = v140 + -4;
v153 = 4 + 2;
v154 = 6 + 3;
v155 = v11 (v151, v152, v153, v154);
history[history_index++] = (int)v155;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}
