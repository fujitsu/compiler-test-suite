#include <stdlib.h>
extern unsigned short v1 (unsigned char, unsigned short, unsigned int);
extern unsigned short (*v2) (unsigned char, unsigned short, unsigned int);
extern signed short v3 (unsigned int, unsigned char, unsigned int);
extern signed short (*v4) (unsigned int, unsigned char, unsigned int);
extern signed short v5 (signed char, signed char, unsigned char, unsigned int);
extern signed short (*v6) (signed char, signed char, unsigned char, unsigned int);
extern void v7 (signed short, signed short, signed short, signed short);
extern void (*v8) (signed short, signed short, signed short, signed short);
extern void v9 (unsigned short, unsigned short);
extern void (*v10) (unsigned short, unsigned short);
unsigned short v11 (signed short, signed int, signed char, signed char);
unsigned short (*v12) (signed short, signed int, signed char, signed char) = v11;
extern signed int v13 (signed char);
extern signed int (*v14) (signed char);
extern signed char v15 (unsigned char);
extern signed char (*v16) (unsigned char);
extern unsigned int v17 (signed short, unsigned char, signed int, signed int);
extern unsigned int (*v18) (signed short, unsigned char, signed int, signed int);
extern signed int v19 (signed short, unsigned short, signed int, signed int);
extern signed int (*v20) (signed short, unsigned short, signed int, signed int);
extern void v21 (signed char, signed int);
extern void (*v22) (signed char, signed int);
extern unsigned char v23 (unsigned int);
extern unsigned char (*v24) (unsigned int);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern signed int v27 (signed char, unsigned int, unsigned int);
extern signed int (*v28) (signed char, unsigned int, unsigned int);
extern unsigned short v29 (signed int);
extern unsigned short (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v147 = 5;
signed short v146 = 0;
signed short v145 = 2;

unsigned short v11 (signed short v148, signed int v149, signed char v150, signed char v151)
{
history[history_index++] = (int)v148;
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
{
for (;;) {
signed int v154 = -2;
signed char v153 = 3;
unsigned char v152 = 1;
trace++;
switch (trace)
{
case 2: 
return 6;
default: abort ();
}
}
}
}
