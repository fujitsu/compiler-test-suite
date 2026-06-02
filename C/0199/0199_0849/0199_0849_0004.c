#include <stdlib.h>
extern void v3 (unsigned int, signed int, unsigned int);
extern void (*v4) (unsigned int, signed int, unsigned int);
extern unsigned int v5 (unsigned char, signed short, signed int, signed char);
extern unsigned int (*v6) (unsigned char, signed short, signed int, signed char);
extern signed short v7 (unsigned int, signed int, signed short, signed int);
extern signed short (*v8) (unsigned int, signed int, signed short, signed int);
extern unsigned char v9 (signed int, signed char, unsigned char);
extern unsigned char (*v10) (signed int, signed char, unsigned char);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern void v13 (signed int);
extern void (*v14) (signed int);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern void v17 (void);
extern void (*v18) (void);
extern signed short v19 (unsigned short, signed short, unsigned char);
extern signed short (*v20) (unsigned short, signed short, unsigned char);
signed char v21 (signed char, unsigned int, unsigned short, signed short);
signed char (*v22) (signed char, unsigned int, unsigned short, signed short) = v21;
extern signed int v23 (signed int, unsigned int, signed char, signed int);
extern signed int (*v24) (signed int, unsigned int, signed char, signed int);
extern unsigned short v25 (void);
extern unsigned short (*v26) (void);
extern unsigned short v27 (signed int, signed char, signed int);
extern unsigned short (*v28) (signed int, signed char, signed int);
extern signed char v29 (signed char, unsigned int, unsigned int, signed short);
extern signed char (*v30) (signed char, unsigned int, unsigned int, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v152 = 2U;
signed char v151 = 2;
signed short v150 = -3;

signed char v21 (signed char v153, unsigned int v154, unsigned short v155, signed short v156)
{
history[history_index++] = (int)v153;
history[history_index++] = (int)v154;
history[history_index++] = (int)v155;
history[history_index++] = (int)v156;
{
for (;;) {
signed int v159 = 3;
unsigned char v158 = 4;
unsigned short v157 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
