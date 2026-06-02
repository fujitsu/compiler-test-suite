#include <stdlib.h>
extern unsigned char v1 (signed char, unsigned int);
extern unsigned char (*v2) (signed char, unsigned int);
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern void v5 (unsigned int, unsigned char);
extern void (*v6) (unsigned int, unsigned char);
extern signed short v7 (unsigned short);
extern signed short (*v8) (unsigned short);
void v9 (signed int, unsigned char);
void (*v10) (signed int, unsigned char) = v9;
unsigned int v11 (unsigned int, signed char);
unsigned int (*v12) (unsigned int, signed char) = v11;
extern void v13 (unsigned short, unsigned int);
extern void (*v14) (unsigned short, unsigned int);
unsigned short v15 (unsigned int, signed char, unsigned int, unsigned short);
unsigned short (*v16) (unsigned int, signed char, unsigned int, unsigned short) = v15;
extern signed char v19 (signed char, unsigned short);
extern signed char (*v20) (signed char, unsigned short);
extern signed char v21 (unsigned int, signed char, signed char, unsigned char);
extern signed char (*v22) (unsigned int, signed char, signed char, unsigned char);
extern unsigned char v23 (signed short, unsigned char, unsigned int, signed short);
extern unsigned char (*v24) (signed short, unsigned char, unsigned int, signed short);
extern signed short v25 (unsigned short);
extern signed short (*v26) (unsigned short);
extern unsigned int v27 (signed short, unsigned short);
extern unsigned int (*v28) (signed short, unsigned short);
extern signed int v29 (unsigned int, signed short, signed short, unsigned int);
extern signed int (*v30) (unsigned int, signed short, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v133 = 6;
unsigned int v132 = 2U;
unsigned short v131 = 3;

unsigned short v15 (unsigned int v134, signed char v135, unsigned int v136, unsigned short v137)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
unsigned char v140 = 3;
unsigned short v139 = 0;
unsigned char v138 = 0;
trace++;
switch (trace)
{
case 1: 
return v137;
case 5: 
{
unsigned short v141;
v141 = v3 ();
history[history_index++] = (int)v141;
}
break;
case 15: 
return v137;
default: abort ();
}
}
}
}

unsigned int v11 (unsigned int v142, signed char v143)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
signed short v146 = 0;
signed int v145 = -2;
signed short v144 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (signed int v147, unsigned char v148)
{
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
{
for (;;) {
signed char v151 = 3;
unsigned short v150 = 3;
unsigned char v149 = 3;
trace++;
switch (trace)
{
case 8: 
{
unsigned short v152;
signed short v153;
v152 = v150 - 2;
v153 = v25 (v152);
history[history_index++] = (int)v153;
}
break;
case 10: 
{
unsigned short v154;
signed short v155;
v154 = v150 - v150;
v155 = v25 (v154);
history[history_index++] = (int)v155;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
