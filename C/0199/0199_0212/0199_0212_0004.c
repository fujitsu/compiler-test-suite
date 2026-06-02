#include <stdlib.h>
extern unsigned char v1 (unsigned char, unsigned char);
extern unsigned char (*v2) (unsigned char, unsigned char);
extern unsigned int v3 (signed int);
extern unsigned int (*v4) (signed int);
extern unsigned short v5 (signed short, signed int);
extern unsigned short (*v6) (signed short, signed int);
extern void v7 (unsigned char);
extern void (*v8) (unsigned char);
extern signed int v9 (signed short, signed char);
extern signed int (*v10) (signed short, signed char);
void v11 (unsigned short, signed char, signed int);
void (*v12) (unsigned short, signed char, signed int) = v11;
extern signed char v13 (void);
extern signed char (*v14) (void);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed short v17 (signed int, signed short, signed int);
extern signed short (*v18) (signed int, signed short, signed int);
extern unsigned int v19 (unsigned char, unsigned char, signed int);
extern unsigned int (*v20) (unsigned char, unsigned char, signed int);
extern signed int v21 (signed short);
extern signed int (*v22) (signed short);
extern unsigned int v23 (signed int, signed int, unsigned int);
extern unsigned int (*v24) (signed int, signed int, unsigned int);
extern unsigned short v25 (unsigned short, signed char, unsigned short, unsigned short);
extern unsigned short (*v26) (unsigned short, signed char, unsigned short, unsigned short);
extern signed char v27 (unsigned char, unsigned char, unsigned short, unsigned int);
extern signed char (*v28) (unsigned char, unsigned char, unsigned short, unsigned int);
extern signed int v29 (unsigned char, unsigned int, signed short);
extern signed int (*v30) (unsigned char, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed char v139 = -3;
signed short v138 = -3;
unsigned int v137 = 0U;

void v11 (unsigned short v140, signed char v141, signed int v142)
{
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
signed int v145 = -1;
unsigned short v144 = 6;
signed short v143 = 2;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v146;
unsigned char v147;
signed int v148;
unsigned int v149;
v146 = 6 - 5;
v147 = 0 + 6;
v148 = 3 - v142;
v149 = v19 (v146, v147, v148);
history[history_index++] = (int)v149;
}
break;
case 3: 
{
unsigned char v150;
unsigned char v151;
signed int v152;
unsigned int v153;
v150 = 7 - 1;
v151 = 0 + 5;
v152 = v142 - v142;
v153 = v19 (v150, v151, v152);
history[history_index++] = (int)v153;
}
break;
case 9: 
{
unsigned char v154;
unsigned char v155;
signed int v156;
unsigned int v157;
v154 = 2 + 7;
v155 = 1 + 1;
v156 = v142 - -2;
v157 = v19 (v154, v155, v156);
history[history_index++] = (int)v157;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}
