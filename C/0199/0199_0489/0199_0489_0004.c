#include <stdlib.h>
extern signed int v1 (void);
extern signed int (*v2) (void);
extern signed int v3 (unsigned char, signed int, unsigned short, signed short);
extern signed int (*v4) (unsigned char, signed int, unsigned short, signed short);
extern signed int v5 (unsigned char, unsigned short);
extern signed int (*v6) (unsigned char, unsigned short);
extern unsigned char v7 (signed char);
extern unsigned char (*v8) (signed char);
extern unsigned int v9 (signed short, unsigned short, signed char);
extern unsigned int (*v10) (signed short, unsigned short, signed char);
extern signed short v11 (void);
extern signed short (*v12) (void);
extern unsigned short v13 (unsigned char, signed int, unsigned int, unsigned char);
extern unsigned short (*v14) (unsigned char, signed int, unsigned int, unsigned char);
extern void v15 (signed int, signed char, signed int);
extern void (*v16) (signed int, signed char, signed int);
unsigned char v19 (signed short, signed char, signed char, unsigned short);
unsigned char (*v20) (signed short, signed char, signed char, unsigned short) = v19;
extern void v21 (signed char);
extern void (*v22) (signed char);
extern signed int v23 (unsigned int, unsigned int, signed short);
extern signed int (*v24) (unsigned int, unsigned int, signed short);
extern signed short v25 (unsigned int, signed int, signed short);
extern signed short (*v26) (unsigned int, signed int, signed short);
extern signed char v27 (unsigned char, unsigned short);
extern signed char (*v28) (unsigned char, unsigned short);
extern unsigned char v29 (signed char, unsigned char, unsigned short, signed short);
extern unsigned char (*v30) (signed char, unsigned char, unsigned short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v138 = 6;
signed int v137 = 0;
unsigned char v136 = 7;

unsigned char v19 (signed short v139, signed char v140, signed char v141, unsigned short v142)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
unsigned int v145 = 6U;
signed short v144 = -3;
signed int v143 = 1;
trace++;
switch (trace)
{
case 10: 
return 4;
default: abort ();
}
}
}
}
