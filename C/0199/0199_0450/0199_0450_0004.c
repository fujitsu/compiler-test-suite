#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern unsigned char v3 (signed int, unsigned int);
extern unsigned char (*v4) (signed int, unsigned int);
extern signed int v5 (unsigned char, unsigned char, signed short, unsigned char);
extern signed int (*v6) (unsigned char, unsigned char, signed short, unsigned char);
extern unsigned int v7 (unsigned short, signed char, signed short);
extern unsigned int (*v8) (unsigned short, signed char, signed short);
extern unsigned char v9 (signed short, unsigned int);
extern unsigned char (*v10) (signed short, unsigned int);
extern signed short v11 (unsigned char);
extern signed short (*v12) (unsigned char);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern void v15 (signed int, unsigned char);
extern void (*v16) (signed int, unsigned char);
extern signed int v17 (unsigned short, signed char, signed short);
extern signed int (*v18) (unsigned short, signed char, signed short);
extern void v21 (void);
extern void (*v22) (void);
extern unsigned int v23 (unsigned char, unsigned char, signed short, signed int);
extern unsigned int (*v24) (unsigned char, unsigned char, signed short, signed int);
signed short v25 (signed short, signed short);
signed short (*v26) (signed short, signed short) = v25;
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern signed short v29 (unsigned char, signed short, unsigned char, unsigned short);
extern signed short (*v30) (unsigned char, signed short, unsigned char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v141 = 2;
signed int v140 = -3;
unsigned char v139 = 5;

signed short v25 (signed short v142, signed short v143)
{
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
unsigned int v146 = 2U;
signed int v145 = -4;
unsigned short v144 = 1;
trace++;
switch (trace)
{
case 5: 
return -1;
default: abort ();
}
}
}
}
