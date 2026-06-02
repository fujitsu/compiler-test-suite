#include <stdlib.h>
extern unsigned short v1 (signed short, unsigned int, unsigned short, unsigned char);
extern unsigned short (*v2) (signed short, unsigned int, unsigned short, unsigned char);
extern signed short v3 (unsigned int, unsigned int, signed short, signed char);
extern signed short (*v4) (unsigned int, unsigned int, signed short, signed char);
extern unsigned char v5 (unsigned char, signed int, signed short, signed short);
extern unsigned char (*v6) (unsigned char, signed int, signed short, signed short);
void v7 (unsigned short);
void (*v8) (unsigned short) = v7;
extern void v9 (signed char, signed char, signed int);
extern void (*v10) (signed char, signed char, signed int);
extern void v11 (signed char, unsigned int, unsigned char);
extern void (*v12) (signed char, unsigned int, unsigned char);
extern signed int v15 (unsigned int, unsigned char, signed short);
extern signed int (*v16) (unsigned int, unsigned char, signed short);
extern signed char v17 (unsigned short, signed int, signed short, unsigned char);
extern signed char (*v18) (unsigned short, signed int, signed short, unsigned char);
extern signed char v19 (unsigned short, signed short);
extern signed char (*v20) (unsigned short, signed short);
extern unsigned char v21 (unsigned short, unsigned int);
extern unsigned char (*v22) (unsigned short, unsigned int);
extern signed char v23 (unsigned char, unsigned int, signed int);
extern signed char (*v24) (unsigned char, unsigned int, signed int);
extern signed char v25 (unsigned int, unsigned char, signed short);
extern signed char (*v26) (unsigned int, unsigned char, signed short);
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v150 = 0;
unsigned int v149 = 5U;
unsigned char v148 = 7;

void v7 (unsigned short v151)
{
history[history_index++] = (int)v151;
{
for (;;) {
signed short v154 = -1;
unsigned int v153 = 2U;
unsigned short v152 = 2;
trace++;
switch (trace)
{
case 3: 
return;
default: abort ();
}
}
}
}
