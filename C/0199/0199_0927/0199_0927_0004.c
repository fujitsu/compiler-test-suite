#include <stdlib.h>
extern unsigned short v1 (signed int);
extern unsigned short (*v2) (signed int);
extern signed int v3 (unsigned short);
extern signed int (*v4) (unsigned short);
extern unsigned char v5 (unsigned char, signed short, signed int, unsigned int);
extern unsigned char (*v6) (unsigned char, signed short, signed int, unsigned int);
extern void v7 (unsigned int, signed int, signed short);
extern void (*v8) (unsigned int, signed int, signed short);
extern unsigned short v9 (signed short, signed char);
extern unsigned short (*v10) (signed short, signed char);
extern unsigned int v11 (signed int, unsigned char);
extern unsigned int (*v12) (signed int, unsigned char);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
extern void v15 (unsigned short);
extern void (*v16) (unsigned short);
unsigned short v17 (unsigned short, signed int, signed int, unsigned int);
unsigned short (*v18) (unsigned short, signed int, signed int, unsigned int) = v17;
extern unsigned short v19 (signed int);
extern unsigned short (*v20) (signed int);
extern signed char v21 (unsigned char);
extern signed char (*v22) (unsigned char);
extern unsigned char v23 (unsigned int, unsigned short);
extern unsigned char (*v24) (unsigned int, unsigned short);
extern signed char v25 (unsigned short, signed int, signed char, signed short);
extern signed char (*v26) (unsigned short, signed int, signed char, signed short);
extern void v27 (signed char, signed short);
extern void (*v28) (signed char, signed short);
extern void v29 (signed int, signed short);
extern void (*v30) (signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v145 = 1;
signed int v144 = -4;
unsigned short v143 = 0;

unsigned short v17 (unsigned short v146, signed int v147, signed int v148, unsigned int v149)
{
history[history_index++] = (int)v146;
history[history_index++] = (int)v147;
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
{
for (;;) {
unsigned char v152 = 1;
signed short v151 = 2;
unsigned short v150 = 3;
trace++;
switch (trace)
{
case 2: 
{
signed int v153;
unsigned short v154;
v153 = v147 - v147;
v154 = v19 (v153);
history[history_index++] = (int)v154;
}
break;
case 12: 
return 2;
default: abort ();
}
}
}
}
