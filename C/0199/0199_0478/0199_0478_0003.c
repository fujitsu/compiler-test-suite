#include <stdlib.h>
extern unsigned char v1 (unsigned int, signed short, unsigned int, signed short);
extern unsigned char (*v2) (unsigned int, signed short, unsigned int, signed short);
extern unsigned int v3 (unsigned char, unsigned char);
extern unsigned int (*v4) (unsigned char, unsigned char);
extern unsigned int v5 (unsigned short, signed short, unsigned short, signed int);
extern unsigned int (*v6) (unsigned short, signed short, unsigned short, signed int);
extern unsigned int v7 (unsigned char);
extern unsigned int (*v8) (unsigned char);
extern signed int v9 (unsigned int, signed char, signed int);
extern signed int (*v10) (unsigned int, signed char, signed int);
unsigned int v11 (signed char);
unsigned int (*v12) (signed char) = v11;
extern unsigned char v13 (signed int);
extern unsigned char (*v14) (signed int);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed short v17 (unsigned char, unsigned int, unsigned short);
extern signed short (*v18) (unsigned char, unsigned int, unsigned short);
extern signed char v19 (signed char);
extern signed char (*v20) (signed char);
extern void v21 (void);
extern void (*v22) (void);
extern unsigned char v23 (unsigned char, signed short);
extern unsigned char (*v24) (unsigned char, signed short);
extern signed int v25 (signed short, signed char, signed char);
extern signed int (*v26) (signed short, signed char, signed char);
extern signed short v27 (signed int, unsigned char, unsigned char, signed int);
extern signed short (*v28) (signed int, unsigned char, unsigned char, signed int);
extern void v29 (signed short, unsigned short, unsigned int);
extern void (*v30) (signed short, unsigned short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v116 = 2;
signed short v115 = -2;
unsigned short v114 = 7;

unsigned int v11 (signed char v117)
{
history[history_index++] = (int)v117;
{
for (;;) {
signed int v120 = -4;
unsigned short v119 = 3;
unsigned char v118 = 5;
trace++;
switch (trace)
{
case 1: 
return 3U;
default: abort ();
}
}
}
}
