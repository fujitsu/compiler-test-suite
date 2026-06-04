#include <stdlib.h>
extern signed short v1 (signed int, unsigned short);
extern signed short (*v2) (signed int, unsigned short);
extern unsigned int v3 (signed short, signed int, unsigned char);
extern unsigned int (*v4) (signed short, signed int, unsigned char);
extern unsigned int v5 (unsigned char, signed int, unsigned int);
extern unsigned int (*v6) (unsigned char, signed int, unsigned int);
extern void v7 (signed short, signed short);
extern void (*v8) (signed short, signed short);
unsigned char v9 (unsigned short, signed char, unsigned short, unsigned int);
unsigned char (*v10) (unsigned short, signed char, unsigned short, unsigned int) = v9;
extern signed char v11 (void);
extern signed char (*v12) (void);
extern unsigned int v13 (signed short, unsigned char, unsigned char, signed short);
extern unsigned int (*v14) (signed short, unsigned char, unsigned char, signed short);
extern signed char v15 (signed int, signed short, signed int);
extern signed char (*v16) (signed int, signed short, signed int);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern signed char v19 (signed int, unsigned int);
extern signed char (*v20) (signed int, unsigned int);
extern void v21 (unsigned int, signed short, unsigned int);
extern void (*v22) (unsigned int, signed short, unsigned int);
extern unsigned int v23 (signed char);
extern unsigned int (*v24) (signed char);
extern signed short v25 (unsigned short, signed int, unsigned short);
extern signed short (*v26) (unsigned short, signed int, unsigned short);
extern signed char v27 (signed char, signed int, signed short, unsigned short);
extern signed char (*v28) (signed char, signed int, signed short, unsigned short);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v140 = 4;
signed char v139 = -4;
unsigned int v138 = 4U;

unsigned char v9 (unsigned short v141, signed char v142, unsigned short v143, unsigned int v144)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
{
for (;;) {
unsigned short v147 = 2;
signed int v146 = 2;
unsigned int v145 = 4U;
trace++;
switch (trace)
{
case 4: 
return 4;
case 6: 
{
unsigned short v148;
v148 = v17 ();
history[history_index++] = (int)v148;
}
break;
case 8: 
{
signed short v149;
unsigned char v150;
unsigned char v151;
signed short v152;
unsigned int v153;
v149 = 0 - -1;
v150 = 0 + 1;
v151 = 3 - 4;
v152 = 3 + 2;
v153 = v13 (v149, v150, v151, v152);
history[history_index++] = (int)v153;
}
break;
case 10: 
return 3;
default: abort ();
}
}
}
}
