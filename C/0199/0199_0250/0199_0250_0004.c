#include <stdlib.h>
extern signed int v1 (signed short, unsigned short, unsigned int);
extern signed int (*v2) (signed short, unsigned short, unsigned int);
extern signed short v3 (unsigned char);
extern signed short (*v4) (unsigned char);
signed short v5 (signed int);
signed short (*v6) (signed int) = v5;
extern unsigned char v9 (signed short);
extern unsigned char (*v10) (signed short);
extern signed char v11 (unsigned short, signed short, unsigned short, signed char);
extern signed char (*v12) (unsigned short, signed short, unsigned short, signed char);
extern signed int v13 (unsigned short, unsigned char);
extern signed int (*v14) (unsigned short, unsigned char);
extern unsigned short v15 (unsigned char);
extern unsigned short (*v16) (unsigned char);
extern unsigned char v17 (signed short, unsigned int, signed char, signed int);
extern unsigned char (*v18) (signed short, unsigned int, signed char, signed int);
extern unsigned int v23 (unsigned int, unsigned char, signed int, signed int);
extern unsigned int (*v24) (unsigned int, unsigned char, signed int, signed int);
extern signed char v25 (unsigned int, signed int, signed int, unsigned int);
extern signed char (*v26) (unsigned int, signed int, signed int, unsigned int);
extern unsigned int v27 (signed char, unsigned char);
extern unsigned int (*v28) (signed char, unsigned char);
extern void v29 (unsigned int, unsigned char, signed short, unsigned int);
extern void (*v30) (unsigned int, unsigned char, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
signed int v139 = 0;
unsigned int v138 = 7U;
unsigned int v137 = 5U;

signed short v5 (signed int v140)
{
history[history_index++] = (int)v140;
{
for (;;) {
unsigned int v143 = 0U;
signed int v142 = 2;
signed char v141 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
