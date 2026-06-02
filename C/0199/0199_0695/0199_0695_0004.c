#include <stdlib.h>
extern signed int v1 (unsigned char, unsigned short, signed int);
extern signed int (*v2) (unsigned char, unsigned short, signed int);
extern unsigned short v3 (unsigned int, signed short, signed char);
extern unsigned short (*v4) (unsigned int, signed short, signed char);
extern unsigned short v5 (signed int, signed int, signed short);
extern unsigned short (*v6) (signed int, signed int, signed short);
extern signed short v7 (signed char, unsigned char, unsigned short);
extern signed short (*v8) (signed char, unsigned char, unsigned short);
extern unsigned char v9 (unsigned int, unsigned int, signed short, unsigned short);
extern unsigned char (*v10) (unsigned int, unsigned int, signed short, unsigned short);
extern signed short v11 (signed short, unsigned short, signed char, unsigned int);
extern signed short (*v12) (signed short, unsigned short, signed char, unsigned int);
extern void v13 (signed int);
extern void (*v14) (signed int);
signed char v15 (unsigned char, signed short);
signed char (*v16) (unsigned char, signed short) = v15;
extern signed int v17 (signed char, unsigned int, unsigned int);
extern signed int (*v18) (signed char, unsigned int, unsigned int);
extern signed int v19 (unsigned int);
extern signed int (*v20) (unsigned int);
extern unsigned short v21 (signed short, unsigned char, unsigned char, signed short);
extern unsigned short (*v22) (signed short, unsigned char, unsigned char, signed short);
extern signed char v23 (signed char);
extern signed char (*v24) (signed char);
extern unsigned char v25 (signed short, unsigned char, unsigned short, signed int);
extern unsigned char (*v26) (signed short, unsigned char, unsigned short, signed int);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern signed int v29 (void);
extern signed int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed short v152 = -1;
unsigned char v151 = 5;
unsigned short v150 = 5;

signed char v15 (unsigned char v153, signed short v154)
{
history[history_index++] = (int)v153;
history[history_index++] = (int)v154;
{
for (;;) {
unsigned short v157 = 6;
unsigned int v156 = 6U;
unsigned int v155 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
