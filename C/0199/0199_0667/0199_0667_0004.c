#include <stdlib.h>
extern unsigned char v1 (unsigned int, signed int, unsigned int);
extern unsigned char (*v2) (unsigned int, signed int, unsigned int);
extern signed char v3 (unsigned short, unsigned int);
extern signed char (*v4) (unsigned short, unsigned int);
extern unsigned short v5 (signed char, unsigned int);
extern unsigned short (*v6) (signed char, unsigned int);
extern unsigned char v7 (unsigned char, signed int, unsigned char, unsigned short);
extern unsigned char (*v8) (unsigned char, signed int, unsigned char, unsigned short);
extern void v9 (unsigned char);
extern void (*v10) (unsigned char);
extern unsigned int v11 (unsigned short);
extern unsigned int (*v12) (unsigned short);
extern signed int v13 (unsigned char, unsigned char, unsigned short, signed short);
extern signed int (*v14) (unsigned char, unsigned char, unsigned short, signed short);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern signed int v17 (unsigned short, unsigned short, signed int);
extern signed int (*v18) (unsigned short, unsigned short, signed int);
extern signed int v19 (unsigned int, unsigned int);
extern signed int (*v20) (unsigned int, unsigned int);
extern signed int v21 (void);
extern signed int (*v22) (void);
signed int v23 (unsigned short, signed short);
signed int (*v24) (unsigned short, signed short) = v23;
extern signed short v25 (signed char, unsigned char);
extern signed short (*v26) (signed char, unsigned char);
extern signed char v27 (void);
extern signed char (*v28) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v140 = 2;
signed short v139 = 3;
unsigned short v138 = 7;

signed int v23 (unsigned short v141, signed short v142)
{
history[history_index++] = (int)v141;
history[history_index++] = (int)v142;
{
for (;;) {
unsigned char v145 = 1;
signed char v144 = -1;
signed int v143 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
