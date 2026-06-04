#include <stdlib.h>
extern signed int v3 (void);
extern signed int (*v4) (void);
extern signed char v5 (signed short, signed char, unsigned int);
extern signed char (*v6) (signed short, signed char, unsigned int);
extern unsigned short v7 (unsigned short, unsigned char, unsigned short, unsigned short);
extern unsigned short (*v8) (unsigned short, unsigned char, unsigned short, unsigned short);
unsigned short v9 (signed short, signed int);
unsigned short (*v10) (signed short, signed int) = v9;
extern void v11 (unsigned short);
extern void (*v12) (unsigned short);
extern unsigned short v13 (signed short, unsigned short, signed int, unsigned int);
extern unsigned short (*v14) (signed short, unsigned short, signed int, unsigned int);
extern unsigned short v15 (unsigned int, signed short);
extern unsigned short (*v16) (unsigned int, signed short);
extern signed int v17 (signed char);
extern signed int (*v18) (signed char);
extern signed int v19 (signed short, signed char, unsigned int);
extern signed int (*v20) (signed short, signed char, unsigned int);
extern signed int v21 (signed char, signed char, signed int, unsigned int);
extern signed int (*v22) (signed char, signed char, signed int, unsigned int);
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern signed char v25 (signed short);
extern signed char (*v26) (signed short);
extern signed int v27 (unsigned int, unsigned short, unsigned int);
extern signed int (*v28) (unsigned int, unsigned short, unsigned int);
extern signed int v29 (unsigned short, signed char);
extern signed int (*v30) (unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v140 = 2U;
unsigned int v139 = 5U;
signed char v138 = -2;

unsigned short v9 (signed short v141, signed int v142)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
unsigned char v145 = 7;
unsigned char v144 = 6;
unsigned int v143 = 2U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
