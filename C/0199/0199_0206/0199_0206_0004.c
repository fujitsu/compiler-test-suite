#include <stdlib.h>
extern unsigned int v3 (unsigned char, signed char);
extern unsigned int (*v4) (unsigned char, signed char);
unsigned short v5 (unsigned int, signed int, signed short);
unsigned short (*v6) (unsigned int, signed int, signed short) = v5;
extern unsigned short v7 (unsigned int, signed char, signed char, signed short);
extern unsigned short (*v8) (unsigned int, signed char, signed char, signed short);
extern signed char v9 (signed char);
extern signed char (*v10) (signed char);
extern unsigned short v11 (signed short, signed char);
extern unsigned short (*v12) (signed short, signed char);
extern signed int v13 (signed int, unsigned short, signed int, unsigned char);
extern signed int (*v14) (signed int, unsigned short, signed int, unsigned char);
extern unsigned int v15 (unsigned int, signed short);
extern unsigned int (*v16) (unsigned int, signed short);
extern unsigned char v17 (signed char);
extern unsigned char (*v18) (signed char);
extern signed char v19 (signed char, signed int);
extern signed char (*v20) (signed char, signed int);
extern signed char v21 (signed char, unsigned char);
extern signed char (*v22) (signed char, unsigned char);
extern signed short v23 (unsigned int, unsigned int, signed short, signed char);
extern signed short (*v24) (unsigned int, unsigned int, signed short, signed char);
extern signed char v25 (signed short, unsigned int, unsigned int, unsigned int);
extern signed char (*v26) (signed short, unsigned int, unsigned int, unsigned int);
extern void v27 (unsigned char, signed char, unsigned int, unsigned short);
extern void (*v28) (unsigned char, signed char, unsigned int, unsigned short);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v138 = 0;
unsigned short v137 = 7;
signed char v136 = -3;

unsigned short v5 (unsigned int v139, signed int v140, signed short v141)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
history[history_index++] = (int)v141;
{
for (;;) {
unsigned short v144 = 2;
unsigned int v143 = 5U;
signed int v142 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
