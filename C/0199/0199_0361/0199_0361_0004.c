#include <stdlib.h>
extern signed int v1 (unsigned char, unsigned char);
extern signed int (*v2) (unsigned char, unsigned char);
extern signed char v3 (signed short, signed char);
extern signed char (*v4) (signed short, signed char);
extern signed short v5 (signed int, unsigned short, unsigned int);
extern signed short (*v6) (signed int, unsigned short, unsigned int);
extern signed char v7 (void);
extern signed char (*v8) (void);
signed char v9 (unsigned char, signed int);
signed char (*v10) (unsigned char, signed int) = v9;
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern void v15 (signed int);
extern void (*v16) (signed int);
extern void v17 (unsigned char, signed char, unsigned short, signed int);
extern void (*v18) (unsigned char, signed char, unsigned short, signed int);
extern void v19 (unsigned int, signed int);
extern void (*v20) (unsigned int, signed int);
extern unsigned short v23 (unsigned int, signed char, signed short);
extern unsigned short (*v24) (unsigned int, signed char, signed short);
extern signed short v25 (unsigned int, unsigned int, signed char, unsigned short);
extern signed short (*v26) (unsigned int, unsigned int, signed char, unsigned short);
extern unsigned short v27 (unsigned char, signed int, unsigned int, signed int);
extern unsigned short (*v28) (unsigned char, signed int, unsigned int, signed int);
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v148 = -4;
unsigned int v147 = 1U;
signed char v146 = -4;

signed char v9 (unsigned char v149, signed int v150)
{
history[history_index++] = (int)v149;
history[history_index++] = (int)v150;
{
for (;;) {
unsigned int v153 = 3U;
signed char v152 = 3;
unsigned int v151 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
