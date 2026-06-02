#include <stdlib.h>
unsigned int v1 (unsigned short, signed short, unsigned char, signed int);
unsigned int (*v2) (unsigned short, signed short, unsigned char, signed int) = v1;
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern signed short v5 (unsigned int);
extern signed short (*v6) (unsigned int);
extern signed char v7 (signed char, signed int);
extern signed char (*v8) (signed char, signed int);
extern unsigned int v9 (unsigned short, signed short, unsigned int);
extern unsigned int (*v10) (unsigned short, signed short, unsigned int);
extern void v11 (signed char);
extern void (*v12) (signed char);
extern signed char v13 (signed char);
extern signed char (*v14) (signed char);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed short v17 (unsigned int, unsigned char, unsigned char);
extern signed short (*v18) (unsigned int, unsigned char, unsigned char);
extern signed short v19 (signed char, unsigned int, unsigned short, signed short);
extern signed short (*v20) (signed char, unsigned int, unsigned short, signed short);
extern signed int v21 (signed int, signed int, signed short);
extern signed int (*v22) (signed int, signed int, signed short);
extern void v23 (unsigned short, signed short, signed char);
extern void (*v24) (unsigned short, signed short, signed char);
extern signed short v25 (unsigned char, unsigned short, signed short, unsigned char);
extern signed short (*v26) (unsigned char, unsigned short, signed short, unsigned char);
extern unsigned int v27 (signed int, unsigned short, signed char, unsigned char);
extern unsigned int (*v28) (signed int, unsigned short, signed char, unsigned char);
extern void v29 (signed short, unsigned char);
extern void (*v30) (signed short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v142 = 2;
signed char v141 = -3;
unsigned short v140 = 4;

unsigned int v1 (unsigned short v143, signed short v144, unsigned char v145, signed int v146)
{
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
unsigned char v149 = 4;
signed short v148 = 3;
signed short v147 = -1;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v150;
signed short v151;
signed char v152;
v150 = 5 - 1;
v151 = -3 - v144;
v152 = 0 - -2;
v23 (v150, v151, v152);
}
break;
case 8: 
{
signed int v153;
signed int v154;
signed short v155;
signed int v156;
v153 = v146 + -2;
v154 = v146 + v146;
v155 = -3 - v148;
v156 = v21 (v153, v154, v155);
history[history_index++] = (int)v156;
}
break;
case 12: 
return 3U;
default: abort ();
}
}
}
}
