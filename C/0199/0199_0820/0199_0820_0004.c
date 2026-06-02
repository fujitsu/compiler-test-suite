#include <stdlib.h>
extern void v1 (signed short, signed char, unsigned char);
extern void (*v2) (signed short, signed char, unsigned char);
extern void v3 (void);
extern void (*v4) (void);
unsigned int v5 (signed char, unsigned short, signed int, unsigned int);
unsigned int (*v6) (signed char, unsigned short, signed int, unsigned int) = v5;
extern unsigned int v7 (unsigned int, signed short, signed int, signed int);
extern unsigned int (*v8) (unsigned int, signed short, signed int, signed int);
extern void v9 (unsigned int, signed short, unsigned char);
extern void (*v10) (unsigned int, signed short, unsigned char);
extern signed char v11 (signed int, unsigned int);
extern signed char (*v12) (signed int, unsigned int);
extern signed int v13 (unsigned short, signed char, signed char, signed int);
extern signed int (*v14) (unsigned short, signed char, signed char, signed int);
extern unsigned short v15 (unsigned short);
extern unsigned short (*v16) (unsigned short);
extern unsigned short v17 (signed char, unsigned short, signed int);
extern unsigned short (*v18) (signed char, unsigned short, signed int);
extern unsigned int v19 (unsigned int, signed short);
extern unsigned int (*v20) (unsigned int, signed short);
extern signed int v21 (signed short);
extern signed int (*v22) (signed short);
extern unsigned short v23 (unsigned int, signed short);
extern unsigned short (*v24) (unsigned int, signed short);
extern signed int v25 (signed int, unsigned int);
extern signed int (*v26) (signed int, unsigned int);
extern unsigned char v27 (signed int);
extern unsigned char (*v28) (signed int);
extern unsigned short v29 (signed int, signed char, signed char);
extern unsigned short (*v30) (signed int, signed char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v142 = 2;
unsigned char v141 = 3;
signed char v140 = -2;

unsigned int v5 (signed char v143, unsigned short v144, signed int v145, unsigned int v146)
{
history[history_index++] = (int)v143;
history[history_index++] = (int)v144;
history[history_index++] = (int)v145;
history[history_index++] = (int)v146;
{
for (;;) {
signed short v149 = 1;
unsigned int v148 = 0U;
unsigned short v147 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
