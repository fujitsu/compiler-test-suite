#include <stdlib.h>
extern signed short v1 (signed char, unsigned short, signed short, signed char);
extern signed short (*v2) (signed char, unsigned short, signed short, signed char);
extern signed int v3 (unsigned short, signed int, unsigned char, unsigned char);
extern signed int (*v4) (unsigned short, signed int, unsigned char, unsigned char);
unsigned short v5 (unsigned char, unsigned short, signed short, signed short);
unsigned short (*v6) (unsigned char, unsigned short, signed short, signed short) = v5;
extern unsigned short v7 (signed char, unsigned char, signed char, unsigned int);
extern unsigned short (*v8) (signed char, unsigned char, signed char, unsigned int);
extern signed char v9 (unsigned int, unsigned int, unsigned short);
extern signed char (*v10) (unsigned int, unsigned int, unsigned short);
extern unsigned char v11 (unsigned int);
extern unsigned char (*v12) (unsigned int);
extern unsigned int v15 (signed char, signed int, signed int);
extern unsigned int (*v16) (signed char, signed int, signed int);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern unsigned int v19 (signed short, unsigned short, signed int);
extern unsigned int (*v20) (signed short, unsigned short, signed int);
extern signed char v21 (unsigned short);
extern signed char (*v22) (unsigned short);
extern signed char v23 (signed int, unsigned short, unsigned char, unsigned short);
extern signed char (*v24) (signed int, unsigned short, unsigned char, unsigned short);
extern signed short v25 (void);
extern signed short (*v26) (void);
extern void v27 (signed short, signed int, signed short);
extern void (*v28) (signed short, signed int, signed short);
extern unsigned int v29 (signed short, unsigned int);
extern unsigned int (*v30) (signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed char v142 = 1;
unsigned int v141 = 1U;
unsigned short v140 = 7;

unsigned short v5 (unsigned char v143, unsigned short v144, signed short v145, signed short v146)
{
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
unsigned char v149 = 0;
signed short v148 = -3;
signed short v147 = -3;
trace++;
switch (trace)
{
case 1: 
return v144;
default: abort ();
}
}
}
}
