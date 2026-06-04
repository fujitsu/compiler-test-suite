#include <stdlib.h>
extern unsigned char v1 (unsigned short, unsigned char, unsigned int);
extern unsigned char (*v2) (unsigned short, unsigned char, unsigned int);
extern unsigned char v3 (unsigned int, signed char, signed char, signed short);
extern unsigned char (*v4) (unsigned int, signed char, signed char, signed short);
extern signed short v5 (void);
extern signed short (*v6) (void);
extern signed int v7 (signed int, signed char, unsigned int);
extern signed int (*v8) (signed int, signed char, unsigned int);
unsigned char v9 (signed int, unsigned short, signed short, signed char);
unsigned char (*v10) (signed int, unsigned short, signed short, signed char) = v9;
extern signed char v11 (signed char);
extern signed char (*v12) (signed char);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern void v15 (unsigned int, unsigned int, unsigned char, signed char);
extern void (*v16) (unsigned int, unsigned int, unsigned char, signed char);
extern unsigned int v17 (unsigned char, signed int);
extern unsigned int (*v18) (unsigned char, signed int);
extern signed short v19 (signed short);
extern signed short (*v20) (signed short);
extern signed char v21 (void);
extern signed char (*v22) (void);
extern void v23 (unsigned short, unsigned char, unsigned short, unsigned int);
extern void (*v24) (unsigned short, unsigned char, unsigned short, unsigned int);
extern unsigned char v25 (unsigned short, signed char);
extern unsigned char (*v26) (unsigned short, signed char);
extern signed char v27 (unsigned short, unsigned short, signed short, signed char);
extern signed char (*v28) (unsigned short, unsigned short, signed short, signed char);
extern unsigned short v29 (unsigned short);
extern unsigned short (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v133 = 3;
signed int v132 = 1;
signed char v131 = -4;

unsigned char v9 (signed int v134, unsigned short v135, signed short v136, signed char v137)
{
history[history_index++] = (int)v134;
history[history_index++] = (int)v135;
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
{
for (;;) {
unsigned short v140 = 3;
unsigned int v139 = 1U;
signed int v138 = 2;
trace++;
switch (trace)
{
case 2: 
{
unsigned short v141;
unsigned char v142;
unsigned short v143;
unsigned int v144;
v141 = 6 + 4;
v142 = 6 + 2;
v143 = 3 - v135;
v144 = 3U - 1U;
v23 (v141, v142, v143, v144);
}
break;
case 4: 
{
unsigned short v145;
unsigned char v146;
unsigned short v147;
unsigned int v148;
v145 = v140 - v135;
v146 = 0 - 2;
v147 = v140 - v135;
v148 = v139 + v139;
v23 (v145, v146, v147, v148);
}
break;
case 6: 
return 6;
case 8: 
{
unsigned short v149;
unsigned char v150;
unsigned short v151;
unsigned int v152;
v149 = v135 - v135;
v150 = 2 - 7;
v151 = v135 + v135;
v152 = 2U + v139;
v23 (v149, v150, v151, v152);
}
break;
case 10: 
{
signed short v153;
signed short v154;
v153 = -1 - v136;
v154 = v19 (v153);
history[history_index++] = (int)v154;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}
