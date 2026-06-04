#include <stdlib.h>
extern unsigned char v1 (signed char);
extern unsigned char (*v2) (signed char);
extern void v3 (signed int, signed char, unsigned short);
extern void (*v4) (signed int, signed char, unsigned short);
extern unsigned short v5 (unsigned short, signed int, signed short, unsigned char);
extern unsigned short (*v6) (unsigned short, signed int, signed short, unsigned char);
extern unsigned int v7 (signed int, signed char, signed short);
extern unsigned int (*v8) (signed int, signed char, signed short);
extern void v9 (unsigned short, unsigned short, signed int, signed char);
extern void (*v10) (unsigned short, unsigned short, signed int, signed char);
extern signed int v11 (signed int, unsigned short, unsigned char, unsigned char);
extern signed int (*v12) (signed int, unsigned short, unsigned char, unsigned char);
extern signed short v13 (signed short, signed int);
extern signed short (*v14) (signed short, signed int);
void v15 (unsigned char, signed char);
void (*v16) (unsigned char, signed char) = v15;
extern signed char v17 (unsigned short, signed char);
extern signed char (*v18) (unsigned short, signed char);
extern signed short v19 (signed char);
extern signed short (*v20) (signed char);
extern void v21 (unsigned int, unsigned short, signed int, signed char);
extern void (*v22) (unsigned int, unsigned short, signed int, signed char);
extern unsigned char v23 (unsigned char, signed short, signed char);
extern unsigned char (*v24) (unsigned char, signed short, signed char);
extern signed int v25 (unsigned int, signed short, unsigned int);
extern signed int (*v26) (unsigned int, signed short, unsigned int);
extern signed short v27 (unsigned short, unsigned char, signed char);
extern signed short (*v28) (unsigned short, unsigned char, signed char);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v149 = 3;
signed char v148 = 0;
unsigned short v147 = 0;

void v15 (unsigned char v150, signed char v151)
{
history[history_index++] = (int)v150;
history[history_index++] = (int)v151;
{
for (;;) {
unsigned int v154 = 3U;
unsigned short v153 = 7;
signed short v152 = -3;
trace++;
switch (trace)
{
case 2: 
return;
default: abort ();
}
}
}
}
