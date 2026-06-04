#include <stdlib.h>
unsigned short v1 (signed short, unsigned int);
unsigned short (*v2) (signed short, unsigned int) = v1;
extern unsigned short v3 (unsigned short, unsigned short);
extern unsigned short (*v4) (unsigned short, unsigned short);
extern unsigned short v5 (signed int, unsigned int);
extern unsigned short (*v6) (signed int, unsigned int);
signed char v7 (signed int, unsigned short, unsigned char, unsigned short);
signed char (*v8) (signed int, unsigned short, unsigned char, unsigned short) = v7;
extern unsigned char v9 (signed int, unsigned char, signed char);
extern unsigned char (*v10) (signed int, unsigned char, signed char);
extern signed char v11 (signed int, unsigned int, unsigned short);
extern signed char (*v12) (signed int, unsigned int, unsigned short);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern unsigned short v15 (signed short);
extern unsigned short (*v16) (signed short);
extern signed short v17 (signed char, signed int);
extern signed short (*v18) (signed char, signed int);
extern signed short v19 (unsigned short, unsigned short, signed int, signed short);
extern signed short (*v20) (unsigned short, unsigned short, signed int, signed short);
extern signed short v21 (unsigned int, unsigned int);
extern signed short (*v22) (unsigned int, unsigned int);
extern void v23 (signed char, unsigned int, unsigned char);
extern void (*v24) (signed char, unsigned int, unsigned char);
extern unsigned char v25 (signed char, signed short, unsigned short);
extern unsigned char (*v26) (signed char, signed short, unsigned short);
extern unsigned short v27 (signed short, signed short, signed int);
extern unsigned short (*v28) (signed short, signed short, signed int);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed int v132 = 3;
signed int v131 = -2;
unsigned int v130 = 5U;

signed char v7 (signed int v133, unsigned short v134, unsigned char v135, unsigned short v136)
{
history[history_index++] = (int)v133;
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
{
for (;;) {
signed char v139 = 0;
unsigned short v138 = 6;
signed int v137 = -3;
trace++;
switch (trace)
{
case 2: 
return v139;
case 6: 
return v139;
case 8: 
{
unsigned int v140;
v140 = v29 ();
history[history_index++] = (int)v140;
}
break;
case 10: 
{
unsigned int v141;
v141 = v29 ();
history[history_index++] = (int)v141;
}
break;
case 12: 
return -3;
default: abort ();
}
}
}
}

unsigned short v1 (signed short v142, unsigned int v143)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
signed char v146 = 1;
unsigned char v145 = 0;
signed int v144 = 3;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v147;
unsigned short v148;
signed int v149;
signed short v150;
signed short v151;
v147 = 5 + 0;
v148 = 7 + 6;
v149 = -3 - v144;
v150 = -3 - v142;
v151 = v19 (v147, v148, v149, v150);
history[history_index++] = (int)v151;
}
break;
case 4: 
{
unsigned short v152;
unsigned short v153;
signed int v154;
signed short v155;
signed short v156;
v152 = 2 - 6;
v153 = 4 - 2;
v154 = v144 - v144;
v155 = v142 + 0;
v156 = v19 (v152, v153, v154, v155);
history[history_index++] = (int)v156;
}
break;
case 14: 
return 6;
default: abort ();
}
}
}
}
