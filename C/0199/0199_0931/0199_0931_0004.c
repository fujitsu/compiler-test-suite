#include <stdlib.h>
extern unsigned short v1 (signed short);
extern unsigned short (*v2) (signed short);
extern signed int v3 (unsigned char, signed char, signed short);
extern signed int (*v4) (unsigned char, signed char, signed short);
extern unsigned short v5 (unsigned char, signed short, signed char, signed char);
extern unsigned short (*v6) (unsigned char, signed short, signed char, signed char);
extern unsigned short v7 (signed int);
extern unsigned short (*v8) (signed int);
unsigned int v9 (unsigned char, signed int, unsigned char);
unsigned int (*v10) (unsigned char, signed int, unsigned char) = v9;
extern unsigned int v11 (signed int, unsigned int, signed int);
extern unsigned int (*v12) (signed int, unsigned int, signed int);
extern unsigned short v13 (signed int, unsigned char, unsigned short, unsigned int);
extern unsigned short (*v14) (signed int, unsigned char, unsigned short, unsigned int);
extern signed int v15 (unsigned int, unsigned short, signed short);
extern signed int (*v16) (unsigned int, unsigned short, signed short);
extern signed short v17 (unsigned short);
extern signed short (*v18) (unsigned short);
extern unsigned int v19 (signed short, signed char);
extern unsigned int (*v20) (signed short, signed char);
extern unsigned int v21 (signed short, unsigned char, unsigned int);
extern unsigned int (*v22) (signed short, unsigned char, unsigned int);
extern signed char v25 (signed short, signed short, unsigned short, signed short);
extern signed char (*v26) (signed short, signed short, unsigned short, signed short);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern signed int v29 (signed char);
extern signed int (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v140 = 6;
signed short v139 = 0;
signed int v138 = -2;

unsigned int v9 (unsigned char v141, signed int v142, unsigned char v143)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
history[history_index++] = (int)v143;
{
for (;;) {
unsigned short v146 = 5;
signed char v145 = 3;
signed short v144 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
